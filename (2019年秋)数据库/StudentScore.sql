-- create table Student
-- (id char(10),
-- name char(20),
-- score double(100)
-- );


-- 找出每个学生超过他选修课程平均成绩的课程号

-- 法一：
-- 先求课程平均值，并起别名为avgGrade分组制表
select distinct Sno,AVG(Grade) avgGrade
from SC
group by Sno;
-- 再对它们做连接，按照要求做选择
select Sno,Cno
from SC,avgGrade
where Sc.Sno=avgGrade.Sno
and avgGrade<Sc.Grade;