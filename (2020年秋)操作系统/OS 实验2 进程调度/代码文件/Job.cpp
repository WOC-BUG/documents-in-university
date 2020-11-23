#include "Job.h"

Job::Job()
{
	//��������
	id = 0;
	jobName = "";
	arriveTime = "";
	runTime = 0;

	//�������
	finishTime="";	//���ʱ��
	turnaroundTime=0;	//��תʱ��
	weightedTurnaroundTime=0;	//��Ȩ��תʱ��
	waitTime=0;	//�ȴ�ʱ��
	responseRatio = 0;	//��Ӧ��
}

Job::~Job()
{
}


//������������и�ֵ
void Job::init(int num, string name, string arrT, int runT)
{
	id = num;
	jobName = name;
	arriveTime = arrT;
	runTime = runT;
}

//��ȡ����ʱ��
int Job::getArriveTime()
{
	Time t = calTime(arriveTime);
	return t.hour * 60 + t.minute;
}

//��ȡ����ʱ��
int Job::getRunTime()
{
	return runTime;
}

//���ַ������д���
Time Job::calTime(string s)
{
	Time T;
	int len = s.length();
	int flag = 1;	//�ж��Ƿ������ֺ�
	for (int i = 0; i < len; i++)
	{
		if (s[i] == ':')
			flag = 0;
		else if (flag)	//ð��ǰ����Сʱ
		{
			T.hour = T.hour * 10 + (s[i] - '0');
		}
		else	//ð�ź���Ƿ���
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

	//��תʱ��
	turnaroundTime = (finishT.hour * 60 + finishT.minute) - (arriveT.hour * 60 + arriveT.minute);
	//��Ȩ��תʱ��
	weightedTurnaroundTime = (turnaroundTime * 1.0) / (runTime * 1.0);
	//�ȴ�ʱ��
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

