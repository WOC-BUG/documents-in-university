#include "Job.h"
#include "Schedule.h"

int main()
{
	int n, op;	//进程数目，操作编号
	Schedule schedule;
	cout << "请输入进程数目：" << endl;
	cin >> n;
	schedule.n = n;
	cout << "请输入：进程名	进程到达时间 进程运行时间：" << endl;
	for (int i = 1; i <= n; i++)
	{
		string name;	//进程名
		string arrT;	//到达时间
		int runT;		//运行时间

		cin >> name >> arrT >> runT;
		schedule.init(i, name, arrT, runT);
	}

	while (1)
	{
		system("cls");
		cout << "请输入要选择的调度算法编号（输入0退出）：" << endl;
		cout << "1：先来先服务" << endl;
		cout << "2：非抢占式的短作业优先" << endl;
		//cout << "4：抢占式的短作业优先" << endl;
		cout << "3：高响应比优先" << endl;

		cin >> op;
		if (op == 0)
			break;
		if (schedule.choose(op))
			schedule.output();
		system("pause");
	}
	return 0;
}

/*
5
A 02:50 30
B 02:55 10
C 03:00 24
D 03:05 6
E 04:40 20
*/