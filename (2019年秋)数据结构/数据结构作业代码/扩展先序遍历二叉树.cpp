//#pragma warning (disable:4996)
//#include<stdio.h>
//const int MAX_SIZE = 1e5 + 10;
//typedef char ElemType;
//#define OK 1
//#define NO 0
//#define ERROR -1
//
////�ڵ�
//typedef struct
//{
//	int level;//���ڲ���
//	int number;//�ڱ���ı��
//}NODE;
//
////˳������ṹ������
//typedef ElemType BinaryTree[MAX_SIZE];
//
////------------------------�������ĺ�������-------------------------------
//int qpow(int a, int b);//�����ݣ�a��b�η�
//int InitBiTree(BinaryTree& T);//�������
//int DestoryBiTree(BinaryTree& T);//������
//int CreateBiTree(BinaryTree& T, int definition);//����definition������
//int ClearBiTree(BinaryTree& T);//�����
//int BiTreeEmpty(BinaryTree T);//�ж����Ƿ����
//int BiTreeDepth(BinaryTree T);//�����������
//int Root(BinaryTree T,ElemType *e);//���ظ��ڵ㲢��ֵ��e
//ElemType Value(BinaryTree T, NODE cur_e);//����cur_e��ֵ
//int Assign(BinaryTree T, NODE cur_e, ElemType value);//value��ֵ��cur_e
//ElemType Parent(BinaryTree T, NODE cur_e);//����cur_e��˫��
//ElemType LeftChild(BinaryTree T, NODE cur_e);//����cur_e������
//ElemType RightCHild(BinaryTree T, NODE cur_e);//����cur_e���Һ���
//ElemType LeftSibling(BinaryTree T, NODE e);//����e�����ֵ�
//ElemType RightSibling(BinaryTree T, NODE e);//����e�����ֵ�
//void InsertChild(BinaryTree& T, int i, int j, BinaryTree& c);//����ǿ���cΪ����p��ָ�ڵ�ĵ�i������
//int DeleteChild(BinaryTree& T, int i);//ɾ��p��ָ��ĵ�i������
////����ĳ�ִ����T��ÿ���ڵ����Visit����
//int PreOrderTraverse(BinaryTree& T, int i);//ǰ�����
//int InOrderTraverse(BinaryTree& T, int i);//�������
//int PostOrderTraverse(BinaryTree& T, int i);//��������
//int LevelOrderTraverse(BinaryTree& T);//��������
//
//
////---------------------------------ʵ��---------------------------------
////������
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
////�������
//int InitBiTree(BinaryTree& T)
//{
//	for (int i = 1; i < MAX_SIZE; i++)
//	{
//		T[i] = '\0';
//	}
//	return OK;
//}
//
////ɾ��������
//int DestoryBiTree(BinaryTree& T)
//{
//	for (int i = 1; i < MAX_SIZE; i++)
//	{
//		T[i] = '\0';
//	}
//	return OK;
//}
//
////����������
//int CreateBiTree(BinaryTree& T, int definition)
//{
//	printf("������������ڵ��ֵ����'0'����սڵ㣬��'#'�������룬�ڵ���������%d\n", MAX_SIZE);
//	int i = 1;
//	ElemType e;
//	while (~scanf("%c", &e) && e!='#')
//	{
//		if (e == '0')
//		{
//			i++;
//			continue;
//		}
//		//������ڵ�Ϊ�գ����Ǻ��ӽڵ���ֵ���򱨴�
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
////���������������Ĳ���
//int BiTreeDepth(BinaryTree T)
//{
//	int i,depth;
//	for (i = MAX_SIZE - 1; i > 0; i--)//�����ҵ���һ���ǿսڵ�
//	{
//		if (T[i] != '\0')
//			break;
//	}
//	for (depth = 1;; depth++)
//	{
//		//�����i����һ��ķ�Χ��
//		if ((qpow(2, depth - 1) <= i) && ((qpow(2, depth) - 1) >= i))
//		{
//			break;
//		}
//	}
//	return depth;
//}
//
////���ظ��ڵ�
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
////��ȡe��ֵ
//ElemType Value(BinaryTree T, NODE cur_e)
//{
//	int i = qpow(2, cur_e.level - 1) + cur_e.number - 1;//��ȡ�����еı��
//	return T[i];
//}
//
////value��ֵ��cur_e
//int Assign(BinaryTree T, NODE cur_e, ElemType value)
//{
//	int i = qpow(2, cur_e.level - 1) + cur_e.number - 1;//��ȡ�����еı��
//	if ((i % 2 == 0 && T[i / 2] == '\0') || (i % 2 && T[(i - 1) / 2] == '\0'))
//		return ERROR;
//	T[i] = value;//��ֵ
//	return OK;
//}
//
////����cur_e��˫��
//ElemType Parent(BinaryTree T, NODE cur_e)
//{
//	int i = qpow(2, cur_e.level - 1) + cur_e.number - 1;//��ȡ�����еı��
//	return T[i / 2];
//}
//
//ElemType LeftChild(BinaryTree T, NODE cur_e)//����cur_e������
//{
//	int i = qpow(2, cur_e.level - 1) + cur_e.number - 1;//��ȡ�����еı��
//	return T[i * 2];
//}
//
//ElemType RightCHild(BinaryTree T, NODE cur_e)//����cur_e���Һ���
//{
//	int i = qpow(2, cur_e.level - 1) + cur_e.number - 1;//��ȡ�����еı��
//	return T[i * 2 + 1];
//}
//
//ElemType LeftSibling(BinaryTree T, NODE cur_e)//����cur_e�����ֵ�
//{
//	int i = qpow(2, cur_e.level - 1) + cur_e.number - 1;//��ȡ�����еı��
//	return T[i - 1];
//}
//
//ElemType RightSibling(BinaryTree T, NODE cur_e)//����cur_e�����ֵ�
//{
//	int i = qpow(2, cur_e.level - 1) + cur_e.number - 1;//��ȡ�����еı��
//	return T[i + 1];
//}
//
////c�����뵽T����i�ڵ�
//void InsertChild(BinaryTree& T, int i, int j, BinaryTree& c)
//{
//	if (c[j * 2] != '\0')//��������Ϊ��
//	{
//		InsertChild(T, i << 1, j << 1, c);
//	}
//	if (c[j * 2 + 1] != '\0')//��������Ϊ��
//	{
//		InsertChild(T, i << 1 | 1, j << 1 | 1, c);
//	}
//	T[i] = c[j];//����������Ϊ����˵������Ҷ�ӽڵ�
//	c[j] = '\0';
//}
//
//int DeleteChild(BinaryTree& T, int i)//ɾ��T�ĵ�i������
//{
//	if (T[i << 1] != '\0')//��������Ϊ��
//	{
//		return DeleteChild(T, i << 1);
//	}
//	if (T[i << 1 | 1] != '\0')//��������Ϊ��
//	{
//		return DeleteChild(T, i << 1 | 1);
//	}
//	T[i] = '\0';
//	return OK;
//}
//
////-----------------------------����------------------------------
//
//int PreOrderTraverse(BinaryTree& T,int i)//ǰ�����
//{
//	printf("%c", T[i] == '\0' ? '.' : T[i]);
//	if (T[i] == '\0')//��Ҷ�ӽڵ�
//	{
//		return OK;
//	}
//	PreOrderTraverse(T, i << 1);
//	PreOrderTraverse(T, i << 1 | 1);
//	return OK;
//}
//
//int InOrderTraverse(BinaryTree& T, int i)//�������
//{
//	if (T[i << 1] == '\0' && T[i << 1 | 1] == '\0')//��Ҷ�ӽڵ�
//	{
//		printf("%c", T[i]);
//		return OK;
//	}
//	InOrderTraverse(T, i << 1);
//	printf("%c", T[i]);
//	InOrderTraverse(T, i << 1 | 1);
//}
//
//int PostOrderTraverse(BinaryTree& T, int i)//��������
//{
//	if (T[i << 1] == '\0' && T[i << 1 | 1] == '\0')//��Ҷ�ӽڵ�
//	{
//		printf("%c", T[i]);
//		return OK;
//	}
//	PostOrderTraverse(T, i << 1);
//	PostOrderTraverse(T, i << 1 | 1);
//	printf("%c", T[i]);
//}
//
//int LevelOrderTraverse(BinaryTree& T)//��������
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
//	int definition = 4;//�������
//	ClearBiTree(T);
//	CreateBiTree(T, definition);
//	printf("���������\n");
//	PreOrderTraverse(T, 1);
//	printf("\n");
//	return 0;
//}
//
///*
//ͼһ��
//1234005060000070000000000000008#
//123456700000000#
//ͼ����
//gcia00j0b00000h000000000000000d#
//gckaejo00d00000#
//*/