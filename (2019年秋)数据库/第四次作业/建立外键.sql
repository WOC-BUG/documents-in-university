-- 删除外键关联
alter table collections drop foreign key UserID;
alter table orders drop foreign key Song_Order;

-- 给收藏表建立外键UserName
Alter table Collections
add constraint User_Name foreign key (UserName) references Users(UserName);

-- 给收藏表建立外键SongID
Alter table Collections
add constraint Song_ID foreign key (SongID) references Songs(SongID);

-- 将歌曲表的AlbumId建立外键给专辑表
Alter table Songs
add constraint Album_ID foreign key (AlbumID) references Albums(AlbumID)
on delete cascade on update cascade;

-- 将歌曲表的SongType建立外键给音乐类型
Alter table Songs
add constraint Song_Type foreign key (SongType) references musiccategory(CategoryID);

-- 将sales中的OrderID建立外键给orders
Alter table sales
add constraint Sales_ID foreign key (OrderID) references orders(OrderID);

-- 将sales的albumID建立给专辑ID
Alter table sales
add constraint Sale_AlbumID foreign key (AlbumID) references Albums(AlbumID);

-- 将订单的UserName建立给用户名
Alter table Orders
add constraint User_Order foreign key (UserName) references Users(UserName);