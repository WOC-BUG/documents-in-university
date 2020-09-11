//#include<bits/stdc++.h>
//using namespace std;
//typedef int InfoType;
//typedef int VertexType;
//typedef int Status;
//#define MAX_VERTEX_NUM 20
//#define MAX 100010
//bool visited[MAX];
//Status(*VisitFunc)(int v);//函数变量
//typedef struct ArcNode {
//	int adjvex;//下个点的位置
//	struct ArcNode* nextarc;//指向下一条边的指针
//	InfoType* info;//指向该边相关信息的指针
//};
//typedef struct VNode {
//	VertexType data;//顶点
//	ArcNode* firstarc;//指向该顶点连接的第一条边
//}VNode,AdjList[MAX_VERTEX_NUM];
//typedef struct {
//	AdjList vertices;
//	int vexnum, arcnum;//图的顶点数，边数
//	int kind;//图的种类标志
//}ALGraph;
//
//int FirstAdjVex(ALGraph G, int v)
//{
//
//}
//
//
//int NextAdjVex(ALGraph G,int v,int w)
//{
//
//}
//
//void DFS(ALGraph G,int v)
//{
//	visited[v] = 1;
//	int w;
//	for (w = FirstAdjVex(G, v) ; w > 0; w = NextAdjVex(G, v, w))
//	{
//		if (!visited[w])
//			DFS(G, w);
//	}
//}
//
//void DFSTraverse(ALGraph G, Status(*Visit)(int v))
//{
//	VisitFunc = Visit;
//	int v;
//	for (v = 0; v < G.vexnum; ++v)
//		visited[v] = 0;
//	for (v = 0; v < G.vexnum; ++v)
//		if (!visited[v])
//			DFS(G, v);
//}
//
//int main()
//{
//
//	return 0;
//}