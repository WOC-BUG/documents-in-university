//#include<bits/stdc++.h>
//using namespace std;
//typedef int Status;
//typedef int KeyTable;
//#define SUCCESS 1
//#define UNSUCCESS 0
//#define DUPLICATE -1
//#define NULLKEY 0
//int hashsize[] = { 997,1001 };
//typedef struct {
//	int key;//当前位置所存的关键码
//}ElemType;
//
//typedef struct {
//	ElemType* elem;//数据元素存储基址，动态分配数组
//	int count;//当前数据元素个数
//	int sizeindex;//hashsize[sizeindex]为当前容量
//}HashTable;//哈希表
//
//
//
//int Hash(KeyTable K)
//{
//
//}
//
//Status EQ(KeyTable K, KeyTable T)
//{
//
//}
//
//void collision(int& p, int& c)
//{
//
//}
//
//void RecreateHashTable(HashTable H)//重建哈希表
//{
//
//}
//
////在开放定址哈希表H中，查找关键码为K的元素
////若查找成功，用p表示元素在表中的位置，返回SUCCESS；否则，用p表示插入位置，并返回UNSUCCESS
////c用来计算冲突次数
//Status SearchHash(HashTable H, KeyTable K, int& p, int& c)
//{
//	p = Hash(K);//求得哈希地址
//	while (H.elem[p].key != NULLKEY && !EQ(K, H.elem[p].key))//求得哈希地址&&关键字不相等
//		collision(p, ++c);//求得下一探查地址
//	if (EQ(K, H.elem[p].key))//关键字相等，查找成功
//		return SUCCESS;
//	else
//		return UNSUCCESS;
//}
//
////查找不成功时插入e到开放定址哈希表H中，并返回SUCCESS
////若冲突次数过大，则重建哈希表
//Status InsertHash(HashTable& H, ElemType e)
//{
//	int p = 0, c = 0;
//	if (SearchHash(H, e.key, p, c))
//		return DUPLICATE;
//	else if (c < hashsize[H.sizeindex] / 2)//冲突，但冲突次数未达到上限
//	{
//		H.elem[p] = e;
//		++H.count;
//		return SUCCESS;
//	}
//	else//重建哈希表
//	{
//		RecreateHashTable(H);
//		return UNSUCCESS;
//	}
//}
//
//int main()
//{
//
//	return 0;
//}