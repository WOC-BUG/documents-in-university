#pragma once
class Dispach
{
public:
	Dispach();
	~Dispach();
	void initParameter(int n, int m, int p[]);	//������ֵ
	int ifAllocate(int p);	//ҳ��p�Ƿ��Ѿ����ڴ��У����򷵻��ڴ���ţ����򷵻�-1
	void allocate(int processPos, int blockPos);	//��processPos�Ž��̷����blockPos���ڴ��
	bool chooseAlgorithm(int option);	//ѡ��ʹ���㷨���
	int ifEmpty();	//�Ƿ��п��ڴ��
	int FIFO();	//�Ƚ��ȳ��û��㷨
	int LRU(int i);		//������δʹ���û��㷨
	void output();
private:
	int processNumber;	//ҳ������
	int blockNumber;	//�ڴ������
	int block[MAXN];	//�ڴ��
	int table[MAXN][MAXM];	//��0�б�ʾ�������У�1~n�б�ʾ��ǰ�ڴ��洢״̬��n+1�б�ʾ�Ƿ�ȱҳ
	int visit[MAXM];	//���ڱ��LRU�еĽ��̣�ÿ�α����Ƿ񱻷��ʹ�
	queue<int> page;
	map<int, string> mp;	//��������ı�ͷ����
};

