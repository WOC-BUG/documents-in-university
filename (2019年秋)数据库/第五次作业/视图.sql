-- 1
-- 商家开展“买200赠100”的促销活动
-- 为一次购买某专辑总价格在200元（含）以上的用户的会员卡
-- （字段：User表的UserAdvancePayment）充值100元。（只充值一次）

update users,orders,sales
set users.UserAdvancePayment=100
where sales.TotalPrice>=200
and sales.OrderID=orders.OrderID
and orders.UserName=users.UserName;

-- 2
-- 新建“专辑销售统计表”Sales_Statis
-- 其结构能存放专辑名、销售量和销售额。
-- 将各个专辑销售量和销售额的统计结果存入Sales_Statis表中。

create table Sales_Statis(
AlbumName varchar(64) not null,
SalesNumber int null,
SalesVolume numeric(10, 2) null
);

truncate table sales_statis;

-- 插入专辑名
-- insert into Sales_Statis(AlbumName)
-- select distinct albums.AlbumName
-- from albums;

-- 插入销售量
-- insert into Sales_Statis(SalesNumber)
-- select sum(sales.Quantity)
-- from sales,albums,sales_statis
-- where albums.AlbumID=sales.AlbumID
-- and albums.AlbumName=sales_statis.AlbumName
-- group by sales.AlbumID;

-- 三个数据一起插入
insert into Sales_Statis(AlbumName,SalesNumber,SalesVolume)
select distinct albums.AlbumName,sum(sales.Quantity),sum(sales.TotalPrice)
from albums,sales
where albums.AlbumID=sales.AlbumID
group by sales.AlbumID;


-- 3
-- 创建专辑名为“三十而立”的歌曲视图SongsByAlbumName
-- 该视图包括“歌曲表”中的所有列以及专辑名称
-- 并按歌曲顺序号由小到大排列。


drop view SongsByAlbumName;

create view SongsByAlbumName
as
select songs.*
from songs,albums
where albums.AlbumName='Eye Fever演唱会09'
and albums.AlbumID=songs.AlbumID;
-- order by songs.SongNumber;

select * from SongsByAlbumName;

update SongsByAlbumName
set SongTitle='钱钱钱钱'
where SongID=1;

-- CREATE VIEW Student_CS
-- AS
-- SELECT Sno, Sname, Sage,Sdept
-- FROM Student
-- WHERE Sdept= '计算机'