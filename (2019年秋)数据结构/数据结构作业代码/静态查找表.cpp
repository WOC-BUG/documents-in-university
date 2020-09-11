//#pragma warning (disable:4996)
//#include<bits/stdc++.h>
//using namespace std;
//#define OK 1;
//#define NO 0;
//typedef int KeyType;
//
//typedef struct{
//	int num;//编号
//	int key;//值
//}ELemType;
//
//typedef struct {
//	ELemType* elem;//存储空间基址
//	int length;//表长度
//}SSTable;//静态查找表Static Search Table
//
////判断key1和key2的大小关系
//int EQ(int key1,int key2)
//{
//	if (key1 == key2)
//		return 1;
//	else if (key1 > key2)
//		return 2;
//	else
//		return 3;
//}
//
////顺序查找
//int Search_Seq(SSTable ST, KeyType key)
//{
//	ST.elem[0].key = key;
//	int i = ST.length;
//	while(i--)
//	{
//		if (EQ(ST.elem[i].key, key) == 1)
//			break;
//	}
//	return i;
//}
//
////折半查找非递归
//int Search_Bin(SSTable ST, KeyType key)
//{
//	int low = 1, high = ST.length;
//	while (low <= high)
//	{
//		int mid = (low + high) >> 1;
//		int cmp = EQ(key, ST.elem[mid].key);
//		if (cmp == 1)
//			return mid;
//		else if (cmp == 2)//mid所在元素小了，往右找
//			low = mid + 1;
//		else//mid大了
//			high = mid - 1;
//	}
//	return 0;
//}
//
////折半查找递归版
//int Search_Bin2(SSTable ST, KeyType key,int low,int high)//表，要找的数，当前查询区间
//{
//	if (low > high)
//		return 0;
//	int mid = (low + high) >> 1;
//	int cmp = EQ(key, ST.elem[mid].key);
//	if (cmp == 1)
//		return mid;
//	if (cmp == 2)//key大了
//		return Search_Bin2(ST, key, mid + 1, high);
//	else
//		return Search_Bin2(ST, key, low, mid - 1);
//}
//
//int main()
//{
//	while (1)
//	{
//		SSTable s;
//		int key;
//		printf("请输入序列长度，以0结束输入：\n");
//		scanf("%d", &s.length);
//		if (s.length == 0)
//			break;
//		s.elem = (ELemType*)malloc((s.length + 1) * sizeof(ELemType));//给elem分配一段空间
//		printf("请输入非降序序列，中间用空格隔开。\n");
//		for (int i = 1; i <= s.length; i++)
//		{
//			scanf("%d", &s.elem[i].key);
//			s.elem[i].num = i;
//		}
//		while (1)
//		{
//			printf("请输入要查找的数，以#结束输入：\n");
//			char ch[10];
//			getchar();
//			scanf("%s", ch);
//			if (ch[0] == '#')
//				break;
//			key = atoi(ch);//char*变十进制int
//			//int location = Search_Seq(s, key);//顺序查找
//			int location = Search_Bin(s, key);//二分非递归法
//			//int location = Search_Bin2(s, key, 1, s.length);//二分递归法
//			if (location)
//				printf("该数在表种的位置为：%d\n", location);
//			else
//				printf("表中无该数\n");
//		}
//	}
//	return 0;
//}