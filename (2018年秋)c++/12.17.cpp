#pragma warning(disable: 4996)
#include <iostream>
#include <string.h>
using namespace std;
class Worker
{
private:
	unsigned int id;
	char name[11];
	float salary;
	int level;//1~20 ÿ������200Ԫ
	const float MinSalary;
	static float total;
public:
	Worker():MinSalary(2000)//Ĭ�Ϲ��캯��
	{
		id = 0; strcpy(name, " "); salary = MinSalary;
		level = 1;
	}
	Worker(int id0, char *name0, float salary0, int level0)//���������캯��
	{
		id = id0; 
		strcpy(name, name0);
		salary = salary0;
		level = level0;
	}
	void setName(char *name1)//����ְ������
	{
		strcpy(name, name1);
	}
	void infoList()//���ְ����Ϣ
	{
		cout << "ְ���ţ�" << id << endl << "������" << name << endl
			<< "���ʣ�" << salary << endl << "�����ȼ���" << level << endl;
	}
	void setLevel(int level1)//�޸ļ����ȼ���ÿ����һ�������ȼ�����200Ԫ
	{
		int temp;
		temp = level1 - level;
		level = level1;
		salary += temp * 200;
	}

};
int main()
{
	Worker w = Worker(0, "ha", 0, 1);
	system("pause");
	return 0;
}





//#include<iostream>
//#include<string>
//using namespace std;
//class Date
//{
//private:
//	int year, month, day;
//public:
//	Date(int y = 1980, int m = 1, int d = 1)
//	{
//		setDate(y, m, d);
//	}
//	void Print() const
//	{
//		cout << year << "/" << month << "/" << day << endl;
//	}
//	void setDate(int y, int m, int d)
//	{
//		year = y;
//		month = m;
//		day = d;
//	}
//};
//class Person
//{
//	int id;
//	char name[20];
//	Date birth;
//public:
//	Person(int id, char *name, Date& birth)
//	{
//		Set(id, name, birth);
//	}
//	Person(const Person &p)
//	{
//		//if (this->id != p.id && this->name != p.name && (this->birth != p.birth))
//		if(this != &p)
//			Set(p.id, p.name, p.birth);
//	}
//	void Set(const int id, const char *name, const Date& birth)
//	{
//		this->id = id;
//		SetName(name);
//		this->birth = birth;
//	}
//	void SetName(const char *name)
//	{
//		strcpy_s(this->name, name);
//	}
//	void Print() const
//	{
//		cout << "id:" << id << " name:" << name << " birthday:";
//		const Date& b = birth;
//		b.Print();
//	}
//};
//int main()
//{
//	Person Zhang(1001 , "Zhang", Date(1991, 12, 25));
//	Zhang.Print();
//	const Person Li(1002, "Li", Date(2008, 8, 8));
//	Li.Print();
//	Person Wang(Li);
//	Wang.SetName("Wang");
//	Wang.Print();
//	system("pause");
//	return 0;
//}