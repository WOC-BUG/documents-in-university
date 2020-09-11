function[]=Linear_Regression(data)
    %1	山鸢尾（setosa）
    %2	变色鸢尾（versicolor））
    %3	维吉尼亚鸢尾（virginica）
    Y=[ones(50,1);2*ones(50,1);3*ones(50,1)];
    data=[data Y];
    save data;
   
    [Train,Test]=splittraintest(data);   % 将数据进行划分，70%训练集和%30%测试集
   
    % X取前两列,Y取最后一列
    X_Train=Train(:,1:2);
    X_Test=Test(:,1:2);
    
    x1=Train(:,1);
    x2=Train(:,2);
    y=Train(:,5);   % y
    
    X=[ones(105,1) X_Train];
    [b,bint,r,rint,stats]=regress(y,X);
    z=b(1)+b(2)*x1+b(3)*x2;
    plot(X,y,'-*',X,z,'r');

end