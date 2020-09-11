% Solve an Input-Output Fitting problem with a Neural Network
% Script generated by NFTOOL
%
% This script assumes these variables are defined:
%
%   houseInputs - input data.
%   houseTargets - target data.
function [inputs,targets] = simplefitdata(data)

% load house_dataset
% inputs = houseInputs;
% targets = houseTargets;

%[Train1,Test1]=splittraintest(data); 
%inputs=[Train1(:,1:4);Test1(:,1:4)]'; 
%targets=[Train1(:,5);Test1(:,5)]';
inputs=data';
targets=[ones(50,1);2*ones(50,1);3*ones(50,1)]';

% Create a Fitting Network
hiddenLayerSize = 10; % 隐层大小
net = fitnet(hiddenLayerSize); %返回神经网络拟合函数

% Set up Division of Data for Training, Validation, Testing
net.divideParam.trainRatio = 70/100;
% net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 30/100;
 
% Train the Network
[net,tr] = train(net,inputs,targets);
 
% Test the Network
outputs = net(inputs);
errors = gsubtract(outputs,targets);
performance = perform(net,targets,outputs)
 
% View the Network
view(net)
 
% Plots
% Uncomment these lines to enable various plots.
% figure, plotperform(tr)
% figure, plottrainstate(tr)
% figure, plotfit(targets,outputs)
% figure, plotregression(targets,outputs)
% figure, ploterrhist(errors)