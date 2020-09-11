-- -----------------------------实验一-----------------------------------------------
 CREATE database MovieDB;
-- 艺人表
CREATE TABLE  Artist 
(id int(20) auto_increment primary key,
name char(20),
birthday date,
sex char(10),
imdbnumber char(12),
introduction char(255)
);
-- imdbnumber是互联网电影资料库

-- 影视作品表
DROP TABLE IF EXISTS Movie;
CREATE TABLE  Movie
(id int(12) auto_increment primary key,
name char(20),
releasedate date,
duration int,
language char(20),
introduction char(255)
);
-- duration是持续期间的意思

-- 艺人电影关系表
DROP TABLE IF EXISTS Participation;
CREATE TABLE  Participation
(id int(12) auto_increment primary key,
artistid int(20),
movieid int(20),
rolename char(20)
);

-- 阿米尔汗
INSERT
INTO Artist ( id,name,birthday,sex,imdbnumber,introduction )
VALUES (1,
'阿米尔汗',
'1965-3-14 00:00:00', 
'男',
'nm0451148',
'阿米尔·汗（Aamir Khan），1965年3月14日出生于印度孟买，印度宝莱坞演员、导演、制片人。'
);

INSERT
INTO Movie(id,name,releasedate,duration,language,introduction)
VALUES(
1,
'三傻大闹宝莱坞',
'2011-12-8 00:00:00',
170,
'北印度语',
'All is well!'
);

INSERT
INTO participation( id,artistid,movieid,rolename )
VALUES (
1,
1,
1,
'兰彻（冯苏·王杜）'
);

-- 成龙
INSERT
INTO Artist ( id,name,birthday,sex,imdbnumber,introduction )
VALUES (
2,
'成龙',
'1954-4-7 00:00:00',
'男',
'tt0120812',
'成龙（Jackie Chan），1954年4月7日出生于香港，祖籍安徽芜湖，中国香港男演员、导演、动作指导、制作人、编剧、歌手。'
);

INSERT
INTO Movie(id,name,releasedate,duration,language,introduction)
VALUES(
2,
'警察故事',
'1985-12-14 00:00:00',
100,
'普通话',
'警察陈家驹冒死抓捕大毒枭，由于证据不足，被人陷害设计嫁祸杀死同事，于是走上了为自己洗脱不白之冤道路。'
);

INSERT
INTO participation( id,artistid,movieid,rolename )
VALUES (
2,
2,
2,
'陈家驹'
);

-- 吔屎啦,梁非凡!
INSERT
INTO ARTIST(id,name,birthday,sex,imdbnumber,introduction)
VALUES(
3,
'麦长青',
'1968-12-18',
'男',
null,
'吔屎啦,梁非凡!'
);

-- 对不起，非凡哥！
INSERT
INTO Movie(id,name,releasedate,duration,language,introduction)
VALUES(
3,
'巾帼枭雄之义海豪情 ',
'2010-10-18 00:00:00',
220,
'粤语',
'对不起，非凡哥！'
);

INSERT
INTO participation( id,artistid,movieid,rolename )
VALUES (
3,
3,
3,
'梁非凡'
);

-- 蔡徐坤
INSERT
INTO ARTIST(id,name,birthday,sex,imdbnumber,introduction)
VALUES(
4,
'蔡徐坤',
'1998-8-2',
'男',
null,
'鸡你太美！'
);

-- 鸡你太美！
INSERT
INTO Movie(id,name,releasedate,duration,language,introduction)
VALUES(
4,
'完美假妻168 ',
'2014-3-4 00:00:00',
93,
'普通话',
'鸡呢？'
);

INSERT
INTO participation( id,artistid,movieid,rolename )
VALUES (
4,
4,
4,
'霍克'
);

-- 你好骚啊
INSERT
INTO ARTIST(id,name,birthday,sex,imdbnumber,introduction)
VALUES(
5,
'凌潇肃',
'1980-5-22',
'男',
null,
'你好骚啊...'
);

-- 回家的诱惑
INSERT
INTO Movie(id,name,releasedate,duration,language,introduction)
VALUES(
5,
'回家的诱惑',
'2011-2-21 00:00:00',
3330,
'普通话',
'你怎么可以进我的房间，穿着我的睡衣，躺在我的床上，抱着我的丈夫，你怎么可以这样？你怎么可以这样呢！？'
);

INSERT
INTO participation( id,artistid,movieid,rolename )
VALUES (
5,
5,
5,
'洪世贤'
);

-- 增加评分列
alter table Movie add Rating double;

update Movie set Rating=9.2 where id=1; 
update Movie set Rating=7.8 where id=2; 
update Movie set Rating=9.1 where id=3; 
update Movie set Rating=4.9 where id=4; 
update Movie set Rating=6.3 where id=5; 

-- 查询演员数据
SELECT id,name,birthday,sex,imdbnumber,introduction
FROM Artist;

-- 查询电影数据
SELECT id,Rating,name,releasedate,duration,language,introduction
FROM Movie;

-- 查询艺人电影关系表
select id,artisrid,movieid,rolename
from participation;

-- 删除数据
DELETE
FROM Artist
WHERE id=5;

-- 删除某个电影
delete
from Movie
where id=2;

-- 删除基本表 
DROP TABLE Movie CASCADE;
drop table participation cascade;

-- ---------------------------实验二-------------------------------------------
-- 删除imdbnumber
alter table artist drop imdbnumber;
-- 创建 imdbnumber
alter table artist add imdbnumber char(20);
-- 为艺人表中的'imdbnumber'列创建唯一索引
alter table artist add unique(imdbnumber);

-- 添加imdbnumber
update Artist set imdbnumber='nm0451148' where id=1;
update Artist set imdbnumber='tt0120812' where id=2;
update Artist set imdbnumber='nm0538324' where id=3;
update Artist set imdbnumber='nm10644657' where id=4;
update Artist set imdbnumber='nm4003072' where id=5;

-- 删除索引
alter table artist drop foreign key FK_Name;
-- 删除表列
alter table Artist drop birthplace;
-- 修改演员表，增加出生地
alter table Artist add `birthplace` char(3) NOT NULL DEFAULT '';

-- 查看两表信息
SHOW CREATE TABLE artist;
SHOW CREATE TABLE country;

alter table artist convert to character set utf8;

-- 增加外键关联
Alter table Artist
add constraint FK_Name foreign key (birthplace) references country(Code);


-- 使用update语句为已有演员添加相应的出生地
update Artist set birthplace='IND' where id=1;
update Artist set birthplace='HKG' where id=2;
update Artist set birthplace='CHN' where id=3;
update Artist set birthplace='CHN' where id=4;
update Artist set birthplace='CHN' where id=5;