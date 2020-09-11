//#pragma warning(disable:4996)
//#include<bits/stdc++.h>
//using namespace std;
//#define Vmax 100
//#define INF 1000000007
//int vis[Vmax];
//int n, m, dis[Vmax], mp[Vmax][Vmax];
//void Prim() {
//	int i, j, k, tmp, ans;
//	for (i = 1; i <= n; i++)
//		dis[i] = INF;//初始化 
//	dis[1] = 0;
//	for (i = 1; i <= n; i++) {
//		tmp = INF;
//		for (j = 1; j <= n; j++) {
//			if (!vis[j] && tmp > dis[j]) {
//				tmp = dis[j];
//				k = j;
//			}//找出最小距离的节点 
//		}
//		vis[k] = 1;//把访问的节点做标记
//		for (j = 1; j <= n; j++) {
//			if (!vis[j] && dis[j] > mp[k][j])
//				dis[j] = mp[k][j];//更新最短距离 
//		}
//	}
//}
//int main()
//{
//	scanf("%d%d", &n, &m);
//	fill(mp[0], mp[0] + Vmax * Vmax, INF);
//	while (m--)
//	{
//		int x, y, w;
//		scanf("%d%d%d", &x, &y, &w);
//		if (mp[x][y] > w)
//		{
//			mp[x][y] = w;
//			mp[y][x] = w;
//		}
//	}
//	Prim();
//	for (int i = 1; i <= n; i++)
//		printf("%d ", dis[i]);
//	printf("\n");
//	return 0;
//}
//
//
////typedef struct Edge//边
////{
////	int AdjVex;//边连接的下个点
////	Edge* nexE;//指向下条边
////	int info;//边的信息
////}Edge;
////
////typedef struct Node//存起始节点
////{
////	int data;//点的值
////	Edge* nexE;//连接的第一条边
////}Node, List[Vmax];
////
////typedef struct AdjGraph//邻接表
////{
////	Node n;//存放表头结点
////	int Vnum, Enum;//点数，边数
////	int type;//图的种类
////};
////
//////int FirstAdjVex(AdjGraph g, int v)//v连接的第一个点
//////{
//////
//////}
//////
//////int NextAdjVex(AdjGraph g, int v, int w)//w连接的下一个点
//////{
//////
//////}
////
////
////void DepthFirstSearch(AdjGraph g, int v)
////{
////	vis[v] = 1;
////	//for (int w = FirstAdjVex(g, v); w >= 0; w = NextAdjVex(g, v, w))
////	//{
////
////	//}
////}
////
////void TraverseGraph(AdjGraph g)
////{
////	for (int i = 0; i < g.Vnum; i++)
////		vis[i] = 0;
////	for (int i = 0; i < g.Vnum; i++)
////	{
////		if (!vis[i])
////			DepthFirstSearch(g, i);
////	}
////}
