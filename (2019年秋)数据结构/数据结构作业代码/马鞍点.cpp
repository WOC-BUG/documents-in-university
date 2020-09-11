//#pragma warning (disable: 4996)
//#include<stdio.h>
//#include <algorithm>
//using namespace std;
//const int maxn = 1e4 + 10;
//const int inf = 2e9 + 10;
//int n, m, a[maxn][maxn], row[maxn], col[maxn];//行最小值，列最大值
//int pos1[maxn], pos2[maxn];
//int main()
//{
//	fill(row, row + maxn, inf);
//	fill(col, col + maxn, 0);
//	printf("请输入矩阵是几行几列的？(不超过10的4次方)\n");
//	scanf("%d%d", &n, &m);
//	printf("请输入该矩阵\n");
//	for (int i = 1; i <= n; i++)
//	{
//		for (int j = 1; j <= m; j++)
//		{
//			scanf("%d", &a[i][j]);
//			if (row[i] > a[i][j])
//			{
//				row[i] = a[i][j];
//				pos1[i] = j;
//			}
//			if (col[j] < a[i][j])
//			{
//				col[j] = a[i][j];
//				pos2[j] = i;
//			}
//			//printf("row[%d]=%d,col[%d]=%d\n", i, row[i], j, col[j]);
//		}
//	}
//	for (int i = 1; i <= n; i++)
//	{
//		if (pos2[pos1[i]]==i)
//			printf("%d行%d列的马鞍点为：%d\n", i, pos1[i], a[i][pos1[i]]);
//	}
//	return 0;
//}