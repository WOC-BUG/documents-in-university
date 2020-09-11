function []=inputdata(data)
%% 划分数据
[Train1,Test1]=splittraintest(data); % 划分数据

%% kmeans
K=3;
[Idx,C,sumD,D]=kmeans(Train1,K,'dist','sqEuclidean','rep',4);
% train1: n*m的数据矩阵，n为数据个数，m为单个数据维度
% K=3: 表示将trainX划分为几类，为整数
% Idx: n*1的向量，存储的是每个点的聚类标号
% C: K*m的矩阵，存储的是K个聚类质心位置
% sumD: 1*K的和向量，存储的是类间所有点与该类质心点距离之和
% D: N*K的矩阵，存储的是每个点与所有质心的距离

%% 任务1~5
k2=[ones(35,1);2*ones(35,1);3*ones(35,1)];
clustering(Train1,Idx,k2,K,C);

end