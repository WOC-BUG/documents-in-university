#pragma warning(disable:4996)
#pragma warning(disable:6031)
#include<iostream>
#include<stdio.h>
#include<string.h>
#include<queue>
using namespace std;
const int MAXN = 55;	//进程数量
const int MAXM = 55;	//资源数量

int n, m, id;	//一共n个进程m个资源，id是进程编号
int Sum[MAXN][MAXM];	//进程i需要的第j种资源总数
int Allocation[MAXN][MAXM];	//进程i已经分配到的资源j
int Need[MAXN][MAXM];	//进程i还需要的第j种资源
int Available[MAXM];	//系统中第j种资源的数目
int Request[MAXM];	//当前进程申请的j种资源

int visit[MAXN];	//进程i是否已被分配
int used[MAXN];		//进程所需资源已经分配完
int available[MAXM];//用于安全性检测的副本变量

void input()
{
	printf("请输入进程数量和资源数量（用空格隔开）\n");
	scanf("%d%d", &n, &m);

	printf("接下来输入m个数，表示系统中总共有的每种资源数目\n");
	for (int j = 1; j <= m; j++)
		scanf("%d", &Available[j]);

	printf("下面n行m列请输入：某进程总共需要的每种资源数量\n");
	for (int i = 1; i <= n; i++)
		for (int j = 1; j <= m; j++)
			scanf("%d", &Sum[i][j]);

	printf("下面n行m列请输入：某进程已分配到的每种资源数量\n");
	for (int i = 1; i <= n; i++)
		for (int j = 1; j <= m; j++)
			scanf("%d", &Allocation[i][j]);

	//计算剩余需求量
	for (int i = 1; i <= n; i++)
		for (int j = 1; j <= m; j++)
			Need[i][j] = Sum[i][j] - Allocation[i][j];
}

//检查是否合法
bool check()
{
	for (int j = 1; j <= m; j++)
	{
		if (Request[j] > Need[id][j])
		{
			printf("超过进程最大需求！\n");
			return false;
		}
	}
	for (int j = 1; j <= m; j++)
	{
		if (Request[j] > Available[j])
		{
			printf("超过当前系统总资源！\n");
			return false;
		}
	}
	return true;
}

//如果进程所需全部资源均已得到，就用完归还
void ifFinish(int op)
{
	int flag = 1;
	for (int j = 1; j <= m; j++)
	{
		if (Need[id][j] > 0)
			flag = 0;
	}
	if (flag)
	{
		if (op)
		{
			for (int j = 1; j <= m; j++)
			{
				Available[j] += Sum[id][j];
			}
			used[id] = 1;
		}
		else
		{
			for (int j = 1; j <= m; j++)
			{
				Available[j] -= Sum[id][j];
			}
			used[id] = 0;
		}
	}
}

//预分配
void preAllocation(int op)
{
	if (op)	//预分配
	{
		for (int j = 1; j <= m; j++)
		{
			Allocation[id][j] += Request[j];
			Need[id][j] -= Request[j];
			Available[j] -= Request[j];
		}
		ifFinish(1);
	}
	else //系统不安全时，将预分配的还回去
	{
		for (int j = 1; j <= m; j++)
		{
			Allocation[id][j] -= Request[j];
			Need[id][j] += Request[j];
			Available[j] += Request[j];
		}
	}
	
}

//安全性检查，返回1表示安全，返回0表示不安全，返回2表示全部进程资源分配完毕
int safetyCheck()
{
	memset(visit, 0, sizeof(visit));
	//用临时变量进行模拟
	for (int j = 1; j <= m; j++)
	{
		available[j] = Available[j];
	}

	queue<int> que;
	while (que.size() < n)
	{
		int num = 0;
		for (int i = 1; i <= n; i++)
		{
			if (used[i])
			{
				num = -1;	//标记是否所有进程已经分配过了，就剩最后一个
				continue;
			}
			int flag = 1;
			for (int j = 1; j <= m; j++)
			{
				if (Need[i][j] > available[j])
				{
					flag = 0;
					break;
				}
			}
			if (flag)//进程i的所有Need资源都小于已有资源
			{
				num = i;
				break;
			}
		}
		if (num == -1)
			return 2;	//全部分配完毕
		if (!num)
		{
			printf("序列不安全!\n");
			return 0;
		}

		//分配进程num
		que.push(num);
		visit[num] = 1;
		for (int j = 1; j <= m; j++)
		{
			available[j] += Need[num][j];	//系统资源增加
		}
	}
	return 1;
}

void output2(int i, int a[MAXN][MAXM])
{
	for (int j = 1; j <= m; j++)
	{
		if (j == 1)
			printf("%5c", '(');
		else
			printf(",");
		printf("%d", a[i][j]);
		if (j == m)
			printf(")");
	}
}


void output()
{
	printf("\n系统资源：(");
	for (int j = 1; j <= m; j++)
		printf("%d%c", Available[j], j == m ? ')' : ',');

	printf("\n---------------------------------------------\n");
	printf("| 进程编号 | 最大需求 | 已分配量 | 最多还需 |\n");
	printf("---------------------------------------------\n");
	for (int i = 1; i <= n; i++)
	{
		printf("|%9d", i);
		output2(i, Sum);
		output2(i, Allocation);
		output2(i, Need);
		printf(" |\n");
	}
	printf("---------------------------------------------\n");
	printf("\n");
}
int main()
{
	input();
	output();
	while (1)
	{
		//system("pause");
		//system("cls");
		printf("请输入进程编号，以及该进程分配所需的m种资源数量(输入0退出)：\n");
		scanf("%d", &id);
		if (!id)
			break;
		for (int j = 1; j <= m; j++)
			scanf("%d", &Request[j]);
		if (check())
		{
			preAllocation(1);
			int ifSafe = safetyCheck();
			if (!ifSafe)
			{
				preAllocation(0);
				ifFinish(0);
			}
			output();
			if (ifSafe == 2)
			{
				printf("所有进程所需资源分配完毕！\n");
				break;
			}
		}
	}
	return 0;
}

/*
* 测试数据：
系统当前分配情况：
5 3
3 3 2
7 5 3
3 2 2
9 0 2
2 2 2
4 3 3
0 1 0
2 0 0
3 0 2
2 1 1
0 0 2
*/

/*
进程分配样例：
1
2 1 1
2
1 1 0
4
0 1 1
2
0 1 2
1
5 3 2
3
6 0 0
5
4 3 1
*/