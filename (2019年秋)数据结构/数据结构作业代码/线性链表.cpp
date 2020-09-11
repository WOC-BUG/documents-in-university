//#pragma warning(disable:4996)//屏蔽VS关于 scanf_s 报错
//#include<bits/stdc++.h>//万能头文件，需要对vs进行配置
//using namespace std;
//const int maxn = 1e6 + 10;//定义链表LA和LB的元素个数最大范围
//struct LIST
//{
//	int data;
//	LIST* next;
//}LA[maxn], LB[maxn], s[maxn];
//int lenA, lenB, val, num, cont;//链表A、B的长度，
//bool DeleteList(LIST* l, int i, int& e)//删除元素
//{
//	LIST *p = l;
//	int j = 0;
//	while (p->next && (j < i))
//	{
//		p = p->next;
//		j++;
//	}
//	if (!(p->next) || (j > i ))//出错
//		return 0;
//	LIST* q = p->next;
//	p->next = q->next;
//	e = q->data;
//	return 1;
//}
//bool InsertList(LIST* l, int i, int& e)//插入元素
//{
//	LIST* p = l;
//	int j = 0;
//	while (p && (j < i - 1))
//	{
//		p = p->next;
//		j++;
//	}
//	if (!p || (j > i - 1))//出错
//		return 0;
//	s[cont].data = e;
//	s[cont].next = p->next;
//	p->next = &s[cont];
//	cont++;
//	return 1;
//}
//void merge(LIST *tmpa,LIST *tmpb)//合并两个链表
//{
//	for (int i = 1; i <= lenA; i++)
//	{
//		tmpa = (*tmpa).next;
//		int flag = 0;
//		tmpb = LB;
//		for (int j = 1; j <= lenB; j++)
//		{
//			tmpb = (*tmpb).next;
//			if ((*tmpa).data == (*tmpb).data)
//			{
//				flag = 1;
//				break;
//			}
//		}
//		if (flag)
//			continue;
//		else
//		{
//			InsertList(LB, lenB + 1, (*tmpa).data);
//			lenB++;
//		}
//	}
//}
//int main()
//{
//	printf("请输入线性表A的元素个数：\n");
//	scanf("%d", &lenA);
//	printf("请输入一个非递减有序的线性表A的元素：\n");
//	LA[0].next = &LA[1];
//	for (int i = 1; i <= lenA; i++)//插入线性表A的元素
//	{
//		scanf("%d", &val);
//		LA[i].data = val;
//		LA[i].next = &LA[i + 1];
//	}
//	LA[lenA].next = NULL;
//	printf("请输入线性表B的元素个数：\n");
//	scanf("%d", &lenB);
//	printf("请输入一个非递减有序的线性表B的元素：\n");
//	LB[0].next = &LB[1];
//	for (int i = 1; i <= lenB; i++)//插入线性表B的元素
//	{
//		scanf("%d", &val);
//		LB[i].data = val;
//		LB[i].next = &LB[i + 1];
//	}
//	LB[lenB].next = NULL;
//	printf("请输入删除A中第几个元素：\n");
//	scanf("%d", &val);
//	if (DeleteList(LA, val-1, num) == 1)
//	{
//		printf("删除后的链表为：\n");
//		lenA--;
//		LIST *tmp = &LA[0];
//		for (int i = 1; i <= lenA; i++)
//		{
//			tmp = (*tmp).next;
//			printf("%d%c", (*tmp).data, i == lenA ? '\n' : ' ');
//		}
//	}
//	else
//	{
//		printf("没有该元素！\n");
//	}
//	printf("请输入要插入到B中第几个元素后：\n");
//	scanf("%d", &val);
//	printf("请输入要插入的值：\n");
//	scanf("%d", &num);
//	if (InsertList(LB, val+1, num) == 1)
//	{
//		printf("插入后的链表为：\n");
//		lenB++;
//		LIST* tmp = &LB[0];
//		for (int i = 1; i <= lenB; i++)
//		{
//			tmp = (*tmp).next;
//			printf("%d%c", (*tmp).data, i == lenB ? '\n' : ' ');
//		}
//	}
//	else
//	{
//		printf("出错！\n");
//	}
//	merge(LA, LB);//合并两个链表
//	printf("合并后的链表为：\n");
//	LIST* tmp = &LB[0];
//	for (int i = 1; i <= lenB; i++)
//	{
//		tmp = (*tmp).next;
//		printf("%d%c", (*tmp).data, i == lenB ? '\n' : ' ');
//	}
//	return 0;
//}

//#include<bits/stdc++.h>
//using namespace std;
//typedef struct Lnode
//{
//	int value;
//	Lnode* next;
//}Lnode;
//
//int CreateList(Lnode*& L, int a[], int n)
//{
//	L = (Lnode*)malloc(sizeof(Lnode));
//
//}
//
//int main()
//{
//	return 0;
//}