#include "stdafx.h"
#include "Memory.h"
#include "Dispatch.h"

Dispach::Dispach()
{
	blockNumber = 0;
	processNumber = 0;
	memset(block, -1, sizeof(block));
	memset(visit, 0, sizeof(visit));
	memset(table, -1, sizeof(table));
}

Dispach::~Dispach()
{
}

void Dispach::initParameter(int n, int m, int p[])
{
	memset(block, -1, sizeof(block));
	memset(visit, 0, sizeof(visit));
	memset(table, -1, sizeof(table));
	while (!page.empty())
		page.pop();

	blockNumber = n;
	processNumber = m;
	for (int i = 1; i <= m; i++)
		table[0][i] = p[i];

}

bool Dispach::chooseAlgorithm(int option)
{
	if (option != 1 && option != 2)
		return false;
	for (int i = 1; i <= processNumber; i++)
	{
		int flag = 0;
		if (ifAllocate(table[0][i]))	//进程i已经在内存中
		{
			table[blockNumber + 1][i] = -1;	//不缺页
		}
		else
		{
			int pos = ifEmpty();	//是否有空内存块？有则返回进程块编号，否则返回-1
			for (int j = 1; j <= blockNumber; j++)	//输出打印表赋值
				table[j][i] = block[j];
			if (pos == -1)	//内存块不为空，需要置换
			{
				if (option == 1)
					pos = FIFO();
				else
					pos = LRU(i);
			}
			allocate(i, pos);	//页面i分配给内存块pos
		}
	}
	return true;
}

int Dispach::ifAllocate(int p)
{
	for (int i = 1; i <= blockNumber; i++)
		if (block[i] == p)
			return i;
	return 0;
}

void Dispach::allocate(int processPos, int blockPos)
{
	int p = table[0][processPos];
	page.push(p);	//插入队列
	block[blockPos] = p;		//内存块分配进程
	table[blockPos][processPos] = p;		//在table中记录
	table[blockNumber + 1][processPos] = 1;	//标记缺页
}

int Dispach::ifEmpty()
{
	for (int i = 1; i <= blockNumber; i++)
		if (block[i] == -1)
			return i;
	return -1;
}

int Dispach::FIFO()
{
	int pos = ifAllocate(page.front());	//找到队首页面所在内存块号
	page.pop();
	return pos;
}

int Dispach::LRU(int i)
{
	int num = 0;
	memset(visit, 0, sizeof(visit));
	for (i = i - 1; i >= 0; i--)	//倒序找内存块中最久未被访问过的页面
	{
		if (!visit[table[0][i]])
		{
			visit[table[0][i]] = 1;
			num++;	//页面数++
			if (num == blockNumber)	//找到最后一个页面
				return ifAllocate(table[0][i]);	//返回第i个页面所在的内存块编号
		}
	}
	return 0;
}

void Dispach::output()
{
	mp[0] = "访问页面编号";
	for (int i = 1; i <= blockNumber; i++)
	{
		mp[i]= "访问内存块";
		mp[i] += (i + '0');
	}
	mp[blockNumber + 1] = "是否缺页";
	for (int i = 0; i <= blockNumber + 1; i++)
	{
		for (int j = 0; j <= processNumber; j++)
		{
			if (j == 0)
				cout << setw(14) << mp[i];
			else 
			{
				if (table[i][j] == -1)
					cout << setw(4) << "";
				else if (i == blockNumber + 1)
					cout << setw(4) << "√";
				else
					cout << setw(4) << table[i][j];
			}
		}
		cout << endl;
	}
}
