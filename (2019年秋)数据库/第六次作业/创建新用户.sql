create user 'user1'@'%' identified by '123456';

select host,user,authentication_string from mysql.user;

grant select,insert,delete on users.* to user1;

-- 刷新策略
flush privileges;

-- 查询该用户权限
show grants for user1;

select user();

insert 
into audit (id, thread_id, login_time, localname, matcchname)
values(1,1,now(),"test","test@%");


