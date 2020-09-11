-- 询问

-- 查询所有电影的电影名、时长与上映日期
select name,duration,releasedate
from movie;


-- 查询年龄小于40岁的女演员的姓名和年龄
select name,DATE_FORMAT(FROM_DAYS(TO_DAYS(NOW())-TO_DAYS(birthday)), '%Y')+0 AS age
from artist
where DATE_FORMAT(FROM_DAYS(TO_DAYS(NOW())-TO_DAYS(birthday)), '%Y') <40
and sex='女';

-- 查看演员年龄
SELECT DATE_FORMAT(FROM_DAYS(TO_DAYS(NOW())-TO_DAYS(birthday)), '%Y')+0 AS age FROM artist;

-- 查询所有艺人演出的电影名及角色名
select movie.name,rolename
from artist,movie,participation
where artist.id=participation.artistid 
and movie.id=participation.movieid;

-- 查询全世界各洲（Continent）的名称
select distinct Continent
from country;

-- 查询南美洲人口数量小于1千万的国家，并按人口由多到少排序
select distinct Continent,Population,name
from country
where Continent='South America'
and Population<10000000
order by Population desc;

-- 查询欧洲国家的数量
select count(name) as SumCountry
from country
where Continent='Europe';

-- 查询人最多和人最少的国家的人口数量（0除外）
select min(Population),max(Population)
from country
where Population!=0;

-- 查询演员出生地都有哪些（结果不能重复）
select distinct birthplace
from artist;