#include "hxlbmpfile.h"
#define L 256

void SaveDoubleFile(const char* ch, double* txt)//����double�����ļ�
{
	char path[20] = { "result/" };
	strcat(path, ch);
	FILE* fp = fopen(path, "w");
	for (int i = 0; i < L; i++)
	{
		fprintf(fp, "%.10lf\n", txt[i]);
	}
	fclose(fp);
}

void SaveIntFile(const char* ch, int* txt)//����int�����ļ�
{
	char path[20] = { "result/" };
	strcat(path, ch);
	FILE* fp = fopen(path, "w");
	for (int i = 0; i < L; i++)
	{
		fprintf(fp, "%d\n", txt[i]);
	}
	fclose(fp);
}

void ChangeBmpFile(HXLBMPFILE& file, int C[])//�޸�bmpͼ��
{
	int h = file.imageh, w = file.imagew;
	for (int i = 0; i < h; i++)
	{
		for (int j = 0; j < w; j++)
		{
			int tmp = file.pDataAt(i)[j];
			file.pDataAt(i)[j] = C[tmp];
		}
	}
}

//ԭʼֱ��ͼͳ��
void OriginalHistogram(HXLBMPFILE& file, double H[], double T[])
{
	int vis[L] = {};
	int  w = file.imagew, h = file.imageh;
	int total = w * h;

	//ͳ�����س��ִ���
	for (int i = 0; i < h; i++)
	{
		for (int j = 0; j < w; j++)
		{
			vis[file.pDataAt(i)[j]]++;
		}
	}

	//��һ�����ۻ���
	for (int i = 0; i < L; i++)
	{
		H[i] = (vis[i] * 1.0) / (total * 1.0);//��һ��ֱ��ͼ����
		T[i] = (i == 0 ? H[i] : (T[i - 1] + H[i]));//�ۼ�ֱ��ͼ����
	}
}

//Ŀ��ֱ��ͼ����
void TargetHistogram(HXLBMPFILE& SpeFile, double SpeH[], double SpeT[])
{
	//y=a(1/4-(x-1/2)^2)
	double a = 1;
	for (int i = 0; i < L; i++)
	{
		SpeH[i] = 0.25 - ((i * 1.0) / 255.0 - 0.5) * ((i * 1.0) / 255.0 - 0.5);//�õ���һ��ֱ��ͼ
		SpeT[i] = (i == 0 ? SpeH[i] : (SpeH[i] + SpeT[i - 1]));//�õ��ۼ�ֱ��ͼ
	}
	a = 1.0 / SpeT[L - 1];//�õ�a

	for (int i = 0; i < L; i++)
	{
		SpeH[i] = a * SpeH[i];
		SpeT[i] = (i == 0 ? SpeH[i] : (SpeH[i] + SpeT[i - 1]));
	}
}

//ֱ��ͼ���⻯
void HistogramEqualization(HXLBMPFILE& file, double H[], double T[], double equH[])
{
	int T2[L] = {};

	//��չ��[0,255]�Ҷȼ�
	for (int i = 0; i < L; i++)
		T2[i] = (int)((L - 1) * T[i] + 0.5);

	//���⻯ֱ��ͼ
	for (int i = 0; i < L; i++)
		equH[T2[i]] += H[i];

	//���⻯ͼ��
	ChangeBmpFile(file, T2);
}

//ֱ��ͼ�涨��ӳ��
void HistogramSpecification(HXLBMPFILE& file, double T[], double SpeT[], double H[], double SpeH[], int Tu[])
{
	//ӳ��
	double mindiff = 1.0;
	for (int i = 0; i < L; i++)
	{
		mindiff = 1.0;
		for (int j = 0; j < L; j++)
		{
			if (SpeH[j] == 0)//Ŀ��ͼ����Ϊ0�ĵط�����
				continue;
			if (fabs(T[i] - SpeT[j]) < mindiff)
			{
				mindiff = fabs(T[i] - SpeT[j]);
				Tu[i] = j;
			}
		}
	}

	//�涨��ֱ��ͼ
	double result[L] = {};
	for (int i = 0; i < L; i++)
		result[Tu[i]] += H[i];
	SaveDoubleFile("DH.txt", result);//������

	//�涨��ͼ��
	ChangeBmpFile(file, Tu);
}

int main()
{
	//����Ҷ�ͼ
	HXLBMPFILE bmpfile, SpeFile, ansFile;//ԭͼ��Ŀ��ͼ�����ͼ
	if ((!bmpfile.LoadBMPFILE("img/pepper.bmp"))
		|| (!SpeFile.LoadBMPFILE("img/pepper.bmp"))
		|| (!ansFile.LoadBMPFILE("img/pepper.bmp")))
		return 1;


	//ԭʼֱ��ͼ��ر���
	double H[L] = {}, T[L] = {}, equH[L] = {}, equT[L] = {};	//H:�Ҷȸ��ʣ�T:�ۻ����ʣ�equH[]�����⻯�Ҷȸ��ʣ�equT[]:���⻯�ۻ�����
	//Ŀ��ֱ��ͼ��ر�������
	double SpeH[L] = {}, SpeT[L] = {}, SpeEquH[L] = {}, SpeEquT[L] = {};	//ͬ��
	int Tu[L] = {};//�涨���任����

	//���⻯
	OriginalHistogram(bmpfile, H, T);//����ԭʼֱ��ͼ����һ�����ۼӣ�
	HistogramEqualization(bmpfile, H, T, equH);//ԭʼֱ��ͼ���⻯
	TargetHistogram(SpeFile, SpeH, SpeT);//����Ŀ��ֱ��ͼ����һ�����ۼӣ�
	HistogramEqualization(SpeFile, SpeH, SpeT, SpeEquH);//Ŀ��ֱ��ͼ���⻯

	//�涨��
	HistogramSpecification(ansFile, T, SpeT, H, SpeH, Tu);

	//����ֱ��ͼ
	SaveDoubleFile("SH.txt", H);//ԭʼֱ��ͼ
	SaveDoubleFile("SQH.txt", equH);//ԭʼͼ�ľ���ֱ��ͼ
	SaveDoubleFile("EQH.txt", SpeEquH);//Ŀ��ͼ�ľ���ֱ��ͼ
	SaveIntFile("T.txt", Tu);//�涨���任����

	//����ͼ��
	bmpfile.SaveBMPFILE("result/QI.bmp");
	SpeFile.SaveBMPFILE("result/SpecPepper.bmp");
	ansFile.SaveBMPFILE("result/DI.bmp");
	return 0;
}
//����������
//double equH2[L] = { 0.19, 0.25,0.21, 0.16, 0.08,0.06, 0.03, 0.02 };
//double SpeEquH2[L] = { 0, 0, 0, 0.15, 0.2, 0.3, 0.2, 0.15 };