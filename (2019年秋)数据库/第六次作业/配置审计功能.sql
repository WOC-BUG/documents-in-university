-- step1:
-- 创建审计数据库
create database auditlog;

-- 创建审计日志表
use auditlog;
create table audit(
id int not null auto_increment,
thread_id int not null,
login_time timestamp,
localname varchar(50) default null,
matcchname varchar(50) default null,
primary key (id)
);

-- step2:
-- 授予用户访问库及插入、查询、删除的权限
GRANT INSERT,delete,select ON auditlog.* TO 'user1'@'%';

-- 取消用户在表上的权限
revoke INSERT,delete,select on audit.* from 'user1'@'%'; 

-- 查询用户
select host,user,authentication_string from mysql.user;

-- step3

-- 开启binlog
show variables like 'log_%';

-- step4 配置init-connect参数
set global init_connect='insert into auditlog.audit(id,thread_id,login_time,localname,matchname) values(null,connection_id(),now(),user(),current_user());';
-- 在配置文件下增加

-- 查看配置是否存在
show variables like 'init_connect%';

-- UPDATE `mysql`.`user` SET `Insert_priv` = 'Y' WHERE (`Host` = '%') and (`User` = 'user1'); 

select * from mysql.user;
