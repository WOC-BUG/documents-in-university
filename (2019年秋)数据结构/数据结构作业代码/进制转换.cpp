//#pragma warning(disable:4996)
//#include<bits/stdc++.h>
//using namespace std;
//char ch[16] = { '0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F' };
//stack<char> sta;
//string str;
//int num;
//long long a;
//
//long long qpow(int a,int num)//�����ݣ���a��num�η�
//{
//	long long sum = 1;
//	while (num)
//	{
//		if (num & 1)
//			sum = 1ll * sum * a;
//		a = 1ll * a * a;
//		num >>= 1;
//	}
//	return sum;
//}
//
//long long toTen(string s,int num)//��������תʮ����
//{
//	long long ans = 0;
//	int len = s.length();
//	int tmp = 0;
//	for (int i = len - 1; i >= 0; i--)
//	{
//		if (s[i] >= 'A' && s[i] <= 'F')
//			ans += (s[i] - 'A' + 10) * qpow(num, tmp);
//		else
//			ans += (s[i] - '0') * qpow(num, tmp);
//		tmp++;
//	}
//	return ans;
//}
//
//void TenTo(long long a, int num)//ʮ����ת����������
//{
//	while (a)
//	{
//		sta.push(ch[a % num]);
//		a /= num;
//	}
//}
//
//int main()
//{
//	cout << "������һ������ת��ʮ���ƣ�����0ֹͣת����" << endl;
//	while (cin >> str)
//	{
//		if (str == "0")
//			break;
//		cout << "���������Ǽ����Ƶ�����" << endl;
//		cin >> num;
//		cout << str << "��ʮ����Ϊ��" << toTen(str, num) << endl;
//		cout << "������һ������ת��ʮ���ƣ�����0ֹͣת����" << endl;
//	}
//	cout << "������һ��ʮ������������0ֹͣת����" << endl;
//	while (cin >> a)
//	{
//		if (a == 0)
//			break;
//		cout << "������Ҫת���ɼ����Ƶ�����" << endl;
//		cin >> num;
//		TenTo(a, num);
//		cout << a << "��" << num << "����Ϊ��" << endl;
//		while (!sta.empty())
//		{
//			cout << sta.top();
//			sta.pop();
//		}
//		cout << endl;
//		cout << "������һ��ʮ������������0ֹͣת����" << endl;
//	}
//	return 0;
//}