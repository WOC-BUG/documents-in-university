function [E,acc]=squareerror() %E�Ǿ�����acc�Ǿ���
num=3; %���ֻ�
N=150; %150������
n=N/num;
fx=[];
y=[];
for i=1:n %�������Ϊ[0,1,-1]
    fx(i)=0;
    y(i)=0;
    fx(i+n)=1;
    y(i+n)=1;
    fx(i+2*n)=-1;
    y(i+2*n)=-1;
end

Fx=fx(randperm(150)); %��������
Y=y(randperm(150)); %��������

E=0;
for i=1:N
    tmpE=(Fx(i)-Y(i))*(Fx(i)-Y(i)); %����
    E=E+tmpE; %���
end

E=E/N; %���ֵ�õ��������
acc=1.0-E; %����

end