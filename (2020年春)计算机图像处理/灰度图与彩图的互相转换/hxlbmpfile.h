#pragma once
#pragma warning(disable:4996)
#include<math.h>
#include<stdio.h>
#include<windows.h>
//
#ifndef HXLBMPFILEH
#define HXLBMPFILEH// !HXLBMPFILE

class HXLBMPFILE {
	BYTE* Imagedata;

public:
	int imagew, imageh;
	int iYRGBnum;//1-灰度，3-彩色
	RGBQUAD palette[256];//BGR形式存储的颜色数组

	BYTE* pDataAt(int h, int Y0R0G1B2 = 0);//找位置
	BOOL AllocateMem();

	BOOL LoadBMPFILE(const char* fname);//加载BMP文件。BOOL是MFC定义的宏,其实是int，值为FALSE或TRUE，无跨平台特性。
	BOOL SaveBMPFILE(const char* fname);//保存为BMP文件。

	HXLBMPFILE();
	~HXLBMPFILE();
};

#endif