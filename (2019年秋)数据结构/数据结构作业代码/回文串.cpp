//#include<bits/stdc++.h>
//using namespace std;
//string str;
//int main()
//{
//	while (1)
//	{
//		cout << "请输入一个字符串，以0结束输入：" << endl;
//		cin >> str;
//		if (str == "0")
//			break;
//		int len = str.length();
//		int flag = 1;
//		for (int i = 0; i <= len/2; i++)
//		{
//			if (str[i] != str[len - i - 1])
//			{
//				flag = 0;
//				break;
//			}
//		}
//		if (flag)
//			cout << str << "是回文串" << endl;
//		else
//			cout << str << "不是回文串" << endl;
//		cout << endl;
//	}
//	return 0;
//}