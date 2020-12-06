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
		if (ifAllocate(table[0][i]))	//����i�Ѿ����ڴ���
		{
			table[blockNumber + 1][i] = -1;	//��ȱҳ
		}
		else
		{
			int pos = ifEmpty();	//�Ƿ��п��ڴ�飿���򷵻ؽ��̿��ţ����򷵻�-1
			for (int j = 1; j <= blockNumber; j++)	//�����ӡ��ֵ
				table[j][i] = block[j];
			if (pos == -1)	//�ڴ�鲻Ϊ�գ���Ҫ�û�
			{
				if (option == 1)
					pos = FIFO();
				else
					pos = LRU(i);
			}
			allocate(i, pos);	//ҳ��i������ڴ��pos
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
	page.push(p);	//�������
	block[blockPos] = p;		//�ڴ��������
	table[blockPos][processPos] = p;		//��table�м�¼
	table[blockNumber + 1][processPos] = 1;	//���ȱҳ
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
	int pos = ifAllocate(page.front());	//�ҵ�����ҳ�������ڴ���
	page.pop();
	return pos;
}

int Dispach::LRU(int i)
{
	int num = 0;
	memset(visit, 0, sizeof(visit));
	for (i = i - 1; i >= 0; i--)	//�������ڴ�������δ�����ʹ���ҳ��
	{
		if (!visit[table[0][i]])
		{
			visit[table[0][i]] = 1;
			num++;	//ҳ����++
			if (num == blockNumber)	//�ҵ����һ��ҳ��
				return ifAllocate(table[0][i]);	//���ص�i��ҳ�����ڵ��ڴ����
		}
	}
	return 0;
}

void Dispach::output()
{
	mp[0] = "����ҳ����";
	for (int i = 1; i <= blockNumber; i++)
	{
		mp[i]= "�����ڴ��";
		mp[i] += (i + '0');
	}
	mp[blockNumber + 1] = "�Ƿ�ȱҳ";
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
					cout << setw(4) << "��";
				else
					cout << setw(4) << table[i][j];
			}
		}
		cout << endl;
	}
}
