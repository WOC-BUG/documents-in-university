function [Train,Test]=ptimes(data1) %pȡ10
p=10;
for i=1:p
    [Train,Test]=kcrossvalidation(data1);
    %��άΪ�����У������У�k�ۣ�p��
    Train(:,:,:,i)=Train;
    Test(:,:,:,i)=Test;
end
end