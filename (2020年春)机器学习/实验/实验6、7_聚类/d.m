%% ����4-1
function [avg,diam,dmin,dcen]=d(X,K,C,k1,p1)
    %% ������Զ���������
    [n,m]=size(X);
    avg(1:3)=0;    % ƽ������
    diam(1:3)=0;   % ��Զ����
    dmin(1:3)=1000;   % �������
    for i=1:n
        for j=(i+1):n
            if k1(i)==k1(j)
                avg(k1(i))=avg(k1(i))+p1(i,j);
                if p1(i,j)>diam(k1(i))
                    diam(k1(i))=p1(i,j);
                end
                if p1(i,j)<dmin(k1(i)) && p1(i,j)~=0
                    dmin(k1(i))=p1(i,j);
                end
            end
        end
    end

    %% ����������������
    for i=1:K
        avg(i)=avg(i)*2/K/(K-1);
    end
    avg
    diam
    dmin

    %% �����������ĵ����
    dcen(K,K)=0; 
    for i=1:K
        for j=(i+1):K
            dcen(i,j)=abs(C(i,1)-C(j,1));
        end
    end
    dcen
end