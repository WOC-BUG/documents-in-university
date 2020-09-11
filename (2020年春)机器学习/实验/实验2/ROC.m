function roc=ROC(data1,data2) %生成ROC曲线
data1=data1' %yout的转秩
data2=data2' %fout的转秩
roc=plotroc(data1,data2);