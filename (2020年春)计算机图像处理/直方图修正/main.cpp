#include "hxlbmpfile.h"
#define L 256

void SaveDoubleFile(const char* ch, double* txt)//保存double类型文件
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

void SaveIntFile(const char* ch, int* txt)//保存int类型文件
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

void ChangeBmpFile(HXLBMPFILE& file, int C[])//修改bmp图像
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

//原始直方图统计
void OriginalHistogram(HXLBMPFILE& file, double H[], double T[])
{
	int vis[L] = {};
	int  w = file.imagew, h = file.imageh;
	int total = w * h;

	//统计象素出现次数
	for (int i = 0; i < h; i++)
	{
		for (int j = 0; j < w; j++)
		{
			vis[file.pDataAt(i)[j]]++;
		}
	}

	//归一化、累积化
	for (int i = 0; i < L; i++)
	{
		H[i] = (vis[i] * 1.0) / (total * 1.0);//归一化直方图数组
		T[i] = (i == 0 ? H[i] : (T[i - 1] + H[i]));//累计直方图数组
	}
}

//目标直方图计算
void TargetHistogram(HXLBMPFILE& SpeFile, double SpeH[], double SpeT[])
{
	//y=a(1/4-(x-1/2)^2)
	double a = 1;
	for (int i = 0; i < L; i++)
	{
		SpeH[i] = 0.25 - ((i * 1.0) / 255.0 - 0.5) * ((i * 1.0) / 255.0 - 0.5);//得到归一化直方图
		SpeT[i] = (i == 0 ? SpeH[i] : (SpeH[i] + SpeT[i - 1]));//得到累加直方图
	}
	a = 1.0 / SpeT[L - 1];//得到a

	for (int i = 0; i < L; i++)
	{
		SpeH[i] = a * SpeH[i];
		SpeT[i] = (i == 0 ? SpeH[i] : (SpeH[i] + SpeT[i - 1]));
	}
}

//直方图均衡化
void HistogramEqualization(HXLBMPFILE& file, double H[], double T[], double equH[])
{
	int T2[L] = {};

	//扩展到[0,255]灰度级
	for (int i = 0; i < L; i++)
		T2[i] = (int)((L - 1) * T[i] + 0.5);

	//均衡化直方图
	for (int i = 0; i < L; i++)
		equH[T2[i]] += H[i];

	//均衡化图像
	ChangeBmpFile(file, T2);
}

//直方图规定化映射
void HistogramSpecification(HXLBMPFILE& file, double T[], double SpeT[], double H[], double SpeH[], int Tu[])
{
	//映射
	double mindiff = 1.0;
	for (int i = 0; i < L; i++)
	{
		mindiff = 1.0;
		for (int j = 0; j < L; j++)
		{
			if (SpeH[j] == 0)//目标图概率为0的地方跳过
				continue;
			if (fabs(T[i] - SpeT[j]) < mindiff)
			{
				mindiff = fabs(T[i] - SpeT[j]);
				Tu[i] = j;
			}
		}
	}

	//规定化直方图
	double result[L] = {};
	for (int i = 0; i < L; i++)
		result[Tu[i]] += H[i];
	SaveDoubleFile("DH.txt", result);//保存结果

	//规定化图像
	ChangeBmpFile(file, Tu);
}

int main()
{
	//载入灰度图
	HXLBMPFILE bmpfile, SpeFile, ansFile;//原图，目标图，结果图
	if ((!bmpfile.LoadBMPFILE("img/pepper.bmp"))
		|| (!SpeFile.LoadBMPFILE("img/pepper.bmp"))
		|| (!ansFile.LoadBMPFILE("img/pepper.bmp")))
		return 1;


	//原始直方图相关变量
	double H[L] = {}, T[L] = {}, equH[L] = {}, equT[L] = {};	//H:灰度概率，T:累积概率，equH[]：均衡化灰度概率，equT[]:均衡化累积概率
	//目标直方图相关变量定义
	double SpeH[L] = {}, SpeT[L] = {}, SpeEquH[L] = {}, SpeEquT[L] = {};	//同上
	int Tu[L] = {};//规定化变换函数

	//均衡化
	OriginalHistogram(bmpfile, H, T);//计算原始直方图（归一化、累加）
	HistogramEqualization(bmpfile, H, T, equH);//原始直方图均衡化
	TargetHistogram(SpeFile, SpeH, SpeT);//计算目标直方图（归一化、累加）
	HistogramEqualization(SpeFile, SpeH, SpeT, SpeEquH);//目标直方图均衡化

	//规定化
	HistogramSpecification(ansFile, T, SpeT, H, SpeH, Tu);

	//保存直方图
	SaveDoubleFile("SH.txt", H);//原始直方图
	SaveDoubleFile("SQH.txt", equH);//原始图的均衡直方图
	SaveDoubleFile("EQH.txt", SpeEquH);//目标图的均衡直方图
	SaveIntFile("T.txt", Tu);//规定化变换函数

	//保存图像
	bmpfile.SaveBMPFILE("result/QI.bmp");
	SpeFile.SaveBMPFILE("result/SpecPepper.bmp");
	ansFile.SaveBMPFILE("result/DI.bmp");
	return 0;
}
//测试用数据
//double equH2[L] = { 0.19, 0.25,0.21, 0.16, 0.08,0.06, 0.03, 0.02 };
//double SpeEquH2[L] = { 0, 0, 0, 0.15, 0.2, 0.3, 0.2, 0.15 };