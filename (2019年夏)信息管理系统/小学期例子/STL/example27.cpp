#include<string>
#include<vector>
#include<iostream>
#include<algorithm>
using namespace std;
bool isShorter( const string &s1,const string &s2);
bool GT6(const string &s);


int main()
{
	vector<string> words;

	//将文本内容存入向量中
	string next_word;
	while( cin>>next_word)
		words.push_back (next_word);

	sort(words.begin(),words.end ());

	//删除重复元素
	vector<string>::iterator  end_unique = unique(words.begin (),words.end ());     //假删除
	words.erase (end_unique,words.end ());              //真删除

	//在保留相等元素原始相对位置的基础上排序
	stable_sort(words.begin(), words.end (), isShorter);  

	//统计长度大于等于6的单词数量
	vector<string>::size_type wc = count_if(words.begin(), words.end (), GT6);
	cout<<wc<<" "<<(wc==1?"word":"words")<<" 6 characters or longer" <<endl;

	//输出输入序列中不重复的单词
	cout<<"unique words:"<<endl;
	for( vector<string>::iterator  iter = words.begin (); iter!=words.end (); ++iter)
		cout<<*iter<<" ";
	cout<<endl;

	return 0;
}

bool isShorter( const string &s1,const string &s2)
{
	return s1.size () < s2.size () ;
}
bool GT6(const string &s)
{
	return s.size() >=6;
}



