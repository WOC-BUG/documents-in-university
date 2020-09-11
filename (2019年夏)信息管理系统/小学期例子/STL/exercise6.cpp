#include<iostream>
#include<vector>
using namespace std;
int main()
{
    vector<int> ivec;
    //长度应该为0，容量由实现而定
    cout<<"ivec: size: "<<ivec.size ()<<" capacity: "<<ivec.capacity ()<<endl;
    //添加10个元素
    for ( int ix =1;ix!=11;++ix)
    {
        ivec.push_back(ix);
        //长度应该为ix，容量>=ix，具体由实现而定
        cout<<"ivec: size: "<<ivec.size ()<<" capacity: "<<ivec.capacity ()<<endl;
    }
    //将现有容量用完
    while(ivec.size ()!=ivec.capacity ())
        ivec.push_back(0);
    //添加1个元素
    ivec.push_back(0);
    //长度应该为原容量+1，容量>=原容量+1，具体由实现而定
    cout<<"ivec: size: "<<ivec.size ()<<" capacity: "<<ivec.capacity ()<<endl;
    //容量至少设为100
    ivec.reserve(100);
    //长度保持不变，容量>=100，具体由实现而定
    cout<<"ivec: size: "<<ivec.size ()<<" capacity: "<<ivec.capacity ()<<endl;
    //将现有容量用完
    while(ivec.size ()!=ivec.capacity ())
        ivec.push_back(0);
    //容量不变，长度应该与容量相同
    cout<<"ivec: size: "<<ivec.size ()<<" capacity: "<<ivec.capacity ()<<endl;
    //再添加一个元素
    ivec.push_back(42);
    //长度应该+1，容量>=原容量+1，具体由实现而定
    cout<<"ivec: size: "<<ivec.size ()<<" capacity: "<<ivec.capacity ()<<endl;
    return 0;
}