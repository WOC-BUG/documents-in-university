#include "hxlbmpfile.h"
#define L 256
struct NODE
{
	int scale;		// �Ҷȼ�
	double p;		// ����
	NODE* l, * r;	// ���ҽڵ�
	char ch;
	int used;		// �Ƿ��Ѿ����뵽������
}node[500];

// ͳ��ԭʼֱ��ͼ����
void OriginalHistogram(HXLBMPFILE& file, NODE no[], int& num)
{
	int vis[L] = {};
	int  w = file.imagew, h = file.imageh;
	int total = w * h;

	// ͳ�����س��ִ���
	for (int i = 0; i < h; i++)
	{
		for (int j = 0; j < w; j++)
		{
			vis[file.pDataAt(i)[j]]++;
		}
	}

	// ͳ�Ƹ���
	for (int i = 0; i < L; i++)
	{
		if (vis[i] == 0)
		{
			num++;
			continue;
		}
		no[i].scale = i;
		no[i].p = (vis[i] * 1.0) / (total * 1.0);
	}
}

// ���ո��ʴ�С��������
int cmp(NODE x, NODE y)
{
	return x.p < y.p;
}

// ����Сֵ�ʹ�Сֵ
void find(NODE no[], int s, int e, int& pos1, int& pos2)
{
	double minp1 = 1, minp2 = 1;
	for (int i = s; i < e; i++)
	{
		if (no[i].used)
			continue;
		if (no[i].p < minp1)
		{
			minp2 = minp1;
			minp1 = no[i].p;

			pos2 = pos1;
			pos1 = i;
		}
		else if (no[i].p < minp2)
		{
			minp2 = no[i].p;
			pos2 = i;
		}
	}
}

// ��������
void build(NODE no[], int s, int e, int& rt)	// �������ʼ��ַs=��һ����������λ�á�������ַe=L��rtΪ���ڵ��±�
{
	while (no[e - 1].p != 1.0)
	{
		int pos1 = 0, pos2 = 0;
		find(no, s, e, pos1, pos2);
		no[e].scale = no[pos1].scale + no[pos2].scale;
		no[e].p = no[pos1].p + no[pos2].p;
		no[e].l = &no[pos1], no[e].r = &no[pos2];	// ���Һ���
		no[pos1].used = no[pos2].used = 1;		// ����Ѿ�������
		//printf("no[%d].scale=%d, no[%d].scale=%d, no[%d].scale=%d\n", pos1, no[pos1].scale, pos2, no[pos2].scale, e, no[e].scale);
		//printf("no[%d].p=%f, no[%d].p=%f, no[%d].p=%f\n", pos1, no[pos1].p, pos2, no[pos2].p, e, no[e].p);
		e++;
	}
	rt = e - 1;		// ��¼���ڵ���
}

void Huffman(NODE no)
{
	if (no.l == NULL)		// ����Ҷ�ӽڵ�
		return;
	Huffman(*no.l);			// ����������
	Huffman(*no.r);			// ����������

	// ����
	no.l->ch = '0';
	no.r->ch = '1';
}

// �����ء�����
void cal(NODE no, char str[], int len, double& H, double& R, char table[L][505])
{
	if (no.l == NULL && no.r == NULL)// ����Ҷ�ӽڵ�
	{
		strcpy(table[no.scale], str);// �Ҷȼ���Ӧ����
		//printf("table[%d]=%s, no.p=%f\n", no.scale, table[no.scale], no.p);
		H = H - no.p * log(no.p);	 // ������
		R = R + len * no.p;			 // ƽ���볤
		return;
	}
	str[len] = (*no.l).ch;
	cal(*no.l, str, len + 1, H, R, table);
	str[len] = (*no.r).ch;
	cal(*no.r, str, len + 1, H, R, table);
	str[len] = '\0';
}

// ������
void output(char table[L][505], FILE* fp, HXLBMPFILE& bmpfile)
{
	for (int i = 0; i < bmpfile.imagew; i++)
	{
		for (int j = 0; j < bmpfile.imageh; j++)
		{
			int tmp = bmpfile.pDataAt(i)[j];
			fprintf(fp, "%s\t", table[tmp]);
		}
		fprintf(fp, "\n");
	}
}

// ����
int decode(NODE no, char str[], int len)
{
	if (no.l == NULL)	// ����Ҷ�ӽڵ�,���ض�Ӧ�Ҷ�ֵ
	{
		return no.scale;
	}
	if (strlen(str) > len && str[len] == '0')
		decode(*no.l, str, len + 1);
	else if (strlen(str) > len && str[len] == '1')
		decode(*no.r, str, len + 1);
	else
		printf("������������\n");
}

void output_bmpfile(HXLBMPFILE& bmpfile, FILE* fp, NODE no)
{
	for (int i = 0; i < bmpfile.imagew; i++)
	{
		for (int j = 0; j < bmpfile.imageh; j++)
		{
			char str[505] = "";
			fscanf(fp, "%s", str);
			//printf("%s\n", str);
			bmpfile.pDataAt(i)[j] = decode(no, str, 0);
		}
	}
}

int main()
{
	// ��������
	HXLBMPFILE bmpfile, decode_bmp;
	int num = 0, rt = 0;
	double H = 0, R = 0;	// �ء�ƽ���볤
	char str[505] = "", ch[505] = "", path[50] = "result/encode.txt", path2[50] = "result/decode.bmp", table[L][505];
	if (!bmpfile.LoadBMPFILE("img/pepper.bmp"))
		return 1;
	decode_bmp.imageh = bmpfile.imageh;
	decode_bmp.imagew = bmpfile.imagew;
	decode_bmp.iYRGBnum = bmpfile.iYRGBnum;
	if (!decode_bmp.AllocateMem())			// �ڴ���䲻�ɹ�����1
		return 1;

	// �������
	OriginalHistogram(bmpfile, node, num);	// ͳ�ƻҶȼ��͸���
	sort(node, node + L, cmp);				// ���ո��ʴ�С��������
	build(node, num, L, rt);				// ����
	Huffman(node[rt]);						// ����
	cal(node[rt], str, 0, H, R, table);		// ����H��R���Ҷ������ֵĶ�Ӧ

	// д���ļ�
	FILE* fp = fopen(path, "w");
	output(table, fp, bmpfile);
	printf("����ɹ���\n");
	fclose(fp);

	//�������
	fp = fopen(path, "r");
	output_bmpfile(decode_bmp, fp, node[rt]);
	decode_bmp.SaveBMPFILE(path2);
	printf("����ɹ���\n");
	fclose(fp);

	// ��������
	double bpp = H / R;
	printf("��Ϊ��%f\tƽ���볤Ϊ��%f\t����Ϊ��%f\n", H, R, bpp);
	return 0;
}