#include "stdafx.h"
#include "Memory.h"
#include "Dispatch.h"
int p[MAXM];
Dispach dispach;
int n, m, op;
int main()
{
	cout << "�������ڴ�������ͽ���������" << endl;
	cin >> n >> m;
	cout << "������"<<m<<"�����̣�" << endl;
	for (int i = 1; i <= m; i++)
	{
		cin >> p[i];
	}
	while (1)
	{
		dispach.initParameter(n, m, p);
		cout << endl;
		cout << "��ѡ��ʹ���ĸ��㷨������0�˳�ϵͳ����" << endl;
		cout << "1: �Ƚ��ȳ��û��㷨��FIFO��" << endl;
		cout << "2: ������δʹ���û��㷨��LRU��" << endl;
		cin >> op;
		if (!op)
			break;
		if (dispach.chooseAlgorithm(op))
			dispach.output();
		else
			cout << "����������������롣" << endl;
	}

	return 0;
}

/*
3 12
3 2 1 0 3 2 4 3 2 1 0 4

4 20
1 8 1 7 8 2 7 2 1 8 3 8 2 1 3 1 7 1 3 7
*/