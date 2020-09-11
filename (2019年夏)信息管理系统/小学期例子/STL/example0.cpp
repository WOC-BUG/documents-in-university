#include <cstdlib>
#include <iostream>
using namespace std;

void sort(int [],int);

int main()
{
    const int max_size = 10;  // 数组允许元素的最大个数
    int num[max_size];   // 整型数组
    
    // 从标准输入设备读入整数，同时累计输入个数，
    // 直到输入的是非整型数据为止
    int n;
    for (n = 0; cin >> num[n]; n ++);
    
    // 自己编写sort函数
    sort(num, n);
    
    // 将排序结果输出到标准输出设备
    for (int i = 0; i < n; i ++)
        cout << num[i] << "\n";
}

//采用冒泡法的数组排序
void sort(int a[],int n)
{
    int i,j,t;
    for(j=0;j<n-1;j++)
    {
        for(i=0;i<n-1-j;i++)
        {
            if(a[i]>a[i+1])
            {
                t=a[i]; a[i]=a[i+1]; a[i+1]=t;
            }
        }
    }
    
}