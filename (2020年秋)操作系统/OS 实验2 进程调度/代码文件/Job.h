#pragma once
#pragma warning (disable:4996)
#pragma warning (disable:6031)

#include <iostream>
#include <cstdio>
#include <cstring>
#include <string>
#include <algorithm>
#include <iomanip>
#include <queue>
using namespace std;

struct Time 	//�ַ����ֽ���Сʱ������
{ 
	int hour = 0;
	int minute = 0;
};

class Job
{
public:
	string finishTime;	//���ʱ��
	int turnaroundTime;	//��תʱ��
	double weightedTurnaroundTime;	//��Ȩ��תʱ��
	int waitTime;	//�ȴ�ʱ��
	double responseRatio;	//��Ӧ��

	Job();
	~Job();
	void init(int num, string name, string arrT, int runT);	//������ֵ
	int getArriveTime();	//��ȡ����ʱ��
	int getRunTime();	//��ȡ����ʱ��
	Time calTime(string s);	//����ʱ���ַ������ֽ�Ϊ���㼸��
	void calFinishTime(int t);	//�������ʱ��
	void calParameters();	//�������
	void output();	//���

private:
	//��������
	int id;	//��ҵ���
	string jobName;	//��������
	string arriveTime;	//����ʱ��
	int runTime;	//����ʱ�䣬��λΪ����
};