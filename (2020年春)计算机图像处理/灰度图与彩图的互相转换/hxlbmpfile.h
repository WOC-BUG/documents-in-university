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
	int iYRGBnum;//1-�Ҷȣ�3-��ɫ
	RGBQUAD palette[256];//BGR��ʽ�洢����ɫ����

	BYTE* pDataAt(int h, int Y0R0G1B2 = 0);//��λ��
	BOOL AllocateMem();

	BOOL LoadBMPFILE(const char* fname);//����BMP�ļ���BOOL��MFC����ĺ�,��ʵ��int��ֵΪFALSE��TRUE���޿�ƽ̨���ԡ�
	BOOL SaveBMPFILE(const char* fname);//����ΪBMP�ļ���

	HXLBMPFILE();
	~HXLBMPFILE();
};

#endif