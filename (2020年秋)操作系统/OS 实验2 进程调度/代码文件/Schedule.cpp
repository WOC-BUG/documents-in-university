#include "Schedule.h"

int cmp1(Job a, Job b)	//按照到达时间排序
{
	int arrTa = a.getArriveTime();
	int arrTb = b.getArriveTime();
	int runTa = a.getRunTime();
	int runTb = b.getRunTime();
	if (arrTa == arrTb)
		return runTa < runTb;
	return arrTa < arrTb;
}

Schedule::Schedule()
{
	n = 0;
	aveTurnaroundTime = 0;	//平均周转时间
	aveWeightedTurnaroundTime = 0;	//平均带权周转时间
	aveWaitTime = 0;	//平均等待时间
}

Schedule::~Schedule()
{
}

void Schedule::init(int num, string name, string arrT, int runT)
{
	job[num].init(num, name, arrT, runT);
}

void Schedule::calculate()
{
	for (int i = 1; i <= n; i++)
	{
		job[i].calParameters();
	}

	double sumTurnaroundTime = 0;
	double sumWeightedTurnaroundTime = 0;
	double sumWaitTime = 0;
	for (int i = 1; i <= n; i++)
	{
		sumTurnaroundTime += job[i].turnaroundTime;
		sumWeightedTurnaroundTime += job[i].weightedTurnaroundTime;
		sumWaitTime += job[i].waitTime;
	}
	aveTurnaroundTime = sumTurnaroundTime / (n * 1.0);	//平均周转时间
	aveWeightedTurnaroundTime = sumWeightedTurnaroundTime / (n * 1.0);	//平均带权周转时间
	aveWaitTime = sumWaitTime / (n * 1.0);	//平均等待时间
}

//选择执行算法
bool Schedule::choose(int op)
{
	switch (op)
	{
		case 1:
			FCFS();
			break;
		case 2:
			SJF();
			break;
		case 3:
			HRRN();
			break;
	default:
		cout << "输入出错！" << endl;
		break;
	}
	if (op < 1 || op > 3)
		return false;
	else
		return true;
}

void Schedule::FCFS()
{
	sort(job + 1, job + n + 1, cmp1);

	//计算进程结束时间
	int tmpTime[MAXN] = { job[1].getArriveTime() };
	for (int i = 1; i <= n; i++)
	{
		tmpTime[i] = max(tmpTime[i - 1], job[i].getArriveTime()) + job[i].getRunTime();
		job[i].calFinishTime(tmpTime[i]);
		//cout << job[i].getRunTime() << " " << job[i].finishTime << endl;
	}
	calculate();
	cout << endl << "先来先服务调度算法：" << endl;
}

void Schedule::SJF()
{
	sort(job + 1, job + n + 1, cmp1);
	int pTime = job[1].getArriveTime();	//当前执行时间

	//调度实现
	for (int j = 1; j <= n; j++)
	{
		//找到当前时刻能运行的进程中，执行时间最小的那个
		int p = j;
		for (int i = j; i <= n; i++)
		{
			if (job[i].getArriveTime() <= pTime)//进程i已经到达
			{
				if (job[i].getRunTime() < job[p].getRunTime())	//找到一个运行时间最小的进程
					p = i;
			}
		}
		pTime += job[p].getRunTime();
		swap(job[j], job[p]);
	}

	//计算进程结束时间
	int tmpTime[MAXN] = { job[1].getArriveTime() };
	for (int i = 1; i <= n; i++)
	{
		tmpTime[i] = max(tmpTime[i - 1], job[i].getArriveTime()) + job[i].getRunTime();
		job[i].calFinishTime(tmpTime[i]);
		//cout << job[i].getRunTime() << " " << job[i].finishTime << endl;
	}
	calculate();
	cout << endl << "非抢占式的短作业优先调度算法：" << endl;
}
void Schedule::STRN()
{
	cout << "尚未完成" << endl;
}
void Schedule::HRRN()
{
	sort(job + 1, job + n + 1, cmp1);
	int pTime = job[1].getArriveTime();	//当前执行时间

	//调度实现
	for (int j = 1; j <= n; j++)
	{
		//找到当前时刻能运行的进程中，执行时间最小的那个
		int p = j;
		for (int i = j; i <= n; i++)
		{
			if (job[i].getArriveTime() <= pTime)//进程i已经到达
			{
				job[i].responseRatio = (pTime - job[i].getArriveTime() + job[i].getRunTime()) * 1.0 / (job[i].getRunTime() * 1.0);
				if (job[i].responseRatio > job[p].responseRatio)	//找到一个响应比最大的进程
					p = i;
			}
		}
		//cout << job[p].responseRatio << endl;
		pTime += job[p].getRunTime();
		swap(job[j], job[p]);
	}

	//计算进程结束时间
	int tmpTime[MAXN] = { job[1].getArriveTime() };
	for (int i = 1; i <= n; i++)
	{
		tmpTime[i] = max(tmpTime[i - 1], job[i].getArriveTime()) + job[i].getRunTime();
		job[i].calFinishTime(tmpTime[i]);
		//cout << job[i].getRunTime() << " " << job[i].finishTime << endl;
	}
	calculate();
	cout << endl << "高响应比优先调度算法：" << endl;
}

void Schedule::output()
{
	cout << setw(12) << "进程编号|";
	cout << setw(12) << "进程名称|";
	cout << setw(12) << "到达时间|";
	cout << setw(12) << "运行时间|";
	cout << setw(12) << "结束时间时间|";
	cout << setw(12) << "周转时间|";
	cout << setw(12) << "带权周转时间|";
	cout << setw(12) << "等待时间|" << endl;
	cout << "-------------------------------------------------------------------------------------------------" << endl;
	for (int i = 1; i <= n; i++)
	{
		job[i].output();
	}
	cout << "-------------------------------------------------------------------------------------------------" << endl;
	cout << "平均周转时间：" << setprecision(3) << aveTurnaroundTime << endl;
	cout << "平均带权周转时间：" << setprecision(3) << aveWeightedTurnaroundTime << endl;
	cout << "平均等待时间：" << setprecision(3) << aveWaitTime << endl;
}