//#include<bits/stdc++.h>
//using namespace std;
//const int maxn = 1e5 + 10;
//int lena, lenb, lenc = 1, val;
////lena,lenb,lenc�ֱ�Ϊ���Ա�A��B��C�ĳ���,val����������Ա��Ԫ��ֵ
//class NODE
//{
//public:
//	int val;//ֵ
//	NODE* last;//ָ����һ���ڵ�
//}A[maxn], B[maxn], C[maxn];//��A��B�ϲ�Ϊ���Ա�C
//
//void ListInsert(NODE *N,int num,int val)//����Ԫ��
//{
//	N[num].val = val;
//	N[num].last = &N[num - 1];
//}
//
//void merge(NODE* A,int lena,NODE* B,int lenb)//�ϲ��������Ա�
//{
//	int i = 1, j = 1;
//	while(i <= lena && j <= lenb)//A��B���ǿ�ʱ����Ԫ�ؽ�С�Ĳ���C��
//	{
//		if (A[i].val <= B[j].val)
//			ListInsert(C, lenc++, A[i].val), i++;
//		else
//			ListInsert(C, lenc++, B[j].val), j++;
//	}
//	while (i <= lena)//����Aʣ��Ԫ��
//		ListInsert(C, lenc++, A[i].val), i++;
//	while (j <= lenb)//����Bʣ��Ԫ��
//		ListInsert(C, lenc++, B[j].val), j++;
//}
//
//int main()
//{
//	printf("���������Ա�A��Ԫ�ظ�����\n");
//	scanf("%d", &lena);
//	printf("������һ���ǵݼ���������Ա�A��Ԫ�أ�\n");
//	for (int i = 1; i <= lena; i++)//�������Ա�A��Ԫ��
//	{
//		scanf("%d", &val);
//		ListInsert(A, i, val);
//	}
//	printf("���������Ա�B��Ԫ�ظ�����\n");
//	scanf("%d", &lenb);
//	printf("������һ���ǵݼ���������Ա�B��Ԫ�أ�\n");
//	for (int i = 1; i <= lenb; i++)//�������Ա�B��Ԫ��
//	{
//		scanf("%d", &val);
//		ListInsert(B, i, val);
//	}
//	merge(A, lena, B, lenb);//�ϲ����Ա�A��B
//	printf("�ϲ�������Ա�Ϊ��\n");
//	for (int i = 1; i < lenc; i++)
//	{
//		printf("%d%c", C[i].val, i == (lenc - 1) ? '\n' : ' ');
//		//������Ա�C��Ԫ�أ��������һ��Ԫ�ػس�������ո�
//	}
//	return 0;
//}