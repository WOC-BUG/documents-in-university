//#pragma warning (disable:4996)
//#include<stdio.h>
//const int MAX_SIZE = 1e5 + 10;
//typedef char ElemType;
//#define OK 1
//#define NO 0
//#define ERROR -1
//
////节点
//typedef struct
//{
//	int level;//所在层数
//	int number;//在本层的编号
//}NODE;
//
////顺序存数结构二叉树
//typedef ElemType BinaryTree[MAX_SIZE];
//
////------------------------二叉树的函数声明-------------------------------
//int qpow(int a, int b);//快速幂，a的b次方
//int InitBiTree(BinaryTree& T);//构造空树
//int DestoryBiTree(BinaryTree& T);//销毁树
//int CreateBiTree(BinaryTree& T, int definition);//按照definition构造树
//int ClearBiTree(BinaryTree& T);//清空树
//int BiTreeEmpty(BinaryTree T);//判断树是否存在
//int BiTreeDepth(BinaryTree T);//返回树的深度
//int Root(BinaryTree T,ElemType *e);//返回根节点并赋值给e
//ElemType Value(BinaryTree T, NODE cur_e);//返回cur_e的值
//int Assign(BinaryTree T, NODE cur_e, ElemType value);//value赋值给cur_e
//ElemType Parent(BinaryTree T, NODE cur_e);//返回cur_e的双亲
//ElemType LeftChild(BinaryTree T, NODE cur_e);//返回cur_e的左孩子
//ElemType RightCHild(BinaryTree T, NODE cur_e);//返回cur_e的右孩子
//ElemType LeftSibling(BinaryTree T, NODE e);//返回e的左兄弟
//ElemType RightSibling(BinaryTree T, NODE e);//返回e的右兄弟
//void InsertChild(BinaryTree& T, int i, int j, BinaryTree& c);//插入非空树c为树中p所指节点的第i个子树
//int DeleteChild(BinaryTree& T, int i);//删除p所指向的第i棵子树
////按照某种次序对T的每个节点调用Visit函数
//int PreOrderTraverse(BinaryTree& T, int i);//前序遍历
//int InOrderTraverse(BinaryTree& T, int i);//中序遍历
//int PostOrderTraverse(BinaryTree& T, int i);//后续遍历
//int LevelOrderTraverse(BinaryTree& T);//层续遍历
//
//
////---------------------------------实现---------------------------------
////快速幂
//int qpow(int a, int b)
//{
//	int sum = 1;
//	while (b)
//	{
//		if (b & 1)
//			sum *= a;
//		a *= a;
//		b >>= 1;
//	}
//	return sum;
//}
//
////构造空树
//int InitBiTree(BinaryTree& T)
//{
//	for (int i = 1; i < MAX_SIZE; i++)
//	{
//		T[i] = '\0';
//	}
//	return OK;
//}
//
////删除二叉树
//int DestoryBiTree(BinaryTree& T)
//{
//	for (int i = 1; i < MAX_SIZE; i++)
//	{
//		T[i] = '\0';
//	}
//	return OK;
//}
//
////创建二叉树
//int CreateBiTree(BinaryTree& T, int definition)
//{
//	printf("请输入二叉树节点的值，以'0'代表空节点，以'#'结束输入，节点数不超过%d\n", MAX_SIZE);
//	int i = 1;
//	ElemType e;
//	while (~scanf("%c", &e) && e!='#')
//	{
//		if (e == '0')
//		{
//			i++;
//			continue;
//		}
//		//如果父节点为空，但是孩子节点有值，则报错
//		if ((i % 2 == 0 && T[i / 2] == '\0') || (i % 2 && T[(i - 1) / 2] == '\0'))
//			return ERROR;
//		T[i++] = e;
//	}
//	return OK;
//}
//
//int ClearBiTree(BinaryTree& T)
//{
//	for (int i = 1; i < MAX_SIZE; i++)
//	{
//		T[i] = '\0';
//	}
//	return OK;
//}
//
//int BiTreeEmpty(BinaryTree T)
//{
//	if (T[1] == '\0')
//		return OK;
//	else
//		return NO;
//}
//
////返回所建二叉树的层数
//int BiTreeDepth(BinaryTree T)
//{
//	int i,depth;
//	for (i = MAX_SIZE - 1; i > 0; i--)//倒着找到第一个非空节点
//	{
//		if (T[i] != '\0')
//			break;
//	}
//	for (depth = 1;; depth++)
//	{
//		//若序号i在这一层的范围内
//		if ((qpow(2, depth - 1) <= i) && ((qpow(2, depth) - 1) >= i))
//		{
//			break;
//		}
//	}
//	return depth;
//}
//
////返回根节点
//int Root(BinaryTree T,ElemType *e)
//{
//	if (T[1] == '\0')
//		return NO;
//	else
//	{
//		*e = T[1];
//		return OK;
//	}
//}
//
////获取e的值
//ElemType Value(BinaryTree T, NODE cur_e)
//{
//	int i = qpow(2, cur_e.level - 1) + cur_e.number - 1;//获取在树中的编号
//	return T[i];
//}
//
////value赋值给cur_e
//int Assign(BinaryTree T, NODE cur_e, ElemType value)
//{
//	int i = qpow(2, cur_e.level - 1) + cur_e.number - 1;//获取在树中的编号
//	if ((i % 2 == 0 && T[i / 2] == '\0') || (i % 2 && T[(i - 1) / 2] == '\0'))
//		return ERROR;
//	T[i] = value;//赋值
//	return OK;
//}
//
////返回cur_e的双亲
//ElemType Parent(BinaryTree T, NODE cur_e)
//{
//	int i = qpow(2, cur_e.level - 1) + cur_e.number - 1;//获取在树中的编号
//	return T[i / 2];
//}
//
//ElemType LeftChild(BinaryTree T, NODE cur_e)//返回cur_e的左孩子
//{
//	int i = qpow(2, cur_e.level - 1) + cur_e.number - 1;//获取在树中的编号
//	return T[i * 2];
//}
//
//ElemType RightCHild(BinaryTree T, NODE cur_e)//返回cur_e的右孩子
//{
//	int i = qpow(2, cur_e.level - 1) + cur_e.number - 1;//获取在树中的编号
//	return T[i * 2 + 1];
//}
//
//ElemType LeftSibling(BinaryTree T, NODE cur_e)//返回cur_e的左兄弟
//{
//	int i = qpow(2, cur_e.level - 1) + cur_e.number - 1;//获取在树中的编号
//	return T[i - 1];
//}
//
//ElemType RightSibling(BinaryTree T, NODE cur_e)//返回cur_e的右兄弟
//{
//	int i = qpow(2, cur_e.level - 1) + cur_e.number - 1;//获取在树中的编号
//	return T[i + 1];
//}
//
////c树插入到T树的i节点
//void InsertChild(BinaryTree& T, int i, int j, BinaryTree& c)
//{
//	if (c[j * 2] != '\0')//左子树不为空
//	{
//		InsertChild(T, i << 1, j << 1, c);
//	}
//	if (c[j * 2 + 1] != '\0')//右子树不为空
//	{
//		InsertChild(T, i << 1 | 1, j << 1 | 1, c);
//	}
//	T[i] = c[j];//左右子树都为空则说明到达叶子节点
//	c[j] = '\0';
//}
//
//int DeleteChild(BinaryTree& T, int i)//删除T的第i棵子树
//{
//	if (T[i << 1] != '\0')//左子树不为空
//	{
//		return DeleteChild(T, i << 1);
//	}
//	if (T[i << 1 | 1] != '\0')//右子树不为空
//	{
//		return DeleteChild(T, i << 1 | 1);
//	}
//	T[i] = '\0';
//	return OK;
//}
//
////-----------------------------遍历------------------------------
//
//int PreOrderTraverse(BinaryTree& T,int i)//前序遍历
//{
//	printf("%c", T[i] == '\0' ? '.' : T[i]);
//	if (T[i] == '\0')//到叶子节点
//	{
//		return OK;
//	}
//	PreOrderTraverse(T, i << 1);
//	PreOrderTraverse(T, i << 1 | 1);
//	return OK;
//}
//
//int InOrderTraverse(BinaryTree& T, int i)//中序遍历
//{
//	if (T[i << 1] == '\0' && T[i << 1 | 1] == '\0')//到叶子节点
//	{
//		printf("%c", T[i]);
//		return OK;
//	}
//	InOrderTraverse(T, i << 1);
//	printf("%c", T[i]);
//	InOrderTraverse(T, i << 1 | 1);
//}
//
//int PostOrderTraverse(BinaryTree& T, int i)//后续遍历
//{
//	if (T[i << 1] == '\0' && T[i << 1 | 1] == '\0')//到叶子节点
//	{
//		printf("%c", T[i]);
//		return OK;
//	}
//	PostOrderTraverse(T, i << 1);
//	PostOrderTraverse(T, i << 1 | 1);
//	printf("%c", T[i]);
//}
//
//int LevelOrderTraverse(BinaryTree& T)//层续遍历
//{
//	int j;
//	for (j = MAX_SIZE - 1; j > 0; j--)
//	{
//		if (T[j] != '\0')
//			break;
//	}
//	for (int i = 1; i <= j; i++)
//	{
//		if (T[i] == '\0'&&T[i>>1]=='\0')
//		{
//			printf(".");
//			continue;
//		}
//		printf("%c", T[i]);
//	}
//	printf("\n");
//	return OK;
//}
//
//int main()
//{
//	BinaryTree T;
//	int definition = 4;//层序遍历
//	ClearBiTree(T);
//	CreateBiTree(T, definition);
//	printf("先序遍历：\n");
//	PreOrderTraverse(T, 1);
//	printf("\n");
//	return 0;
//}
//
///*
//图一：
//1234005060000070000000000000008#
//123456700000000#
//图二：
//gcia00j0b00000h000000000000000d#
//gckaejo00d00000#
//*/