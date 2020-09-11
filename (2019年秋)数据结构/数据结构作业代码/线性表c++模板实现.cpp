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
//	T GetElem(int num, T& e);//取L中的第num个元素赋值给e
//	T PriorElem(T num, T& e);//取L中num的前一个元素赋值给e
//	T NextElem(T num, T& e);//取L中num的后一个元素赋值给e
//	bool ListInsert(int i, T e);//在L的第i个位置插入新的数据e，L的长度加一
//	bool ListDelete(int i, T& e);//删除L的第i个元素，并用e返回其值，L的长度减一
//	void PrintList();//打印链表
//	void MergeList(List& l);//合并链表
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
//	//cout << "已析构" << endl;
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
//	if (this->len)//链表不为空
//		return true;
//	else
//		return false;
//}
//
//template<class T>
//T List<T>::GetElem(int num, T& e)//取L中的第num个元素赋值给e
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
//T List<T>:: PriorElem(T num, T& e)//取L中num的前一个元素赋值给e
//{
//	Node<T>* p = first->next;
//	if (p->data == num)//第一个数没有前驱
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
//T List<T>:: NextElem(T num, T& e)//取L中num的后一个元素赋值给e
//{
//	Node<T>* p = first->next;
//	if (p->next == NULL)//最后一个数没有后继
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
//bool List<T>:: ListInsert(int i, T e)//在L的第i个位置插入新的数据e，L的长度加一
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
//bool List<T>::ListDelete(int i, T& e)//删除L的第i个元素，并用e返回其值，L的长度减一
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
//void List<T>::PrintList()//输出链表元素
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
//void List<T>:: MergeList(List& Lb)//合并链表a与b
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
//	cout << "输入10个数构建链表a：" << endl;
//	for (int i = 0; i <= 9; i++)
//	{
//		cin >> a[i];
//	}
//	List<double> La = List<double>(a, 10);
//	La.ListLength();
//	cout << "输入10个数构建链表b：" << endl;
//	for (int i = 0; i <= 9; i++)
//	{
//		cin>>b[i];
//	}
//	List<double> Lb = List<double>(b, 10);
//	Lb.ListLength();
//	cout << "请输入向a中第几个元素，添加的元素值为多少，中间用空格隔开,输入-1,-1结束输入：" << endl;
//	int i;
//	double num;
//	while (cin>>i>>num)
//	{
//		if (i == -1 && num == -1)
//			break;
//		La.ListInsert(i, num);
//		cout << "添加后的链表a为：" << endl;
//		La.PrintList();
//	}
//	cout << "请输入要在b中删除第几个元素，以-1结束输入：" << endl;
//	while (cin>>i && i != -1)
//	{
//		Lb.ListDelete(i, num);
//		cout << "删除的元素为：" << num << endl;
//		cout << "删除后的链表b为：" << endl;
//		Lb.PrintList();
//	}
//	La.MergeList(Lb);//Lb合并到La中
//	La.PrintList();//打印合并后的La
//	return 0;
//}