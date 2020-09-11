function[]=Linear_Analysis(data)
%     X=[2.9500 6.6300 0;2.5300 7.7900 0;3.5700 5.6500 0;3.1600 5.4700 0;2.5800 4.4600 1;2.1600 6.2200 1;3.2700 3.5200 1];
%     pos0=find(X(:,3)==0);
%     pos1=find(X(:,3)==1);
%     X1=X(pos0,1:2);
%     X2=X(pos1,1:2);
    Y=[ones(50,1);2*ones(50,1);3*ones(50,1)];
    X=[data Y];
    pos0=find(X(:,3)==0);
    pos1=find(X(:,3)==1);
    X1=X(pos0,1:2);
    X2=X(pos1,1:2);
    hold on
    plot(X1(:,1),X1(:,2),'r+','markerfacecolor', [ 1, 0, 0 ]);
    plot(X2(:,1),X2(:,2),'b*','markerfacecolor', [ 0, 0, 1 ]);
    grid on

    M1 = mean(X1);
    M2 = mean(X2);
    M = mean([X1;X2]);

    %第二步：求类内散度矩阵
    p = size(X1,1);
    q = size(X2,1);
    a=repmat(M1,4,1);
    S1=(X1-a)'*(X1-a);
    b=repmat(M2,3,1);
    S2=(X2-b)'*(X2-b);
    Sw=(p*S1+q*S2)/(p+q);

    %第三步：求类间散度矩阵
    sb1=(M1-M)'*(M1-M);
    sb2=(M2-M)'*(M2-M);
    Sb=(p*sb1+q*sb2)/(p+q);bb=det(Sw);

    %第四步：求最大特征值和特征向量
    [V,L]=eig(inv(Sw)*Sb);
    [a,b]=max(max(L));
    W = V(:,b);%最大特征值所对应的特征向量

    %第五步：画出投影线
    k=W(2)/W(1);
    b=0;x=2:6;
    yy=k*x+b;

    plot(x,yy);%画出投影线
end
