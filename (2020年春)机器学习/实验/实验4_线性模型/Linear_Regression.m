function[]=Linear_Regression(data)
    %1	ɽ�β��setosa��
    %2	��ɫ�β��versicolor����
    %3	ά�������β��virginica��
    Y=[ones(50,1);2*ones(50,1);3*ones(50,1)];
    data=[data Y];
    save data;
   
    [Train,Test]=splittraintest(data);   % �����ݽ��л��֣�70%ѵ������%30%���Լ�
   
    % Xȡǰ����,Yȡ���һ��
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