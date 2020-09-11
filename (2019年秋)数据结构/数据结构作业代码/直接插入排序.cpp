//#pragma warning(disable:4996)
//#include<bits/stdc++.h>
//using namespace std;
//void InsertSort(int a[],int len)//待排数组a，数组长度n
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
//	printf("输入数组长度：\n");
//	scanf("%d", &n);
//	printf("输入未排序前的数组：\n");
//	for (int i = 1; i <= n; i++)
//	{
//		scanf("%d", &a[i]);
//	}
//	InsertSort(a, n);
//	printf("插入排序后的数组为：\n");
//	for (int i = 1; i <= n; i++)
//	{
//		printf("%d%c", a[i], i == n ? '\n' : ' ');
//	}
//	return 0;
//}