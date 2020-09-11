//#pragma warning(disable:4996)
//#include<bits/stdc++.h>
//using namespace std;
//char ch[16] = { '0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F' };
//stack<char> sta;
//string str;
//int num;
//long long a;
//
//long long qpow(int a,int num)//快速幂，求a的num次方
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
//long long toTen(string s,int num)//其他进制转十进制
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
//void TenTo(long long a, int num)//十进制转成其他进制
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
//	cout << "请输入一个数以转成十进制，输入0停止转换：" << endl;
//	while (cin >> str)
//	{
//		if (str == "0")
//			break;
//		cout << "请输入这是几进制的数：" << endl;
//		cin >> num;
//		cout << str << "的十进制为：" << toTen(str, num) << endl;
//		cout << "请输入一个数以转成十进制，输入0停止转换：" << endl;
//	}
//	cout << "请输入一个十进制数，输入0停止转换：" << endl;
//	while (cin >> a)
//	{
//		if (a == 0)
//			break;
//		cout << "请输入要转换成几进制的数：" << endl;
//		cin >> num;
//		TenTo(a, num);
//		cout << a << "的" << num << "进制为：" << endl;
//		while (!sta.empty())
//		{
//			cout << sta.top();
//			sta.pop();
//		}
//		cout << endl;
//		cout << "请输入一个十进制数，输入0停止转换：" << endl;
//	}
//	return 0;
//}