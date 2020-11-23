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

struct Time 	//字符串分解后的小时、分钟
{ 
	int hour = 0;
	int minute = 0;
};

class Job
{
public:
	string finishTime;	//完成时间
	int turnaroundTime;	//周转时间
	double weightedTurnaroundTime;	//带权周转时间
	int waitTime;	//等待时间
	double responseRatio;	//响应比

	Job();
	~Job();
	void init(int num, string name, string arrT, int runT);	//变量赋值
	int getArriveTime();	//获取到达时间
	int getRunTime();	//获取运行时间
	Time calTime(string s);	//处理时间字符串，分解为几点几分
	void calFinishTime(int t);	//运算结束时间
	void calParameters();	//运算参数
	void output();	//输出

private:
	//基本参数
	int id;	//作业编号
	string jobName;	//进程名称
	string arriveTime;	//到达时间
	int runTime;	//运行时间，单位为分钟
};