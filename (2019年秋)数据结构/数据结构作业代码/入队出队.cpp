////#pragma warning (disable:4996)
////#include<stdio.h>
////#include <malloc.h>
////typedef int SElemType;
////#define STACK_INIT_SIZE 100//�洢�ռ��ʼ������
////#define STACKINCREMENT 10//�洢�ռ��������
////typedef struct {
////	SElemType* base;//ջ��ָ��
////	SElemType* top;//ջ��ָ��
////	int StackSize;//��ǰ����洢�ռ�
////}SqStack;
////struct Stack
////{
////	bool InitStack(SqStack& S);//�����ջ
////	bool DestoryStack(SqStack& S);//����ջS
////	bool ClearStack(SqStack& S);//��ջS��Ϊ��ջ
////	bool StackEmpty(SqStack S);//�ж�ջ�Ƿ�Ϊ��
////	int StackSize(SqStack S);//����ջ��Ԫ�ظ���
////	bool GetTop(SqStack S, SElemType& e);//��ջ��Ϊ�գ���e����ջ��Ԫ��
////	bool Push(SqStack& S, SElemType& e);//����Ԫ��e
////	bool Pop(SqStack& S, SElemType& e);//����ջ��Ԫ��e
////	bool StackTraverse(SqStack S, int(*visit)());
////	//��ջ����ջ�����ζ�ջ��ÿ��Ԫ�ص��ú���visit()��һ��visit()ʧ�������ʧ��
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
////bool Stack::StackEmpty(SqStack S)//ջΪ�շ���0����Ϊ�շ���1
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
////	if (!StackEmpty(S))//ջΪ��
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
//	printf("������һ������(����0��������)��\n");
//	while(1)
//	{
//		scanf("%d", &n);
//		if (!n)
//			break;
//		if (n > 0)
//			que.push(n);
//		else if (n < 0 && !que.empty())
//		{
//			printf("��ǰ��ͷԪ��Ϊ��%d\n", que.front());
//			que.pop();
//		}
//		else if (n < 0 && que.empty())
//		{
//			printf("��ǰ����Ԫ��Ϊ�ա�\n");
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
//		printf("����a��ֵ��");
//		scanf("%d", &a);
//		if (a > 0)
//		{
//			if ((qu->rear + 1) % QueueSize == qu->front)
//				printf("��������\n");
//			else
//			{
//				qu->rear = (qu->rear + 1) % QueueSize;
//				qu->data[qu->rear] = a;
//			}
//		}
//		if (a < 0)
//		{
//			if (qu->rear == qu->front)
//				printf("�����ѿ�\n");
//			else {
//				qu->front = (qu->front + 1) % QueueSize;
//				x = qu->data[qu->front];
//				printf("����Ԫ�أ�%d\n", x);
//			}
//
//		}
//
//	}
//
//}
