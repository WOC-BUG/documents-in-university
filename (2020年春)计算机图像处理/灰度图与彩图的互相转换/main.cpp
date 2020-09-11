#include "hxlbmpfile.h"
void ChangeToGrayscale(HXLBMPFILE& bmpfile, HXLBMPFILE& bf)//转成灰度图
{
	for (int i = 0; i < bmpfile.imageh; i++)
	{
		for (int j = 0; j < bmpfile.imagew; j++)
		{
			bf.pDataAt(i)[j] = BYTE(0.299 * bmpfile.pDataAt(i, 0)[j] + 0.587 * bmpfile.pDataAt(i, 1)[j] + 0.114 * bmpfile.pDataAt(i, 2)[j] + 0.5);

		}
	}
}

void ChangeToTrueColor(HXLBMPFILE& bmpfile, HXLBMPFILE& bf)//转成伪彩图
{
	//将file1中的颜色赋值给bf的调色板
	FILE* fp = fopen("result/file1.txt", "r");
	int rgbtmp[256][4];
	memset(rgbtmp, 0, sizeof(rgbtmp));
	for (int i = 0; i < 256; i++)
	{
		fscanf(fp, "%d", &rgbtmp[i][0]);
		fscanf(fp, "%d", &rgbtmp[i][1]);
		fscanf(fp, "%d", &rgbtmp[i][2]);
	}
	for (int i = 0; i < 256; i++)
	{
		bf.palette[i].rgbBlue = rgbtmp[i][0];
		bf.palette[i].rgbGreen = rgbtmp[i][1];
		bf.palette[i].rgbRed = rgbtmp[i][2];
		bf.palette[i].rgbReserved = 0;
	}
	fclose(fp);

	//让指针指向调色板中对应的颜色
	for (int i = 0; i < bmpfile.imageh; i++)
	{
		for (int j = 0; j < bmpfile.imagew; j++)
		{
			bf.pDataAt(i)[j] = bmpfile.pDataAt(i)[j];
		}
	}
}

void Reversed_phase(HXLBMPFILE& bmpfile, HXLBMPFILE& bf)//图像反白
{
	int i, j;
	for (i = 0; i < bmpfile.imageh; i++)
	{
		for (j = 0; j < bmpfile.imagew; j++)
		{
			bf.pDataAt(i)[j] = 255 - bmpfile.pDataAt(i)[j];
			if (bmpfile.iYRGBnum == 3)
			{
				bf.pDataAt(i, 1)[j] = 255 - bmpfile.pDataAt(i, 1)[j];
				bf.pDataAt(i, 2)[j] = 255 - bmpfile.pDataAt(i, 2)[j];
			}
		}
	}
}

inline void BmpToTxt(HXLBMPFILE& bmpfile, const char* str)//导出数据为txt文件，灰度图像导出索引值，真彩图导出RGB值
{
	FILE* fp = fopen(str, "w");
	for (int i = 0; i < bmpfile.imageh; i++)
	{
		for (int j = 0; j < bmpfile.imagew; j++)
		{
			fprintf(fp, "%d,", bmpfile.pDataAt(i)[j]);
			if (bmpfile.iYRGBnum == 3)//真彩图
			{
				fprintf(fp, "%d,", bmpfile.pDataAt(i, 1)[j]);
				fprintf(fp, "%d ", bmpfile.pDataAt(i, 2)[j]);
			}
		}
		fprintf(fp, "\n");
	}
	fclose(fp);
}

int main()
{
	HXLBMPFILE bmpfile;
	if (!bmpfile.LoadBMPFILE("img/hometown.bmp"))//载入不成功返回1
		return 1;
	HXLBMPFILE bf, bf2;//bf用来实现灰度图和彩色图互相转换，bf2用于图像反向

	bf.imagew = bmpfile.imagew;
	bf.imageh = bmpfile.imageh;
	bf2.imagew = bmpfile.imagew;
	bf2.imageh = bmpfile.imageh;
	bf.iYRGBnum = 1;//真彩转灰度，或灰度转伪彩，类型都为1
	bf2.iYRGBnum = bmpfile.iYRGBnum;

	//图像反白
	if (!bf2.AllocateMem())//内存分配不成功返回1
		return 1;
	Reversed_phase(bmpfile, bf2);

	//灰度图转彩图
	if (bmpfile.iYRGBnum == 1)
	{
		if (!bf.AllocateMem())//内存分配不成功返回1
			return 1;
		ChangeToTrueColor(bmpfile, bf);
	}

	//真彩图转灰度图
	if (bmpfile.iYRGBnum == 3)
	{
		if (!bf.AllocateMem())//内存分配不成功返回1
			return 1;
		ChangeToGrayscale(bmpfile, bf);
	}

	//另存为
	bf.SaveBMPFILE("result/GrayOrColor.bmp");
	bf2.SaveBMPFILE("result/Reversed.bmp");

	//转为txt格式
	BmpToTxt(bmpfile, "result/file2.txt");//原图
	BmpToTxt(bf2, "result/file3.txt");//反白后的图

	printf("program ends!\n");
	return 0;
}