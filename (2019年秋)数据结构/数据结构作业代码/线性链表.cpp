//#pragma warning(disable:4996)//����VS���� scanf_s ����
//#include<bits/stdc++.h>//����ͷ�ļ�����Ҫ��vs��������
//using namespace std;
//const int maxn = 1e6 + 10;//��������LA��LB��Ԫ�ظ������Χ
//struct LIST
//{
//	int data;
//	LIST* next;
//}LA[maxn], LB[maxn], s[maxn];
//int lenA, lenB, val, num, cont;//����A��B�ĳ��ȣ�
//bool DeleteList(LIST* l, int i, int& e)//ɾ��Ԫ��
//{
//	LIST *p = l;
//	int j = 0;
//	while (p->next && (j < i))
//	{
//		p = p->next;
//		j++;
//	}
//	if (!(p->next) || (j > i ))//����
//		return 0;
//	LIST* q = p->next;
//	p->next = q->next;
//	e = q->data;
//	return 1;
//}
//bool InsertList(LIST* l, int i, int& e)//����Ԫ��
//{
//	LIST* p = l;
//	int j = 0;
//	while (p && (j < i - 1))
//	{
//		p = p->next;
//		j++;
//	}
//	if (!p || (j > i - 1))//����
//		return 0;
//	s[cont].data = e;
//	s[cont].next = p->next;
//	p->next = &s[cont];
//	cont++;
//	return 1;
//}
//void merge(LIST *tmpa,LIST *tmpb)//�ϲ���������
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
//	printf("���������Ա�A��Ԫ�ظ�����\n");
//	scanf("%d", &lenA);
//	printf("������һ���ǵݼ���������Ա�A��Ԫ�أ�\n");
//	LA[0].next = &LA[1];
//	for (int i = 1; i <= lenA; i++)//�������Ա�A��Ԫ��
//	{
//		scanf("%d", &val);
//		LA[i].data = val;
//		LA[i].next = &LA[i + 1];
//	}
//	LA[lenA].next = NULL;
//	printf("���������Ա�B��Ԫ�ظ�����\n");
//	scanf("%d", &lenB);
//	printf("������һ���ǵݼ���������Ա�B��Ԫ�أ�\n");
//	LB[0].next = &LB[1];
//	for (int i = 1; i <= lenB; i++)//�������Ա�B��Ԫ��
//	{
//		scanf("%d", &val);
//		LB[i].data = val;
//		LB[i].next = &LB[i + 1];
//	}
//	LB[lenB].next = NULL;
//	printf("������ɾ��A�еڼ���Ԫ�أ�\n");
//	scanf("%d", &val);
//	if (DeleteList(LA, val-1, num) == 1)
//	{
//		printf("ɾ���������Ϊ��\n");
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
//		printf("û�и�Ԫ�أ�\n");
//	}
//	printf("������Ҫ���뵽B�еڼ���Ԫ�غ�\n");
//	scanf("%d", &val);
//	printf("������Ҫ�����ֵ��\n");
//	scanf("%d", &num);
//	if (InsertList(LB, val+1, num) == 1)
//	{
//		printf("����������Ϊ��\n");
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
//		printf("����\n");
//	}
//	merge(LA, LB);//�ϲ���������
//	printf("�ϲ��������Ϊ��\n");
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