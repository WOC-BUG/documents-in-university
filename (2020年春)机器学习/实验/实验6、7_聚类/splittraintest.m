function [Train1,Test1]=splittraintest(data1) % ��������data1��Train1��Test1��ʾ���������


f=[50 50 50];

D1=data1(1:50,:);
D2=data1(51:100,:);
D3=data1(101:150,:);

D(:,:,1)=D1;
D(:,:,2)=D2;
D(:,:,3)=D3;


[a,b]=size(f);%a=1�У�b=3��

[d1,d2]=size(data1);%a=150�У�b=4��

percent1=0.7;

Train1=[];
Test1=[];

% ���ڽ����ݻ���Ϊѵ�����Ͳ��Լ����ݣ�����Ϊ7��3
for i=1:b
    
    x=round(f(i)*percent1);% round�����������룬��x=(int)(0.7*f[i]+0.5)
    
    s=randperm(f(i));% randperm��������1~f(i)���������
    s1=s(1:x);% s1ȡǰ70%���������
    s2=s((x+1):f(i));% s2ȡ��30%���������
    
    DD=D(:,:,i);
    
    train1=DD(s1,:);% ǰ70%��ѵ����
    
    test1=DD(s2,:);% ��30%�Ĳ��Լ�
    
    % ѭ�������������е�ѵ�����Ͳ��Լ�ƴ�ӵ�Train1��Test1��
    Train1=[Train1;train1];
    Test1=[Test1;test1];
    
end

