function [E,acc]=squareerror() %E是均方误差，acc是精度
num=3; %三种花
N=150; %150行数据
n=N/num;
fx=[];
y=[];
for i=1:n %数据类别为[0,1,-1]
    fx(i)=0;
    y(i)=0;
    fx(i+n)=1;
    y(i+n)=1;
    fx(i+2*n)=-1;
    y(i+2*n)=-1;
end

Fx=fx(randperm(150)); %打乱数据
Y=y(randperm(150)); %打乱数据

E=0;
for i=1:N
    tmpE=(Fx(i)-Y(i))*(Fx(i)-Y(i)); %方差
    E=E+tmpE; %求和
end

E=E/N; %求均值得到均方误差
acc=1.0-E; %精度

end