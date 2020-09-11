
from sklearn.datasets import load_iris
import matplotlib.pyplot as plt
import matplotlib as mpl
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn import metrics
import numpy as np
from sklearn.discriminant_analysis import LinearDiscriminantAnalysis
from mpl_toolkits.mplot3d import Axes3D

iris = load_iris()      # 150行，4列
X = iris.data[:, :2]    # 取前两列数据
Y = iris.target         # 标签——0,1,2

x_train, x_test, y_train, y_test = train_test_split(X,Y, test_size = 0.3, random_state = 0)     # 划分数据
# 画出训练集数据点

lr = LogisticRegression(penalty='l2',solver='newton-cg',multi_class='multinomial')
lr.fit(x_train,y_train)

y_hat = lr.predict(x_test)
accuracy = metrics.accuracy_score(y_test, y_hat) #错误率，也就是np.average(y_test==y_pred)

x1_min, x1_max = X[:, 0].min() - .5, X[:, 0].max() + .5 # 第0列的范围
x2_min, x2_max = X[:, 1].min() - .5, X[:, 1].max() + .5 # 第1列的范围
h = .02
x1, x2 = np.meshgrid(np.arange(x1_min, x1_max, h), np.arange(x2_min, x2_max, h)) # 生成网格采样点

grid_test = np.stack((x1.flat, x2.flat), axis=1)  # 测试点
grid_hat = lr.predict(grid_test)                  # 预测分类值
# grid_hat = lr.predict(np.c_[x1.ravel(), x2.ravel()])
grid_hat = grid_hat.reshape(x1.shape)             # 使之与输入的形状相同

plt.figure(1, figsize=(6, 5))

# 预测值的显示, 输出为三个颜色区块，分布表示分类的三类区域
cm_light = mpl.colors.ListedColormap(['#E6E6FA', '#87CEEB', '#FFFFE0'])
cm_dark = mpl.colors.ListedColormap(['g', 'r', 'b'])
plt.pcolormesh(x1, x2, grid_hat,cmap=cm_light) 

# plt.scatter(X[:, 0], X[:, 1], c=Y,edgecolors='k', cmap=plt.cm.Paired)
plt.scatter(X[:50, 0], X[:50, 1], marker = '.', edgecolors='blue', label='setosa')
plt.scatter(X[50:100, 0], X[50:100, 1], marker = '+', edgecolors='k', label='versicolor')
plt.scatter(X[100:150, 0], X[100:150, 1], marker = '*', edgecolors='green', label='virginica')
plt.xlabel('Sepal length')
plt.ylabel('Sepal width')
plt.legend(loc = 2)

plt.xlim(x1.min(), x1.max())
plt.ylim(x2.min(), x2.max())
plt.title("Iris Logistic Regression", fontsize = 15)
plt.xticks(())
plt.yticks(())
plt.grid()

plt.show()


## 线性判别分析——2维
lda = LinearDiscriminantAnalysis(n_components=2)
lda.fit(x_train,y_train)
X_new = lda.transform(x_train)
plt.scatter(X_new[:, 0], X_new[:, 1], marker='o', c=y_train)
plt.show()


## 线性判别分析——3维
LDA = LinearDiscriminantAnalysis()
LDA.fit(x_train,y_train)
dir(LDA)

X = np.vstack((x_train,x_test))
Y = np.vstack((y_train.reshape(y_train.size,1),\
    y_test.reshape(y_test.size,1)))
converted_X = np.dot(X,np.transpose(LDA.coef_)) + \
    LDA.intercept_

fig = plt.figure()
ax = Axes3D(fig)
colors = 'rgb'
markers = 'o*s'
for target,color,marker in zip([0,1,2],colors,markers):
    pos = (Y == target).ravel()
    X = converted_X[pos,:]
    ax.scatter(X[:,0],X[:,1],X[:,2],\
        color=color,marker=marker,\
            label = "Label%d"%target)
ax.legend(loc="best")
fig.suptitle("Iris After LDA")
plt.show()