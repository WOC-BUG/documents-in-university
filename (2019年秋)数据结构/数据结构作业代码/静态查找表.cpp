//#pragma warning (disable:4996)
//#include<bits/stdc++.h>
//using namespace std;
//#define OK 1;
//#define NO 0;
//typedef int KeyType;
//
//typedef struct{
//	int num;//���
//	int key;//ֵ
//}ELemType;
//
//typedef struct {
//	ELemType* elem;//�洢�ռ��ַ
//	int length;//����
//}SSTable;//��̬���ұ�Static Search Table
//
////�ж�key1��key2�Ĵ�С��ϵ
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
////˳�����
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
////�۰���ҷǵݹ�
//int Search_Bin(SSTable ST, KeyType key)
//{
//	int low = 1, high = ST.length;
//	while (low <= high)
//	{
//		int mid = (low + high) >> 1;
//		int cmp = EQ(key, ST.elem[mid].key);
//		if (cmp == 1)
//			return mid;
//		else if (cmp == 2)//mid����Ԫ��С�ˣ�������
//			low = mid + 1;
//		else//mid����
//			high = mid - 1;
//	}
//	return 0;
//}
//
////�۰���ҵݹ��
//int Search_Bin2(SSTable ST, KeyType key,int low,int high)//��Ҫ�ҵ�������ǰ��ѯ����
//{
//	if (low > high)
//		return 0;
//	int mid = (low + high) >> 1;
//	int cmp = EQ(key, ST.elem[mid].key);
//	if (cmp == 1)
//		return mid;
//	if (cmp == 2)//key����
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
//		printf("���������г��ȣ���0�������룺\n");
//		scanf("%d", &s.length);
//		if (s.length == 0)
//			break;
//		s.elem = (ELemType*)malloc((s.length + 1) * sizeof(ELemType));//��elem����һ�οռ�
//		printf("������ǽ������У��м��ÿո������\n");
//		for (int i = 1; i <= s.length; i++)
//		{
//			scanf("%d", &s.elem[i].key);
//			s.elem[i].num = i;
//		}
//		while (1)
//		{
//			printf("������Ҫ���ҵ�������#�������룺\n");
//			char ch[10];
//			getchar();
//			scanf("%s", ch);
//			if (ch[0] == '#')
//				break;
//			key = atoi(ch);//char*��ʮ����int
//			//int location = Search_Seq(s, key);//˳�����
//			int location = Search_Bin(s, key);//���ַǵݹ鷨
//			//int location = Search_Bin2(s, key, 1, s.length);//���ֵݹ鷨
//			if (location)
//				printf("�����ڱ��ֵ�λ��Ϊ��%d\n", location);
//			else
//				printf("�����޸���\n");
//		}
//	}
//	return 0;
//}