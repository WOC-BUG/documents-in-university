#include <list>
#include <iostream>
using namespace std;
class MyLess {
public:
    bool operator()( const int & c1, const int & c2 )
    {
        return (c1 % 10) < (c2 % 10);
    }
};
template <class T>
void Print(T first,T last) {
    for( ; first != last ; ++ first ) cout << * first << ",";
}

int main()
{ const int SIZE = 5;
    int a[SIZE] = {5,21,14,2,3};
    list<int> lst(a,a+SIZE);
    lst.sort(MyLess());
    Print( lst.begin(),lst.end());
    cout << endl;
    lst.sort(greater<int>()); //greater<int>()是个对象
    Print( lst.begin(),lst.end());
    cout << endl;
    return 0;
}