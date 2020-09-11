////#pragma warning (disable:4996)
////#include<stdio.h>
////#include <malloc.h>
////typedef int SElemType;
////#define STACK_INIT_SIZE 100//存储空间初始分配量
////#define STACKINCREMENT 10//存储空间分配增量
////typedef struct {
////	SElemType* base;//栈底指针
////	SElemType* top;//栈顶指针
////	int StackSize;//当前分配存储空间
////}SqStack;
////struct Stack
////{
////	bool InitStack(SqStack& S);//构造空栈
////	bool DestoryStack(SqStack& S);//销毁栈S
////	bool ClearStack(SqStack& S);//将栈S置为空栈
////	bool StackEmpty(SqStack S);//判断栈是否为空
////	int StackSize(SqStack S);//返回栈中元素个数
////	bool GetTop(SqStack S, SElemType& e);//若栈不为空，用e返回栈顶元素
////	bool Push(SqStack& S, SElemType& e);//插入元素e
////	bool Pop(SqStack& S, SElemType& e);//弹出栈顶元素e
////	bool StackTraverse(SqStack S, int(*visit)());
////	//从栈顶到栈底依次对栈中每个元素调用函数visit()，一旦visit()失败则操作失败
////};
////
////bool Stack::InitStack(SqStack& S)
////{
////	S.base = (SElemType*)malloc(STACK_INIT_SIZE * sizeof(SElemType));
////	if (!S.base)
////		return 0;
////	S.top = S.base;
////	S.StackSize = STACK_INIT_SIZE;
////	return 1;
////}
////
////bool Stack::DestoryStack(SqStack& S)
////{
////	free(S.base);
////	return 1;
////}
////
////bool Stack::StackEmpty(SqStack S)//栈为空返回0，不为空返回1
////{
////	if (S.top == S.base)
////		return 0;
////	return 1;
////}
////
////bool Stack::GetTop(SqStack S, SElemType& e)
////{
////	if (S.top == S.base)
////		return 0;
////	e = *(S.top - 1);
////	return 1;
////}
////
////bool Stack::Push(SqStack& S, SElemType& e)
////{
////	if (S.top - S.base >= S.StackSize)
////		S.base = (SElemType*)realloc(S.base, (S.StackSize + STACKINCREMENT) * sizeof(SElemType));
////	if (!S.base)
////		return 0;
////	S.top = S.base + S.StackSize;
////	S.StackSize += STACKINCREMENT;
////	return 1;
////}
////
////bool Stack::Pop(SqStack& S, SElemType& e)
////{
////	if (!StackEmpty(S))//栈为空
////		return 0;
////	e = *(--S.top);
////	return 1;
////}
////int main()
////{
////	return 0;
////}
////
////



//#pragma warning(disable:4996)
//#include<bits/stdc++.h>
//using namespace std;
//const int maxn = 1e6+10;
//int n, a[maxn];
//queue<int> que;
//int main()
//{
//	printf("请输入一组数列(输入0结束输入)：\n");
//	while(1)
//	{
//		scanf("%d", &n);
//		if (!n)
//			break;
//		if (n > 0)
//			que.push(n);
//		else if (n < 0 && !que.empty())
//		{
//			printf("当前队头元素为：%d\n", que.front());
//			que.pop();
//		}
//		else if (n < 0 && que.empty())
//		{
//			printf("当前队列元素为空。\n");
//		}
//	}
//	return 0;
//}





//
//#pragma warning(disable:4996)
//#include<stdio.h>
//#include<stdlib.h>
//#include <iostream>
////#include "pch.h"
////#include"malloc.h"
//
//#define QueueSize 10
//typedef int ElemType;
//typedef struct queue
//{
//	ElemType data[QueueSize];
//	int front, rear;
//
//}SqQueue;
//
//void main()
//{
//	ElemType a, x;
//	SqQueue* qu;
//	qu = (SqQueue*)malloc(sizeof(SqQueue));
//	qu->rear = qu->front = 0;
//	for (int i = 0; i < 10; i++)
//	{
//		printf("输入a的值：");
//		scanf("%d", &a);
//		if (a > 0)
//		{
//			if ((qu->rear + 1) % QueueSize == qu->front)
//				printf("队列已满\n");
//			else
//			{
//				qu->rear = (qu->rear + 1) % QueueSize;
//				qu->data[qu->rear] = a;
//			}
//		}
//		if (a < 0)
//		{
//			if (qu->rear == qu->front)
//				printf("队列已空\n");
//			else {
//				qu->front = (qu->front + 1) % QueueSize;
//				x = qu->data[qu->front];
//				printf("出队元素：%d\n", x);
//			}
//
//		}
//
//	}
//
//}
