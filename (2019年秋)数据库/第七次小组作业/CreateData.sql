create database xjgnb;

create table xjg(
userID char(20),
newsID char(20),
clicktime int(15),
title char(100),
content mediumtext,
publishtime char(20)
);

alter table xjg add primary key(userID,newsID,clicktime);
alter table xjg drop primary key;

truncate table xjg;