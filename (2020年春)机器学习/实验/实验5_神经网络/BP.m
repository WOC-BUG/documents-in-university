

% use BP to train a MLP

function BP(data)

Y=[ones(50,1);2*ones(50,1);3*ones(50,1)];
data=[data Y];

[Train1,Test1]=splittraintest(data);
P=Train1(:,1:4)';  % ��С��4*105��4�����ԣ�105������
T=Train1(:,5)'; % target

% P=[-1 -1 2 2 4;0 5 0 5 7]; % �����������ÿһ����һ��������ÿ��������n������
% T=[-1 -1 1 1 -1]; % Ŀ���������
% P is m*n, m is the number of features, n is the number of smaples
% T is the target, a row 

net = newff(P,T,10)
% net = newff(minmax(P),[5,1],{'tansig','purelin'},'trainrp');
% pause;

net.trainParam.show=50; % ÿ���50����ʾһ��ѵ�����
net.trainParam.lr=0.05; % ѧϰ����0.05
net.trainParam.epochs=300; % �������ѵ��ѵ������
net.trainParam.goal=1e-5; % ѵ��Ŀ����С���
% ѵ��
[net,tr]=train(net,P,T);

W1=net.iw{1,1};
B1=net.b{1};

W2=net.lw{2,1};
B2=net.b{2};

Y=sim(net,P); % ��netģ�ͽ��з��棬

plot(Y,'b')

hold on

plot(T,'*')



[inputs,targets] = simplefitdata(data);
     net = newff(inputs,targets,20);
     net = train(net,inputs,targets);
     outputs = net(inputs);
     errors = outputs - targets;
     perf = perform(net,outputs,targets)
 
