function roc=ROC(data1,data2) %����ROC����
data1=data1' %yout��ת��
data2=data2' %fout��ת��
roc=plotroc(data1,data2);