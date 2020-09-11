#include<iostream>
#include<map>
#include<string>
using namespace std;

int main()
{
    map<string, int> wordCount;
    string word;
    
    cout<<"Enter some words(ctrl+z to end):"<<endl; //for xcode, ctrl+Q,then ctrl +D
    while(cin>>word)
        ++wordCount[word];
    
    cout<<"word\t\t"<<"times"<<endl;
    for(map<string,int>::iterator iter=wordCount.begin();iter != wordCount.end ();iter++)
        cout<<(*iter).first<<"\t\t"<<(*iter).second<<endl;
    
    return 0;
}
