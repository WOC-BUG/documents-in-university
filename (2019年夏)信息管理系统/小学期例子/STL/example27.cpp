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

	//���ı����ݴ���������
	string next_word;
	while( cin>>next_word)
		words.push_back (next_word);

	sort(words.begin(),words.end ());

	//ɾ���ظ�Ԫ��
	vector<string>::iterator  end_unique = unique(words.begin (),words.end ());     //��ɾ��
	words.erase (end_unique,words.end ());              //��ɾ��

	//�ڱ������Ԫ��ԭʼ���λ�õĻ���������
	stable_sort(words.begin(), words.end (), isShorter);  

	//ͳ�Ƴ��ȴ��ڵ���6�ĵ�������
	vector<string>::size_type wc = count_if(words.begin(), words.end (), GT6);
	cout<<wc<<" "<<(wc==1?"word":"words")<<" 6 characters or longer" <<endl;

	//������������в��ظ��ĵ���
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



