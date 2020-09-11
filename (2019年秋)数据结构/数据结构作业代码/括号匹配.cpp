//#include<cstdio>
//#include<iostream>
//#include<stack>
//using namespace std;
//string str;
//stack<char> sta;
//int main()
//{
//	while (1)
//	{
//		cout << "请输入一个算数公式(输入0结束输入)：" << endl;
//		cin >> str;
//		if (str == "0")
//			break;
//		int len = str.length();
//		int flag = 1;
//		for (int i = 0; i < len; i++)
//		{
//			if (str[i] == '(' || str[i] == '[' || str[i] == '{')
//				sta.push(str[i]);
//			if (str[i] == ')')
//			{
//				if (sta.top() == '(')
//					sta.pop();
//				else
//				{
//					flag = 0;
//					break;
//				}
//			}
//			if (str[i] == ']')
//			{
//				if (sta.top() == '[')
//					sta.pop();
//				else
//				{
//					flag = 0;
//					break;
//				}
//			}
//			if (str[i] == '}')
//			{
//				if (sta.top() == '{')
//					sta.pop();
//				else
//				{
//					flag = 0;
//					break;
//				}
//			}
//		}
//		while (!sta.empty())
//		{
//			flag = 0;
//			sta.pop();
//		}
//		if (flag)
//			cout << "公式的括号匹配正确！" << endl;
//		else
//			cout << "公式的括号匹配不正确！" << endl;
//	}
//	return 0;
//}