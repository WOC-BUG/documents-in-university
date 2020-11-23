#include "Schedule.h"

int cmp1(Job a, Job b)	//���յ���ʱ������
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
	aveTurnaroundTime = 0;	//ƽ����תʱ��
	aveWeightedTurnaroundTime = 0;	//ƽ����Ȩ��תʱ��
	aveWaitTime = 0;	//ƽ���ȴ�ʱ��
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
	aveTurnaroundTime = sumTurnaroundTime / (n * 1.0);	//ƽ����תʱ��
	aveWeightedTurnaroundTime = sumWeightedTurnaroundTime / (n * 1.0);	//ƽ����Ȩ��תʱ��
	aveWaitTime = sumWaitTime / (n * 1.0);	//ƽ���ȴ�ʱ��
}

//ѡ��ִ���㷨
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
		cout << "�������" << endl;
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

	//������̽���ʱ��
	int tmpTime[MAXN] = { job[1].getArriveTime() };
	for (int i = 1; i <= n; i++)
	{
		tmpTime[i] = max(tmpTime[i - 1], job[i].getArriveTime()) + job[i].getRunTime();
		job[i].calFinishTime(tmpTime[i]);
		//cout << job[i].getRunTime() << " " << job[i].finishTime << endl;
	}
	calculate();
	cout << endl << "�����ȷ�������㷨��" << endl;
}

void Schedule::SJF()
{
	sort(job + 1, job + n + 1, cmp1);
	int pTime = job[1].getArriveTime();	//��ǰִ��ʱ��

	//����ʵ��
	for (int j = 1; j <= n; j++)
	{
		//�ҵ���ǰʱ�������еĽ����У�ִ��ʱ����С���Ǹ�
		int p = j;
		for (int i = j; i <= n; i++)
		{
			if (job[i].getArriveTime() <= pTime)//����i�Ѿ�����
			{
				if (job[i].getRunTime() < job[p].getRunTime())	//�ҵ�һ������ʱ����С�Ľ���
					p = i;
			}
		}
		pTime += job[p].getRunTime();
		swap(job[j], job[p]);
	}

	//������̽���ʱ��
	int tmpTime[MAXN] = { job[1].getArriveTime() };
	for (int i = 1; i <= n; i++)
	{
		tmpTime[i] = max(tmpTime[i - 1], job[i].getArriveTime()) + job[i].getRunTime();
		job[i].calFinishTime(tmpTime[i]);
		//cout << job[i].getRunTime() << " " << job[i].finishTime << endl;
	}
	calculate();
	cout << endl << "����ռʽ�Ķ���ҵ���ȵ����㷨��" << endl;
}
void Schedule::STRN()
{
	cout << "��δ���" << endl;
}
void Schedule::HRRN()
{
	sort(job + 1, job + n + 1, cmp1);
	int pTime = job[1].getArriveTime();	//��ǰִ��ʱ��

	//����ʵ��
	for (int j = 1; j <= n; j++)
	{
		//�ҵ���ǰʱ�������еĽ����У�ִ��ʱ����С���Ǹ�
		int p = j;
		for (int i = j; i <= n; i++)
		{
			if (job[i].getArriveTime() <= pTime)//����i�Ѿ�����
			{
				job[i].responseRatio = (pTime - job[i].getArriveTime() + job[i].getRunTime()) * 1.0 / (job[i].getRunTime() * 1.0);
				if (job[i].responseRatio > job[p].responseRatio)	//�ҵ�һ����Ӧ�����Ľ���
					p = i;
			}
		}
		//cout << job[p].responseRatio << endl;
		pTime += job[p].getRunTime();
		swap(job[j], job[p]);
	}

	//������̽���ʱ��
	int tmpTime[MAXN] = { job[1].getArriveTime() };
	for (int i = 1; i <= n; i++)
	{
		tmpTime[i] = max(tmpTime[i - 1], job[i].getArriveTime()) + job[i].getRunTime();
		job[i].calFinishTime(tmpTime[i]);
		//cout << job[i].getRunTime() << " " << job[i].finishTime << endl;
	}
	calculate();
	cout << endl << "����Ӧ�����ȵ����㷨��" << endl;
}

void Schedule::output()
{
	cout << setw(12) << "���̱��|";
	cout << setw(12) << "��������|";
	cout << setw(12) << "����ʱ��|";
	cout << setw(12) << "����ʱ��|";
	cout << setw(12) << "����ʱ��ʱ��|";
	cout << setw(12) << "��תʱ��|";
	cout << setw(12) << "��Ȩ��תʱ��|";
	cout << setw(12) << "�ȴ�ʱ��|" << endl;
	cout << "-------------------------------------------------------------------------------------------------" << endl;
	for (int i = 1; i <= n; i++)
	{
		job[i].output();
	}
	cout << "-------------------------------------------------------------------------------------------------" << endl;
	cout << "ƽ����תʱ�䣺" << setprecision(3) << aveTurnaroundTime << endl;
	cout << "ƽ����Ȩ��תʱ�䣺" << setprecision(3) << aveWeightedTurnaroundTime << endl;
	cout << "ƽ���ȴ�ʱ�䣺" << setprecision(3) << aveWaitTime << endl;
}