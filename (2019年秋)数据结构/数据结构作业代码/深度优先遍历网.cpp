//#include<bits/stdc++.h>
//using namespace std;
//typedef int InfoType;
//typedef int VertexType;
//typedef int Status;
//#define MAX_VERTEX_NUM 20
//#define MAX 100010
//bool visited[MAX];
//Status(*VisitFunc)(int v);//��������
//typedef struct ArcNode {
//	int adjvex;//�¸����λ��
//	struct ArcNode* nextarc;//ָ����һ���ߵ�ָ��
//	InfoType* info;//ָ��ñ������Ϣ��ָ��
//};
//typedef struct VNode {
//	VertexType data;//����
//	ArcNode* firstarc;//ָ��ö������ӵĵ�һ����
//}VNode,AdjList[MAX_VERTEX_NUM];
//typedef struct {
//	AdjList vertices;
//	int vexnum, arcnum;//ͼ�Ķ�����������
//	int kind;//ͼ�������־
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