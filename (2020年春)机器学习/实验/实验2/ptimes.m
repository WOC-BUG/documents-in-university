function [Train,Test]=ptimes(data1) %p取10
p=10;
for i=1:p
    [Train,Test]=kcrossvalidation(data1);
    %四维为数据行，属性列，k折，p次
    Train(:,:,:,i)=Train;
    Test(:,:,:,i)=Test;
end
end