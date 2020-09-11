#pragma warning(disable:4996)
#include<iostream>
using namespace std;
class Worker//Worker类
{
public:
	Worker()//默认构造
	{
	}
	virtual ~Worker()//析构
	{
		//cout <<"num="<< num << endl;//测试
	}
	Worker(unsigned int id, char *name, int level)//带参构造
	{
		this->id = id;//初始化id
		strcpy(this->name, name);//初始化姓名
		this->level = level;//初始化等级
		num++;//人数加一
	}
	virtual float SetSalary()//记录员工工资
	{
		salary = 2000;//初始工资2000元
		return salary;
	}
	virtual float setLevel(int l)//修改技术等级
	{
		level = l;//初始等级为1
		salary = 2000 + (l - 1) * 200;//根据技术等级跟新工资
		return salary;
	}
	void infoList()//输出职工信息
	{
		cout << "id号：" << id << "  ";
		cout << "姓名：" << name << "  ";
		cout << "技术等级：" << level << "  ";
		cout << "工资：" << salary << endl;
	}
	void GiveMoney()//给某位员工发500元工资
	{
		salary += 500;
	}
	static int num;
protected:
	unsigned int id;//职工号
	char name[11];//姓名
	float salary;//工资
	int level;//技术等级（1~20）
};
int Worker::num = 0;//静态num记录员工人数
class PieceWorker :public Worker//计件工人，公有继承
{
public:
	PieceWorker() {}//默认构造
	~PieceWorker()//析构
	{
	}
	PieceWorker(unsigned int id, char *name, int level, int piece) :Worker(id, name, level)//id,name,level由基类初始化
	{
		this->piece = piece;//初始化piece
	}
	float SetSalary()//计算工资
	{
		salary = 2000 + 200 * (level - 1)*piece;//计算计件工人的工资
		return salary;
	}
	float setLevel(int l)//修改技术等级
	{
		level = l;//重新更改技术等级
		salary = 2000 + (l - 1)* piece * 200;//更改工资
		//cout << "piece=" << piece << endl;
		return salary;
	}
private:
	int piece;//件数
};

class HourWorker :public Worker//计时工人，公有继承
{
public:
	HourWorker() {}//默认构造
	~HourWorker()//析构
	{
	}
	HourWorker(unsigned int id, char *name, int level, int hour) :Worker(id, name, level)//id,name,level由基类初始化
	{
		this->hour = hour;//初始化hour
	}
	float SetSalary()//计算工资
	{
		salary = 2000 + 200 * (level - 1)*hour;//计算计时工人的工资
		return salary;
	}
	float setLevel(int l)//修改技术等级
	{
		level = l;//修改等级
		salary = 2000 + (l - 1)* hour * 200;//计算工人工资
		//cout << "hour=" << hour << endl;
		return salary;
	}
private:
	double hour;//小时
};
const int N = 500;
void main()
{
	Worker *worker[N];//worker对象
	int numSalary = 0;//所有工人的总工资
	cout << "输入员工信息，并以id号为0结束输入" << endl;//输入
	for (int i = 1; i <= N; i++)//循环输入
	{
		int id, op, level, piece, hour;
		float salary;
		char *name;
		cout << "请输入第" << i << "个员工的id（以0结束输入）：" << endl;
		cin >> id;
		if (!id)//id为0时结束输入
			break;
		cout << "请输入第" << i << "个员工的姓名：" << endl;
		name = new char[20];
		cin >> name;//姓名
	loop:
		cout << "请输入第" << i << "个员工的等级(1~20)：" << endl;
		cin >> level;//等级
		if (level > 20 || level < 1)//如果输错，回到上方loop重新输入
		{
			cout << "输入错误!" << endl;
			goto loop;
		}
	loop2:
		cout << "请输入第" << i << "个员工是计件员工（输入1）还是计时员工（输入0）：" << endl;
		cin >> op;//计件工人--1，计时工人--0
		if (op != 0 && op != 1)//如果输入错误，回到上方loop2重新输入
		{
			cout << "输入错误！" << endl;
			goto loop2;
		}
		if (op)//计件工人
		{
			cout << "请输入第" << i << "个员工的工作件数：" << endl;
			cin >> piece;//工作件数
			worker[i] = new PieceWorker(id, name, level, piece);//初始化
			salary = worker[i]->SetSalary();//计算他的工资
		}
		else//计时工人
		{
			cout << "请输入第" << i << "个员工的工作时长：" << endl;
			cin >> hour;//工作时长
			worker[i] = new HourWorker(id, name, level, hour);//初始化
			salary = worker[i]->SetSalary();//计算工资
		}

	}
	cout << "员工信息如下:" << endl;
	for (int i = 1; i <= Worker::num; i++)//循环输出工人信息
	{
		cout << "序号：" << i << "	";//工人序号
		worker[i]->infoList();

	}
	cout << "--------------------------------------------------------------" << endl;

	int id, level;
	cout << "输入要修改第几个员工和他的等级(以0 0结束输入)：" << endl;
	while (cin >> id >> level && id&&level)//修改工人等级，以0 0结束输入
	{
		worker[id]->setLevel(level);//修改等级函数
		cout << "序号：" << id << "	";
		worker[id]->infoList();//输出该工人信息
	}
	int s;
	for (int i = 1; i <= Worker::num; i++)//更改总工资
	{
		s = worker[i]->SetSalary();
		numSalary += s;
	}
	cout << "请输入要发放奖金的员工序号：" << endl;
	cin >> id;//输入员工序号
	worker[id]->GiveMoney();//为某一员工发放工资

	cout << "员工信息如下:" << endl;
	for (int i = 1; i <= Worker::num; i++)//输出所有员工信息
	{
		cout << "序号：" << i << "	";
		worker[i]->infoList();
	}
	cout << "--------------------------------------------------------------" << endl;
	cout << "员工总数为：" << Worker::num << " 奖金总数为：" << numSalary << endl;//输出员工数和总工资
	for (int i = 1; i <= Worker::num; i++)//释放内存
	{
		if (worker[i] != NULL)
			delete worker[i];
	}
	system("pause");
}
