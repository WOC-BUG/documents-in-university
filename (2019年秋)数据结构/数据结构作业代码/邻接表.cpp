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
//		dis[i] = INF;//��ʼ�� 
//	dis[1] = 0;
//	for (i = 1; i <= n; i++) {
//		tmp = INF;
//		for (j = 1; j <= n; j++) {
//			if (!vis[j] && tmp > dis[j]) {
//				tmp = dis[j];
//				k = j;
//			}//�ҳ���С����Ľڵ� 
//		}
//		vis[k] = 1;//�ѷ��ʵĽڵ������
//		for (j = 1; j <= n; j++) {
//			if (!vis[j] && dis[j] > mp[k][j])
//				dis[j] = mp[k][j];//������̾��� 
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
////typedef struct Edge//��
////{
////	int AdjVex;//�����ӵ��¸���
////	Edge* nexE;//ָ��������
////	int info;//�ߵ���Ϣ
////}Edge;
////
////typedef struct Node//����ʼ�ڵ�
////{
////	int data;//���ֵ
////	Edge* nexE;//���ӵĵ�һ����
////}Node, List[Vmax];
////
////typedef struct AdjGraph//�ڽӱ�
////{
////	Node n;//��ű�ͷ���
////	int Vnum, Enum;//����������
////	int type;//ͼ������
////};
////
//////int FirstAdjVex(AdjGraph g, int v)//v���ӵĵ�һ����
//////{
//////
//////}
//////
//////int NextAdjVex(AdjGraph g, int v, int w)//w���ӵ���һ����
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
