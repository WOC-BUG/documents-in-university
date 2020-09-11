

% use BP to train a MLP

function BP(data)

Y=[ones(50,1);2*ones(50,1);3*ones(50,1)];
data=[data Y];

[Train1,Test1]=splittraintest(data);
P=Train1(:,1:4)';  % 大小：4*105，4个属性，105个样本
T=Train1(:,5)'; % target

% P=[-1 -1 2 2 4;0 5 0 5 7]; % 输入参数矩阵，每一列是一个样本，每个样本有n行属性
% T=[-1 -1 1 1 -1]; % 目标参数矩阵
% P is m*n, m is the number of features, n is the number of smaples
% T is the target, a row 

net = newff(P,T,10)
% net = newff(minmax(P),[5,1],{'tansig','purelin'},'trainrp');
% pause;

net.trainParam.show=50; % 每间隔50步显示一次训练结果
net.trainParam.lr=0.05; % 学习速率0.05
net.trainParam.epochs=300; % 允许最大训练训练次数
net.trainParam.goal=1e-5; % 训练目标最小误差
% 训练
[net,tr]=train(net,P,T);

W1=net.iw{1,1};
B1=net.b{1};

W2=net.lw{2,1};
B2=net.b{2};

Y=sim(net,P); % 对net模型进行仿真，

plot(Y,'b')

hold on

plot(T,'*')



[inputs,targets] = simplefitdata(data);
     net = newff(inputs,targets,20);
     net = train(net,inputs,targets);
     outputs = net(inputs);
     errors = outputs - targets;
     perf = perform(net,outputs,targets)
 
