function []=inputdata(data)
%% ��������
[Train1,Test1]=splittraintest(data); % ��������

%% kmeans
K=3;
[Idx,C,sumD,D]=kmeans(Train1,K,'dist','sqEuclidean','rep',4);
% train1: n*m�����ݾ���nΪ���ݸ�����mΪ��������ά��
% K=3: ��ʾ��trainX����Ϊ���࣬Ϊ����
% Idx: n*1���������洢����ÿ����ľ�����
% C: K*m�ľ��󣬴洢����K����������λ��
% sumD: 1*K�ĺ��������洢����������е���������ĵ����֮��
% D: N*K�ľ��󣬴洢����ÿ�������������ĵľ���

%% ����1~5
k2=[ones(35,1);2*ones(35,1);3*ones(35,1)];
clustering(Train1,Idx,k2,K,C);

end