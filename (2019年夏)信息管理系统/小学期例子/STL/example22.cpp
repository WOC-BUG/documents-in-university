#include<iostream>
#include<utility>
#include<vector>
#include<string>
using namespace std;

int main()
{
	pair<string, int> sipr;
	string str;
	int ival;
	vector<pair<string,int> > pvec;

	cout<<"Enter a string and an integer(ctrl+z to end):"<<endl;
	while(cin>>str>>ival)
	{
		//first method
		sipr=make_pair(str,ival);
		//second method
		//pair<string,int> sipr(str,ival);
		//third method
		//sipr.first=str; sipr.second=ival;
		pvec.push_back(sipr);
	}

	for(vector<pair<string,int> > ::iterator iter =pvec.begin(); iter!=pvec.end(); iter++)
		cout<<(*iter).first <<" "<<(*iter).second <<endl;

	return 0;
}
