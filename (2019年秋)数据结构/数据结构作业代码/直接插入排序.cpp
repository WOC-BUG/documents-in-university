//#pragma warning(disable:4996)
//#include<bits/stdc++.h>
//using namespace std;
//void InsertSort(int a[],int len)//��������a�����鳤��n
//{
//	int j;
//	for (int i = 2; i <= len; i++)
//	{
//		a[0] = a[i];
//		j = i - 1;
//		for (j = i - 1; a[0] < a[j]; j--)
//		{
//			a[j + 1] = a[j];
//		}
//		a[j + 1] = a[0];
//	}
//}
//int a[105], n;
//int main()
//{
//	printf("�������鳤�ȣ�\n");
//	scanf("%d", &n);
//	printf("����δ����ǰ�����飺\n");
//	for (int i = 1; i <= n; i++)
//	{
//		scanf("%d", &a[i]);
//	}
//	InsertSort(a, n);
//	printf("��������������Ϊ��\n");
//	for (int i = 1; i <= n; i++)
//	{
//		printf("%d%c", a[i], i == n ? '\n' : ' ');
//	}
//	return 0;
//}