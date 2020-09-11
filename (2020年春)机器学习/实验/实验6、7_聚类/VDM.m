function []=VDM(X,K,p1)
[n,m]=size(X);

%% ����5-1������VDM
vdm(n,n)=0;
j=1;    % ����1
for p=1:n
    for q=(p+1):n
        a=X(p,j);
        b=X(q,j);
        for i=1:K   % ����ÿ�������
            Xtmp=X((i-1)*n/K+1:i*n/K,j);        % ȡĳһ���Ե�ĳһ��������ÿ��n/K��
            numai=length(find(Xtmp==a));        % ��i������������j��ȡֵΪa��������
            numa=length(find(X(:,j)==a));       % ����j��ȡֵΪa��������
            numbi=length(find(Xtmp==b));        % ��i������������j��ȡֵΪb��������
            numb=length(find(X(:,j)==b));       % ����j��ȡֵΪb��������    
            vdm(p,q)=vdm(p,q)+abs(numai/numa-numbi/numb); % �����پ���p=1
        end
    end
end
save vdm;

%% ����5-2��MinkovDM
MinkovDM(n,n)=0;
for i=1:n
    for j=(i+1):n
        MinkovDM(i,j)=p1(i,j)+vdm(i,j);
    end;
end;
save MinkovDM;
        