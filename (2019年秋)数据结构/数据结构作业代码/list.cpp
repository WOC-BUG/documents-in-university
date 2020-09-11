//#include<bits/stdc++.h>
//using namespace std;
//const int maxn = 1e5 + 10;
//int lena, lenb, lenc = 1, val;
////lena,lenb,lenc分别为线性表A、B、C的长度,val是输入的线性表的元素值
//class NODE
//{
//public:
//	int val;//值
//	NODE* last;//指向上一个节点
//}A[maxn], B[maxn], C[maxn];//将A、B合并为线性表C
//
//void ListInsert(NODE *N,int num,int val)//插入元素
//{
//	N[num].val = val;
//	N[num].last = &N[num - 1];
//}
//
//void merge(NODE* A,int lena,NODE* B,int lenb)//合并两个线性表
//{
//	int i = 1, j = 1;
//	while(i <= lena && j <= lenb)//A、B均非空时，将元素较小的插入C中
//	{
//		if (A[i].val <= B[j].val)
//			ListInsert(C, lenc++, A[i].val), i++;
//		else
//			ListInsert(C, lenc++, B[j].val), j++;
//	}
//	while (i <= lena)//插入A剩下元素
//		ListInsert(C, lenc++, A[i].val), i++;
//	while (j <= lenb)//插入B剩下元素
//		ListInsert(C, lenc++, B[j].val), j++;
//}
//
//int main()
//{
//	printf("请输入线性表A的元素个数：\n");
//	scanf("%d", &lena);
//	printf("请输入一个非递减有序的线性表A的元素：\n");
//	for (int i = 1; i <= lena; i++)//插入线性表A的元素
//	{
//		scanf("%d", &val);
//		ListInsert(A, i, val);
//	}
//	printf("请输入线性表B的元素个数：\n");
//	scanf("%d", &lenb);
//	printf("请输入一个非递减有序的线性表B的元素：\n");
//	for (int i = 1; i <= lenb; i++)//插入线性表B的元素
//	{
//		scanf("%d", &val);
//		ListInsert(B, i, val);
//	}
//	merge(A, lena, B, lenb);//合并线性表A与B
//	printf("合并后的线性表为：\n");
//	for (int i = 1; i < lenc; i++)
//	{
//		printf("%d%c", C[i].val, i == (lenc - 1) ? '\n' : ' ');
//		//输出线性表C的元素，遇到最后一个元素回车，否则空格
//	}
//	return 0;
//}