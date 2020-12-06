#include "stdafx.h"
#include "Memory.h"
#include "Dispatch.h"
int p[MAXM];
Dispach dispach;
int n, m, op;
int main()
{
	cout << "请输入内存块数量和进程数量：" << endl;
	cin >> n >> m;
	cout << "请输入"<<m<<"个进程：" << endl;
	for (int i = 1; i <= m; i++)
	{
		cin >> p[i];
	}
	while (1)
	{
		dispach.initParameter(n, m, p);
		cout << endl;
		cout << "请选择使用哪个算法（输入0退出系统）：" << endl;
		cout << "1: 先进先出置换算法（FIFO）" << endl;
		cout << "2: 最近最久未使用置换算法（LRU）" << endl;
		cin >> op;
		if (!op)
			break;
		if (dispach.chooseAlgorithm(op))
			dispach.output();
		else
			cout << "输入出错，请重新输入。" << endl;
	}

	return 0;
}

/*
3 12
3 2 1 0 3 2 4 3 2 1 0 4

4 20
1 8 1 7 8 2 7 2 1 8 3 8 2 1 3 1 7 1 3 7
*/