


function [Train1,Test1]=kcrossvalidation(data1) %k折交叉验证



k=10;

[m,n]=size(data1);

a=50;
b=50;
c=50;

class1=3;


s=a/k; %分成10份，每份s=5个

data2(:,:,1)=data1(1:50,:);
data2(:,:,2)=data1(51:100,:);
data2(:,:,3)=data1(101:150,:);



for i=1:class1 %3份数据

    
    f1=randperm(a); %将1-50的序列打乱

    for j=1:k %10份数据
        
        
        f2=(s*(j-1)+1):(s*j); %a:b表示矩阵[a,a+1,...,b],f2存的是当前第j份的5个数据对应的下标
        %每次f2的值为：
        %j=1时f2=[1,2,3,4,5];j=2时f2=[6,7,8,9,10],...
        
        f3=f1(f2); %f2的值作为下标，返回f1在f2中对应标号的行
        %即f3每次存打乱的5组标号
        
        f4=setdiff(f1,f3); %返回在f1中却不在f3中的元素,即f3在f1中的补集

        data3=data2(:,:,i);
        
        train1=data3(f4,:); %训练集45个数据
        test1=data3(f3,:); %测试集5个数据
        
        %将循环得到的10组数据叠起来
        Train1(((i-1)*45+1):(i*45),:,j)=train1;
        Test1(((i-1)*5+1):(i*5),:,j)=test1;
        
    end
    
end 
        


