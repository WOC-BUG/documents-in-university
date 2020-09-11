#pragma warning(disable:4996)
#include<iostream>
using namespace std;
class Worker//Worker��
{
public:
	Worker()//Ĭ�Ϲ���
	{
	}
	virtual ~Worker()//����
	{
		//cout <<"num="<< num << endl;//����
	}
	Worker(unsigned int id, char *name, int level)//���ι���
	{
		this->id = id;//��ʼ��id
		strcpy(this->name, name);//��ʼ������
		this->level = level;//��ʼ���ȼ�
		num++;//������һ
	}
	virtual float SetSalary()//��¼Ա������
	{
		salary = 2000;//��ʼ����2000Ԫ
		return salary;
	}
	virtual float setLevel(int l)//�޸ļ����ȼ�
	{
		level = l;//��ʼ�ȼ�Ϊ1
		salary = 2000 + (l - 1) * 200;//���ݼ����ȼ����¹���
		return salary;
	}
	void infoList()//���ְ����Ϣ
	{
		cout << "id�ţ�" << id << "  ";
		cout << "������" << name << "  ";
		cout << "�����ȼ���" << level << "  ";
		cout << "���ʣ�" << salary << endl;
	}
	void GiveMoney()//��ĳλԱ����500Ԫ����
	{
		salary += 500;
	}
	static int num;
protected:
	unsigned int id;//ְ����
	char name[11];//����
	float salary;//����
	int level;//�����ȼ���1~20��
};
int Worker::num = 0;//��̬num��¼Ա������
class PieceWorker :public Worker//�Ƽ����ˣ����м̳�
{
public:
	PieceWorker() {}//Ĭ�Ϲ���
	~PieceWorker()//����
	{
	}
	PieceWorker(unsigned int id, char *name, int level, int piece) :Worker(id, name, level)//id,name,level�ɻ����ʼ��
	{
		this->piece = piece;//��ʼ��piece
	}
	float SetSalary()//���㹤��
	{
		salary = 2000 + 200 * (level - 1)*piece;//����Ƽ����˵Ĺ���
		return salary;
	}
	float setLevel(int l)//�޸ļ����ȼ�
	{
		level = l;//���¸��ļ����ȼ�
		salary = 2000 + (l - 1)* piece * 200;//���Ĺ���
		//cout << "piece=" << piece << endl;
		return salary;
	}
private:
	int piece;//����
};

class HourWorker :public Worker//��ʱ���ˣ����м̳�
{
public:
	HourWorker() {}//Ĭ�Ϲ���
	~HourWorker()//����
	{
	}
	HourWorker(unsigned int id, char *name, int level, int hour) :Worker(id, name, level)//id,name,level�ɻ����ʼ��
	{
		this->hour = hour;//��ʼ��hour
	}
	float SetSalary()//���㹤��
	{
		salary = 2000 + 200 * (level - 1)*hour;//�����ʱ���˵Ĺ���
		return salary;
	}
	float setLevel(int l)//�޸ļ����ȼ�
	{
		level = l;//�޸ĵȼ�
		salary = 2000 + (l - 1)* hour * 200;//���㹤�˹���
		//cout << "hour=" << hour << endl;
		return salary;
	}
private:
	double hour;//Сʱ
};
const int N = 500;
void main()
{
	Worker *worker[N];//worker����
	int numSalary = 0;//���й��˵��ܹ���
	cout << "����Ա����Ϣ������id��Ϊ0��������" << endl;//����
	for (int i = 1; i <= N; i++)//ѭ������
	{
		int id, op, level, piece, hour;
		float salary;
		char *name;
		cout << "�������" << i << "��Ա����id����0�������룩��" << endl;
		cin >> id;
		if (!id)//idΪ0ʱ��������
			break;
		cout << "�������" << i << "��Ա����������" << endl;
		name = new char[20];
		cin >> name;//����
	loop:
		cout << "�������" << i << "��Ա���ĵȼ�(1~20)��" << endl;
		cin >> level;//�ȼ�
		if (level > 20 || level < 1)//�������ص��Ϸ�loop��������
		{
			cout << "�������!" << endl;
			goto loop;
		}
	loop2:
		cout << "�������" << i << "��Ա���ǼƼ�Ա��������1�����Ǽ�ʱԱ��������0����" << endl;
		cin >> op;//�Ƽ�����--1����ʱ����--0
		if (op != 0 && op != 1)//���������󣬻ص��Ϸ�loop2��������
		{
			cout << "�������" << endl;
			goto loop2;
		}
		if (op)//�Ƽ�����
		{
			cout << "�������" << i << "��Ա���Ĺ���������" << endl;
			cin >> piece;//��������
			worker[i] = new PieceWorker(id, name, level, piece);//��ʼ��
			salary = worker[i]->SetSalary();//�������Ĺ���
		}
		else//��ʱ����
		{
			cout << "�������" << i << "��Ա���Ĺ���ʱ����" << endl;
			cin >> hour;//����ʱ��
			worker[i] = new HourWorker(id, name, level, hour);//��ʼ��
			salary = worker[i]->SetSalary();//���㹤��
		}

	}
	cout << "Ա����Ϣ����:" << endl;
	for (int i = 1; i <= Worker::num; i++)//ѭ�����������Ϣ
	{
		cout << "��ţ�" << i << "	";//�������
		worker[i]->infoList();

	}
	cout << "--------------------------------------------------------------" << endl;

	int id, level;
	cout << "����Ҫ�޸ĵڼ���Ա�������ĵȼ�(��0 0��������)��" << endl;
	while (cin >> id >> level && id&&level)//�޸Ĺ��˵ȼ�����0 0��������
	{
		worker[id]->setLevel(level);//�޸ĵȼ�����
		cout << "��ţ�" << id << "	";
		worker[id]->infoList();//����ù�����Ϣ
	}
	int s;
	for (int i = 1; i <= Worker::num; i++)//�����ܹ���
	{
		s = worker[i]->SetSalary();
		numSalary += s;
	}
	cout << "������Ҫ���Ž����Ա����ţ�" << endl;
	cin >> id;//����Ա�����
	worker[id]->GiveMoney();//ΪĳһԱ�����Ź���

	cout << "Ա����Ϣ����:" << endl;
	for (int i = 1; i <= Worker::num; i++)//�������Ա����Ϣ
	{
		cout << "��ţ�" << i << "	";
		worker[i]->infoList();
	}
	cout << "--------------------------------------------------------------" << endl;
	cout << "Ա������Ϊ��" << Worker::num << " ��������Ϊ��" << numSalary << endl;//���Ա�������ܹ���
	for (int i = 1; i <= Worker::num; i++)//�ͷ��ڴ�
	{
		if (worker[i] != NULL)
			delete worker[i];
	}
	system("pause");
}
