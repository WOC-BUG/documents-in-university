function [Train1,Test1]=loop2(data1)
    for j=1:100 % ����100���������
        [Train1,Test1]=splittraintest(data1);
        Train1(:,:,j)=Train1;
        Test1(:,:,j)=Test1;
end