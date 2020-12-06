#pragma once
class Dispach
{
public:
	Dispach();
	~Dispach();
	void initParameter(int n, int m, int p[]);	//变量赋值
	int ifAllocate(int p);	//页面p是否已经在内存中？在则返回内存块编号，否则返回-1
	void allocate(int processPos, int blockPos);	//将processPos号进程分配给blockPos号内存块
	bool chooseAlgorithm(int option);	//选择使用算法编号
	int ifEmpty();	//是否有空内存块
	int FIFO();	//先进先出置换算法
	int LRU(int i);		//最近最久未使用置换算法
	void output();
private:
	int processNumber;	//页面数量
	int blockNumber;	//内存块数量
	int block[MAXN];	//内存块
	int table[MAXN][MAXM];	//第0行表示进程序列，1~n行表示当前内存块存储状态，n+1行表示是否缺页
	int visit[MAXM];	//用于标记LRU中的进程，每次遍历是否被访问过
	queue<int> page;
	map<int, string> mp;	//存输出表格的表头中文
};

