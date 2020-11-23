#include "Job.h"

Job::Job()
{
	//基本参数
	id = 0;
	jobName = "";
	arriveTime = "";
	runTime = 0;

	//计算参数
	finishTime="";	//完成时间
	turnaroundTime=0;	//周转时间
	weightedTurnaroundTime=0;	//带权周转时间
	waitTime=0;	//等待时间
	responseRatio = 0;	//响应比
}

Job::~Job()
{
}


//对输入变量进行赋值
void Job::init(int num, string name, string arrT, int runT)
{
	id = num;
	jobName = name;
	arriveTime = arrT;
	runTime = runT;
}

//获取到达时间
int Job::getArriveTime()
{
	Time t = calTime(arriveTime);
	return t.hour * 60 + t.minute;
}

//获取运行时间
int Job::getRunTime()
{
	return runTime;
}

//对字符串进行处理
Time Job::calTime(string s)
{
	Time T;
	int len = s.length();
	int flag = 1;	//判断是否遇到分号
	for (int i = 0; i < len; i++)
	{
		if (s[i] == ':')
			flag = 0;
		else if (flag)	//冒号前的是小时
		{
			T.hour = T.hour * 10 + (s[i] - '0');
		}
		else	//冒号后的是分钟
		{
			T.minute = T.minute * 10 + (s[i] - '0');
		}
	}
	return T;
}

void Job::calFinishTime(int t)
{
	finishTime = "";
	int hour = t / 60;
	int minute = t % 60;
	if (hour > 24)
		hour %= 24;

	int h1 = hour / 10;
	int h2 = hour % 10;
	finishTime += '0' + h1;
	finishTime += '0' + h2;

	finishTime += ':';

	int m1 = minute / 10;
	int m2 = minute % 10;
	finishTime += '0' + m1;
	finishTime += '0' + m2;
}

void Job::calParameters()
{
	Time finishT = calTime(finishTime);
	Time arriveT = calTime(arriveTime);

	//周转时间
	turnaroundTime = (finishT.hour * 60 + finishT.minute) - (arriveT.hour * 60 + arriveT.minute);
	//带权周转时间
	weightedTurnaroundTime = (turnaroundTime * 1.0) / (runTime * 1.0);
	//等待时间
	waitTime = turnaroundTime - runTime;
}

void Job::output()
{
	cout << setw(10) << id;
	cout << setw(12) << jobName;
	cout << setw(12) << arriveTime;
	cout << setw(12) << runTime;
	cout << setw(12) << finishTime;
	cout << setw(12) << turnaroundTime;
	cout << setw(12) << setprecision(3) << weightedTurnaroundTime;
	cout << setw(12) << waitTime << endl;
}

