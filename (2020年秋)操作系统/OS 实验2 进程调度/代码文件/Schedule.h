#pragma once
#include "Job.h"
const int MAXN = 55;

class Schedule
{
public:
	int n;
	Schedule();
	~Schedule();
	void init(int num, string name, string arrT, int runT);
	void calculate();
	bool choose(int op);
	void FCFS();
	void SJF();
	void STRN();
	void HRRN();
	void output();

private:
	Job job[MAXN];
	double aveTurnaroundTime;	//ƽ����תʱ��
	double aveWeightedTurnaroundTime;	//ƽ����Ȩ��תʱ��
	double aveWaitTime;	//ƽ���ȴ�ʱ��
};