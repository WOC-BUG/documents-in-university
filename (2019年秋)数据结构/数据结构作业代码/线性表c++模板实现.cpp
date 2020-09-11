//#pragma warning(disable:4996)
//#include<iostream>
//using namespace std;
//template<class T> struct Node
//{
//	T data;
//	Node *next;
//};
//template<class T> class List
//{
//public:
//	List();
//	~List();
//	List(T a[], int n);
//	bool ListEmpty();
//	int ListLength();
//	T GetElem(int num, T& e);//ȡL�еĵ�num��Ԫ�ظ�ֵ��e
//	T PriorElem(T num, T& e);//ȡL��num��ǰһ��Ԫ�ظ�ֵ��e
//	T NextElem(T num, T& e);//ȡL��num�ĺ�һ��Ԫ�ظ�ֵ��e
//	bool ListInsert(int i, T e);//��L�ĵ�i��λ�ò����µ�����e��L�ĳ��ȼ�һ
//	bool ListDelete(int i, T& e);//ɾ��L�ĵ�i��Ԫ�أ�����e������ֵ��L�ĳ��ȼ�һ
//	void PrintList();//��ӡ����
//	void MergeList(List& l);//�ϲ�����
//private:
//	Node<T>* first;
//	int len;
//};
//
//template<class T>
//List<T>::List()
//{
//	first = new Node<T>;
//	first->next = NULL;
//}
//
//template<class T>
//List<T>::List(T a[], int n) :len(0)
//{
//	first = new Node<T>;
//	Node<T>* r = first;
//	for (int i = 0; i < n; i++)
//	{
//		Node<T>* s = new Node<T>;
//		s->data = a[i];
//		r->next = s;
//		r = s;
//	}
//	r->next = NULL;
//}
//
//template<class T>
//List<T>::~List()
//{
//	//cout << "������" << endl;
//	while (first != NULL)
//	{
//		Node<T>* p = first;
//		first = first->next;
//		delete p;
//	}
//}
//
//template<class T>
//int List<T>:: ListLength()
//{
//	Node<T>* p = first->next;
//	while (p != NULL)
//	{
//		this->len++;
//		p = p->next;
//	}
//	return this->len;
//}
//
//template<class T>
//bool List<T>:: ListEmpty()
//{
//	if (this->len)//����Ϊ��
//		return true;
//	else
//		return false;
//}
//
//template<class T>
//T List<T>::GetElem(int num, T& e)//ȡL�еĵ�num��Ԫ�ظ�ֵ��e
//{
//	Node<T>* p = first->next;
//	int j = 1;
//	while (p && j < num)
//	{
//		p = p->next;
//		j++;
//	}
//	if (!p || j > num)
//		return -1;
//	e = p->data;
//	return e;
//}
//
//template<class T>
//T List<T>:: PriorElem(T num, T& e)//ȡL��num��ǰһ��Ԫ�ظ�ֵ��e
//{
//	Node<T>* p = first->next;
//	if (p->data == num)//��һ����û��ǰ��
//		return -1;
//	while (p->next->data != num)
//	{
//		p = p->next;
//	}
//	e = p->data;
//	return e;
//}
//
//template<class T>
//T List<T>:: NextElem(T num, T& e)//ȡL��num�ĺ�һ��Ԫ�ظ�ֵ��e
//{
//	Node<T>* p = first->next;
//	if (p->next == NULL)//���һ����û�к��
//		return -1;
//	while (p->data != num)
//	{
//		p = p->next;
//	}
//	e = p->next->data;
//	return e;
//}
//
//template<class T>
//bool List<T>:: ListInsert(int i, T e)//��L�ĵ�i��λ�ò����µ�����e��L�ĳ��ȼ�һ
//{
//	if (this->len < i-1)
//		return false;
//	Node<T>* p = first;
//	for (int k = 1; k < i; k++)
//	{
//		p = p->next;
//		//cout << k << " " << p->data << endl;
//	}
//	Node<T>* s = new Node<T>;
//	s->data = e;
//	s->next = p->next;
//	p->next = s;
//	this->len++;
//	return true;
//}
//
//template<class T>
//bool List<T>::ListDelete(int i, T& e)//ɾ��L�ĵ�i��Ԫ�أ�����e������ֵ��L�ĳ��ȼ�һ
//{
//	if (this->len < i)
//		return false;
//	Node<T>* p = first;
//	for (int k = 1; k < i; k++)
//	{
//		p = p->next;
//	}
//	e = p->next->data;
//	p->next = p->next->next;
//	free(p->next);
//	this->len--;
//	return true;
//}
//
//template<class T>
//void List<T>::PrintList()//�������Ԫ��
//{
//	Node<T>* p = first->next;
//	//cout << "len=" << len << endl;
//	for (int k = 1; p != NULL; k++)
//	{
//		cout << p->data << " ";
//		p = p->next;
//	}
//	cout << endl;
//}
//
//template<typename T>
//void List<T>:: MergeList(List& Lb)//�ϲ�����a��b
//{
//	Node<T>* pb = Lb.first->next;
//	for (int i = 1; i <= Lb.len; i++)
//	{
//		Node<T>* pa = first->next;
//		int flag = 1;
//		for (int j = 1; pa != NULL; pa = pa->next, j++)
//		{
//			if (pa->data == pb->data)
//			{
//				flag = 0;
//				break;
//			}
//		}
//		if (flag)
//			ListInsert(len+1, pb->data);
//		pb = pb->next;
//	}
//}
//
//int main()
//{
//	double a[505],b[505];
//	cout << "����10������������a��" << endl;
//	for (int i = 0; i <= 9; i++)
//	{
//		cin >> a[i];
//	}
//	List<double> La = List<double>(a, 10);
//	La.ListLength();
//	cout << "����10������������b��" << endl;
//	for (int i = 0; i <= 9; i++)
//	{
//		cin>>b[i];
//	}
//	List<double> Lb = List<double>(b, 10);
//	Lb.ListLength();
//	cout << "��������a�еڼ���Ԫ�أ���ӵ�Ԫ��ֵΪ���٣��м��ÿո����,����-1,-1�������룺" << endl;
//	int i;
//	double num;
//	while (cin>>i>>num)
//	{
//		if (i == -1 && num == -1)
//			break;
//		La.ListInsert(i, num);
//		cout << "��Ӻ������aΪ��" << endl;
//		La.PrintList();
//	}
//	cout << "������Ҫ��b��ɾ���ڼ���Ԫ�أ���-1�������룺" << endl;
//	while (cin>>i && i != -1)
//	{
//		Lb.ListDelete(i, num);
//		cout << "ɾ����Ԫ��Ϊ��" << num << endl;
//		cout << "ɾ���������bΪ��" << endl;
//		Lb.PrintList();
//	}
//	La.MergeList(Lb);//Lb�ϲ���La��
//	La.PrintList();//��ӡ�ϲ����La
//	return 0;
//}