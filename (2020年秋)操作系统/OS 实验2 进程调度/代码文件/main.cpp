#include "Job.h"
#include "Schedule.h"

int main()
{
	int n, op;	//������Ŀ���������
	Schedule schedule;
	cout << "�����������Ŀ��" << endl;
	cin >> n;
	schedule.n = n;
	cout << "�����룺������	���̵���ʱ�� ��������ʱ�䣺" << endl;
	for (int i = 1; i <= n; i++)
	{
		string name;	//������
		string arrT;	//����ʱ��
		int runT;		//����ʱ��

		cin >> name >> arrT >> runT;
		schedule.init(i, name, arrT, runT);
	}

	while (1)
	{
		system("cls");
		cout << "������Ҫѡ��ĵ����㷨��ţ�����0�˳�����" << endl;
		cout << "1�������ȷ���" << endl;
		cout << "2������ռʽ�Ķ���ҵ����" << endl;
		//cout << "4����ռʽ�Ķ���ҵ����" << endl;
		cout << "3������Ӧ������" << endl;

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