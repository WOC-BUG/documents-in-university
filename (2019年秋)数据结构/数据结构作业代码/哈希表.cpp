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
//	int key;//��ǰλ������Ĺؼ���
//}ElemType;
//
//typedef struct {
//	ElemType* elem;//����Ԫ�ش洢��ַ����̬��������
//	int count;//��ǰ����Ԫ�ظ���
//	int sizeindex;//hashsize[sizeindex]Ϊ��ǰ����
//}HashTable;//��ϣ��
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
//void RecreateHashTable(HashTable H)//�ؽ���ϣ��
//{
//
//}
//
////�ڿ��Ŷ�ַ��ϣ��H�У����ҹؼ���ΪK��Ԫ��
////�����ҳɹ�����p��ʾԪ���ڱ��е�λ�ã�����SUCCESS��������p��ʾ����λ�ã�������UNSUCCESS
////c���������ͻ����
//Status SearchHash(HashTable H, KeyTable K, int& p, int& c)
//{
//	p = Hash(K);//��ù�ϣ��ַ
//	while (H.elem[p].key != NULLKEY && !EQ(K, H.elem[p].key))//��ù�ϣ��ַ&&�ؼ��ֲ����
//		collision(p, ++c);//�����һ̽���ַ
//	if (EQ(K, H.elem[p].key))//�ؼ�����ȣ����ҳɹ�
//		return SUCCESS;
//	else
//		return UNSUCCESS;
//}
//
////���Ҳ��ɹ�ʱ����e�����Ŷ�ַ��ϣ��H�У�������SUCCESS
////����ͻ�����������ؽ���ϣ��
//Status InsertHash(HashTable& H, ElemType e)
//{
//	int p = 0, c = 0;
//	if (SearchHash(H, e.key, p, c))
//		return DUPLICATE;
//	else if (c < hashsize[H.sizeindex] / 2)//��ͻ������ͻ����δ�ﵽ����
//	{
//		H.elem[p] = e;
//		++H.count;
//		return SUCCESS;
//	}
//	else//�ؽ���ϣ��
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