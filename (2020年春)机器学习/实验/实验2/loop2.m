function [Train1,Test1]=loop2(data1)
    for j=1:100 % 生成100份随机数据
        [Train1,Test1]=splittraintest(data1);
        Train1(:,:,j)=Train1;
        Test1(:,:,j)=Test1;
end