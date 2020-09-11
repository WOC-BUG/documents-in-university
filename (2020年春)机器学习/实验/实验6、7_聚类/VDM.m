function []=VDM(X,K,p1)
[n,m]=size(X);

%% 任务5-1，计算VDM
vdm(n,n)=0;
j=1;    % 属性1
for p=1:n
    for q=(p+1):n
        a=X(p,j);
        b=X(q,j);
        for i=1:K   % 遍历每个簇类别
            Xtmp=X((i-1)*n/K+1:i*n/K,j);        % 取某一属性的某一类样本，每类n/K个
            numai=length(find(Xtmp==a));        % 第i个样本，属性j上取值为a的样本数
            numa=length(find(X(:,j)==a));       % 属性j上取值为a的样本数
            numbi=length(find(Xtmp==b));        % 第i个样本，属性j上取值为b的样本数
            numb=length(find(X(:,j)==b));       % 属性j上取值为b的样本数    
            vdm(p,q)=vdm(p,q)+abs(numai/numa-numbi/numb); % 曼哈顿距离p=1
        end
    end
end
save vdm;

%% 任务5-2，MinkovDM
MinkovDM(n,n)=0;
for i=1:n
    for j=(i+1):n
        MinkovDM(i,j)=p1(i,j)+vdm(i,j);
    end;
end;
save MinkovDM;
        