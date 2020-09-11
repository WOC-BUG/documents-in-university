%% 任务4-2，计算DB指数，使用曼哈顿距离
function []=DBI(avg1,dcen,K)
dbi=0;
for i=1:K
    dbimax=0;
    for j=1:K
        if i==j
            continue;
        elseif i>j
            tmp=(avg1(i)+avg1(j))/dcen(j,i);
        else
            tmp=(avg1(i)+avg1(j))/dcen(i,j);
        end;
        if(dbimax<tmp)
            dbimax=tmp;
        end
    end
    dbi=dbi+dbimax;
end
dbi=dbi/K;
dbi

end