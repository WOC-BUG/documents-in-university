#include "hxlbmpfile.h"
#define L 256
struct NODE
{
	int scale;		// 灰度级
	double p;		// 概率
	NODE* l, * r;	// 左右节点
	char ch;
	int used;		// 是否已经加入到树中了
}node[500];

// 统计原始直方图概率
void OriginalHistogram(HXLBMPFILE& file, NODE no[], int& num)
{
	int vis[L] = {};
	int  w = file.imagew, h = file.imageh;
	int total = w * h;

	// 统计象素出现次数
	for (int i = 0; i < h; i++)
	{
		for (int j = 0; j < w; j++)
		{
			vis[file.pDataAt(i)[j]]++;
		}
	}

	// 统计概率
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

// 按照概率从小到大排序
int cmp(NODE x, NODE y)
{
	return x.p < y.p;
}

// 找最小值和次小值
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

// 构建数组
void build(NODE no[], int s, int e, int& rt)	// 排序的起始地址s=第一个非零数的位置、结束地址e=L，rt为根节点下标
{
	while (no[e - 1].p != 1.0)
	{
		int pos1 = 0, pos2 = 0;
		find(no, s, e, pos1, pos2);
		no[e].scale = no[pos1].scale + no[pos2].scale;
		no[e].p = no[pos1].p + no[pos2].p;
		no[e].l = &no[pos1], no[e].r = &no[pos2];	// 左右孩子
		no[pos1].used = no[pos2].used = 1;		// 标记已经在树中
		//printf("no[%d].scale=%d, no[%d].scale=%d, no[%d].scale=%d\n", pos1, no[pos1].scale, pos2, no[pos2].scale, e, no[e].scale);
		//printf("no[%d].p=%f, no[%d].p=%f, no[%d].p=%f\n", pos1, no[pos1].p, pos2, no[pos2].p, e, no[e].p);
		e++;
	}
	rt = e - 1;		// 记录根节点编号
}

void Huffman(NODE no)
{
	if (no.l == NULL)		// 到达叶子节点
		return;
	Huffman(*no.l);			// 遍历左子树
	Huffman(*no.r);			// 遍历右子树

	// 编码
	no.l->ch = '0';
	no.r->ch = '1';
}

// 计算熵、码率
void cal(NODE no, char str[], int len, double& H, double& R, char table[L][505])
{
	if (no.l == NULL && no.r == NULL)// 到达叶子节点
	{
		strcpy(table[no.scale], str);// 灰度级对应编码
		//printf("table[%d]=%s, no.p=%f\n", no.scale, table[no.scale], no.p);
		H = H - no.p * log(no.p);	 // 计算熵
		R = R + len * no.p;			 // 平均码长
		return;
	}
	str[len] = (*no.l).ch;
	cal(*no.l, str, len + 1, H, R, table);
	str[len] = (*no.r).ch;
	cal(*no.r, str, len + 1, H, R, table);
	str[len] = '\0';
}

// 输出码表
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

// 解码
int decode(NODE no, char str[], int len)
{
	if (no.l == NULL)	// 到达叶子节点,返回对应灰度值
	{
		return no.scale;
	}
	if (strlen(str) > len && str[len] == '0')
		decode(*no.l, str, len + 1);
	else if (strlen(str) > len && str[len] == '1')
		decode(*no.r, str, len + 1);
	else
		printf("编码输入有误！\n");
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
	// 变量定义
	HXLBMPFILE bmpfile, decode_bmp;
	int num = 0, rt = 0;
	double H = 0, R = 0;	// 熵、平均码长
	char str[505] = "", ch[505] = "", path[50] = "result/encode.txt", path2[50] = "result/decode.bmp", table[L][505];
	if (!bmpfile.LoadBMPFILE("img/pepper.bmp"))
		return 1;
	decode_bmp.imageh = bmpfile.imageh;
	decode_bmp.imagew = bmpfile.imagew;
	decode_bmp.iYRGBnum = bmpfile.iYRGBnum;
	if (!decode_bmp.AllocateMem())			// 内存分配不成功返回1
		return 1;

	// 编码过程
	OriginalHistogram(bmpfile, node, num);	// 统计灰度级和概率
	sort(node, node + L, cmp);				// 按照概率从小到大排序
	build(node, num, L, rt);				// 建树
	Huffman(node[rt]);						// 编码
	cal(node[rt], str, 0, H, R, table);		// 计算H、R、灰度与码字的对应

	// 写入文件
	FILE* fp = fopen(path, "w");
	output(table, fp, bmpfile);
	printf("编码成功！\n");
	fclose(fp);

	//解码过程
	fp = fopen(path, "r");
	output_bmpfile(decode_bmp, fp, node[rt]);
	decode_bmp.SaveBMPFILE(path2);
	printf("解码成功！\n");
	fclose(fp);

	// 计算码率
	double bpp = H / R;
	printf("熵为：%f\t平均码长为：%f\t码率为：%f\n", H, R, bpp);
	return 0;
}