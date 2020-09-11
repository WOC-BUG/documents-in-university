-- 查找收藏歌曲在2首及以上的用户及其收藏的歌曲数（至少2种实现方式）
-- 方法一
select distinct UserName,count(UserName) SongNumber
from collections
group by UserName
having count(UserName)>=2;

-- 方法二，做内连接
select distinct(a.UserName)
from collections a 
inner join collections b 
on a.UserName=b.UserName
where a.SongID != b.SongID;
-- select distinct x.UserName,count(x.UserName) SongNumber
-- from collections x,collections y
-- where x.UserName=y.UserName
-- and x.SongID=y.SongID
-- group by x.UserName
-- having count(x.UserName)>=2;


-- 查找所包含的歌曲数大于等于10首的专辑，显示专辑名和所包含的歌曲数
-- 方法一
select distinct AlbumName,count(songs.AlbumID) as SongNumber
from songs,albums
where songs.AlbumID = albums.AlbumID
group by songs.AlbumID,albums.AlbumName
having count(songs.AlbumID)>=10;
-- 方法二
select * from albums inner join(
select songs.AlbumID,count(*) total
from songs
group by songs.AlbumID
having count(*)>=10) a where albums.AlbumID=a.AlbumID;


-- DATEDIFF( now(),AlbumIssueDate)
-- 查找最近10年来（now（））的专辑销售情况，列出专辑ID、专辑名称、总销售额，按总销售从高到低排名。
select distinct sales.AlbumID,AlbumName,sum(TotalPrice) TOTAL
from albums,sales,orders
where  albums.AlbumID = sales.AlbumID
and sales.OrderID=orders.OrderID
and year(OrderDate) between year(now())-10 and year(now())
-- and TIMESTAMPDIFF(year,AlbumIssueDate,now())<=10
group by albums.AlbumID,albums.AlbumName
order by TOTAL desc;

-- 查询没有被收藏过的歌曲
-- 方法一
select *
from songs
where songs.SongID
not in(select SongID from collections);
-- 方法二,左外连接
select * 
from songs left outer join collections
on songs.SongID = collections.SongID
where collections.SongID is null;

-- 方法三
select * from songs where not exists (
	select * from users where exists(
		select * from collections 
        where collections.SongID = songs.SongID
        and collections.UserName = users.UserName
	)
);

-- 在购买了歌手刘欢专辑的客户中查询一次购买数量最多的客户的用户名
-- 方法一
select * from orders where OrderID in(
select OrderID from sales where Quantity >= all(
select Quantity
from sales
where AlbumID
in (select AlbumID 
from albums
where albums.albumSinger='周杰伦')));
-- select UserName
-- from albums,sales,orders
-- where albums.AlbumSinger='刘欢'
-- and albums.AlbumID=sales.AlbumID
-- group by sales.AlbumID
-- having max(Quantity);

-- 测试用
-- select UserName,max(Quantity),sales.AlbumID
-- from albums,sales,orders
-- where albums.AlbumSinger='香港杂锦合辑'
-- and albums.AlbumID=sales.AlbumID
-- group by sales.AlbumID
-- having max(Quantity);



-- 查找被所有用户收藏的歌曲
-- （两种实现方式：相关嵌套查询、不相关嵌套查询）
-- 相关嵌套查询
select distinct SongTitle
from songs
where SongID in
(select SongID
from collections
where collections.SongID = songs.SongID);

-- 不相关嵌套查询
select distinct SongTitle
from songs
where songs.SongID in
(select collections.SongID
from collections);

-- 查找一首歌曲都没有收藏的用户。
-- （两种实现方式：相关嵌套查询、连接查询）
-- 相关嵌套查询
select userName
from users
where UserName != all
(select UserName
from collections
);

-- 连接查询
select users.UserName
from users left outer join collections
on users.UserName= collections.UserName
where collections.UserName is null;