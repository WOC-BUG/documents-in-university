-- 清除数据--------------------------------------------------
SET SQL_SAFE_UPDATES = 0;

DELETE 
FROM xjg
where userID="404" or newsID="404" or title="404" or content="404" or publishtime="404";

delete
from xjg
where userID="NULL" or newsID="NULL" or title="NULL" or content="NULL" or publishtime="NULL";

select count(*) from xjg;
select * from xjg;

-- uv--------------------------------------------------
SELECT DATE(FROM_UNIXTIME(clicktime)),COUNT(distinct userID)as uv
FROM xjg
GROUP BY DATE(FROM_UNIXTIME(clicktime))
ORDER BY uv DESC limit 5;

-- pv--------------------------------------------------
SELECT DATE(FROM_UNIXTIME(clicktime)),COUNT(*)as pv
FROM xjg
GROUP BY DATE(FROM_UNIXTIME(clicktime))
ORDER BY COUNT(*) DESC limit 5;



-- 查询3月份十大热点新闻，列出ID及标题
-- 热点新闻：访问用户最多（非访问量）的新闻。
SELECT newsid,title,count(distinct userid)
FROM xjg
where month(FROM_UNIXTIME(clicktime))=3
GROUP BY newsid
ORDER BY count(distinct userid) desc limit 10;

-- 查询3月份的排名前三的忠实用户
-- 忠实用户：每天都访问网站的用户
SELECT distinct userid
FROM xjg
where month(FROM_UNIXTIME(clicktime))=3
group by userid
HAVING count(distinct day(FROM_UNIXTIME(clicktime)))=31
order by count(*) desc limit 3;

-- 查询3月份排名前十的活跃用户，按从大到小排序
-- 活跃用户：用户的日平均访问次数较多的用户
SELECT userid, count(userid)/31
from xjg
where month(FROM_UNIXTIME(clicktime))=3
group by userid
ORDER BY count(userid) desc limit 10;