%% 任务1~3，计算Jaccard指数，和距离
function [p1,p2]=Jaccard(X,k1,k2)
    a=0;
    b=0;
    c=0;
    d=0;
    [n,m]=size(X);
    p1=zeros(105,105); % 初始化
    p2=zeros(105,105);
    for i=1:n
        for j=(i+1):n
            tmp1=0;
            tmp2=0;
            for l=1:m
                tmp1=tmp1+abs(X(i,l)-X(j,l));
                tmp2=tmp2+(X(i,l)-X(j,l))^2;
            end;
            p1(i,j)=tmp1;
            p2(i,j)=sqrt(tmp2);
            if k1(i)==k1(j) && k2(i)==k2(j)
                a=a+1;
            elseif k1(i)==k1(j) && k2(i)~=k2(j)
                b=b+1;
            elseif k1(i)~=k1(j) && k2(i)==k2(j)
                c=c+1;
            elseif k1(i)~=k1(j) && k2(i)~=k2(j)
                d=d+1;
            end
        end
    end
    
    JC=a/(b+c+d)

    save p1;
    save p2;
    
end