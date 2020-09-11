 CREATE database MusicData;
 
 -- 创建用户表
 CREATE TABLE Users(
UserName         varchar(20)  PRIMARY KEY,
UserPassword     varchar(6),
UserSex	         char(2),
UserRealName     varchar(20),
UserAgeRange	 char(8),
UserAddress	     varchar(256),
UserPostCode     char(6),
UserPhone	     varchar(32),
UserEmail	     varchar(50),
UserRegisterTime datetime,
UserAdvancePayment numeric(8,2));

--  创建“专辑表”Album
CREATE TABLE Albums(
AlbumID            int AUTO_INCREMENT PRIMARY KEY,
AlbumName          varchar(64) not null,
AlbumIssueCompany  varchar(64),
AlbumIssueDate     datetime,
AlbumType          int,
AlbumIntroduce     varchar(4096),
AlbumImageUrl      varchar(200),                       
AlbumSinger        varchar(32) ,
AlbumLanguage      varchar(10),
AlbumMarketPrice   numeric(6,2),
AlbumMemberPrice   numeric(6,2),
AlbumIsRecommend   bit);

-- 创建“歌曲表”Songs
CREATE TABLE Songs(
SongID	int auto_increment primary key,
SongNumber       int,
AlbumID  	     int,
SongTitle	     varchar(256) NOT NULL,
SongDuration	 char(8),
SongContent      varchar(4096),
SongUploadDate	 datetime ,
SongUrl	         varchar(200),
SongFormat       varchar(10),
SongLanguage     varchar(10),
SongType         int,
SongSinger	     varchar(32),		
SongIsRecommend	 bit
);

-- 创建“收藏表”Collections
CREATE TABLE Collections(
SongID		 	int,
UserName        varchar(20),
CollectionDate  date,
PRIMARY KEY
(
	SongID,
	UserName
)
);

-- 创建“订单表”Orders
CREATE TABLE Orders(
OrderID int auto_increment primary key,
OrderDate datetime NULL,
UserName varchar(20) null,
GoodsFee numeric(8,2) null,
DeliverFee numeric(8,2) null,
DeliverID int null,
AreaID int null,
PaymentID int null,
ReceiverName varchar(20) null,
ReceiverAddress varchar(256) null,
ReceiverPostCode char(6) null,
ReceiverPhone varchar(32) null,
ReceiverEmail varchar(50) null,
OrderIsPayment bit null,
OrderIsConsignment bit null,
OrderIsConfirm bit null,
OrderIsPigeonhole  bit null
);

-- 创建“订单项”Sales
CREATE TABLE Sales
(
	OrderID int,
	AlbumID int,
	Quantity int null,
	TotalPrice numeric(10, 2) null,
	PRIMARY KEY
	(
		OrderID,
		AlbumID
	)
);

-- 创建“音乐分类”MUsicCategory
CREATE TABLE MusicCategory(
CategoryID int auto_increment primary key,
CategoryName varchar(20) not null,
CategoryImageUrl varchar(200) null
);