function [Train1,Test1]=splittraintest(data1) % 导入数据data1，Train1和Test1表示函数的输出


f=[50 50 50];

D1=data1(1:50,:);
D2=data1(51:100,:);
D3=data1(101:150,:);

D(:,:,1)=D1;
D(:,:,2)=D2;
D(:,:,3)=D3;


[a,b]=size(f);%a=1行，b=3列

[d1,d2]=size(data1);%a=150行，b=4列

percent1=0.7;

Train1=[];
Test1=[];

% 用于将数据划分为训练集和测试集两份，比例为7：3
for i=1:b
    
    x=round(f(i)*percent1);% round用于四舍五入，即x=(int)(0.7*f[i]+0.5)
    
    s=randperm(f(i));% randperm用于生成1~f(i)的随机序列
    s1=s(1:x);% s1取前70%的随机序列
    s2=s((x+1):f(i));% s2取后30%的随机序列
    
    DD=D(:,:,i);
    
    train1=DD(s1,:);% 前70%的训练集
    
    test1=DD(s2,:);% 后30%的测试集
    
    % 循环将三分数据中的训练集和测试集拼接到Train1和Test1中
    Train1=[Train1;train1];
    Test1=[Test1;test1];
    
end

