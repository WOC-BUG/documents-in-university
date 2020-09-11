#include<iostream>
using namespace std;
#pragma warning(disable:4996)
int main()
{
	/*cout << "int=" << sizeof(int) << endl;
	cout << "char=" << sizeof(char) << endl;
	cout << "double=" << sizeof(double) << endl;
	cout << "float=" << sizeof(float) << endl;
	cout << "long=" << sizeof(long) << endl;
	cout << "sizeof(struct guest) ="<<sizeof(struct guest) << endl;*/
	char arr[2][4];
	strcpy(arr[0], "you");
	strcpy(arr[1], "me");
	arr[0][3] = '&';
	cout << arr[0] << endl;
	int a[2][4] = { {1,2,3 }, { 0,1 }};
	a[0][3] = 1;
	cout << a[0] << endl;
	system("pause");
	return 0;
}