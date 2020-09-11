--（4）为Users表、Album表、Songs表和Collections表添加更多的记录。
INSERT INTO Users(UserName,UserPassword,UserSex,UserRealName,UserAgeRange,UserAddress,UserPostCode,UserPhone,UserEmail)
VALUES('wt','123','女','王彤','无可奉告','北京市 朝阳区','100024','13600088855','wangtong@cuc.edu.cn');
INSERT INTO Users(UserName,UserPassword,UserSex,UserRealName,UserAgeRange,UserAddress,UserPostCode,UserPhone,UserEmail)
VALUES('wyh','666','男','王亦宏','18～20岁','北京市 海淀区','100098','13583011235','wyh@cuc.edu.cn');
INSERT INTO Users(UserName,UserPassword,UserSex,UserRealName,UserAgeRange,UserAddress,UserPostCode,UserPhone,UserEmail)
VALUES('小龙女','111','女','黎莉莉','小于18岁','上海市 徐汇区','200018','13901010486','li@sina.com');
INSERT INTO Users(UserName,UserPassword,UserSex,UserRealName,UserAgeRange,UserAddress,UserPostCode,UserPhone,UserEmail)
VALUES('郭大侠','123','男','郭靖','21～30岁','天津市 开发区','300067','13751010461','guojing@sina.com');
INSERT INTO Users(UserName,UserPassword,UserSex,UserRealName,UserAgeRange,UserAddress,UserPostCode,UserPhone,UserEmail)
VALUES('丫丫','yayaya','女','张霞','41～50岁','武汉市 东湖区 ','430077','13064010321','zhangxia@sina.com');

INSERT INTO Albums(AlbumName, AlbumIssueCompany, AlbumIssueDate, AlbumType, AlbumIntroduce, AlbumImageUrl, AlbumSinger, AlbumLanguage, AlbumMarketPrice, AlbumMemberPrice, AlbumIsRecommend)
VALUES('Eye Fever演唱会09','金牌大风','2009-07-10',1,'这是乐迷热切期待的2009年最精彩的演唱会，古巨基继《Guitar Fever》、《Strings Fever》后在演唱会中使用视觉冲击乐迷，《Eye Fever演唱会09》立体特效令乐迷有全新的感受。在2009年4月23至28日于香港红磡体育馆举行的《Eye Fever演唱会09》，古巨基在一连六场个唱中与歌迷们共乐。','~\MusicShopFile\AlbumImage\Eye Fever_古巨基.jpg','古巨基','粤语',100.00,80.00,1);
INSERT INTO Albums(AlbumName, AlbumIssueCompany, AlbumIssueDate, AlbumType, AlbumIntroduce, AlbumImageUrl, AlbumSinger, AlbumLanguage, AlbumMarketPrice, AlbumMemberPrice, AlbumIsRecommend)
VALUES('F.ONE','福茂唱片','2009-07-10',1,'出道九年的范范(范玮琪)，在2009年最新专辑《F ONE》打开心屝，不论在音乐风格或造型上，挑战极限尺度。音乐班底方面，范范请来金曲奖制作人阿弟仔、词曲创作人小安、小宇、韦礼安，以及老搭档姚若龙、陈小霞、王雅君组成，以多元化的曲风包括中板摇滚、三拍圆舞曲、R&B等打造这张全新概念专辑。','~\MusicShopFile\AlbumImage\F.ONE_范玮琪.jpg','范玮琪','汉语普通话',110.00,85.00,1);
INSERT INTO Albums(AlbumName, AlbumIssueCompany, AlbumIssueDate, AlbumType, AlbumIntroduce, AlbumImageUrl, AlbumSinger, AlbumLanguage, AlbumMarketPrice, AlbumMemberPrice, AlbumIsRecommend)
VALUES('公主，我爱你','正大国际','2009-03-10',1,'在距离第一张EP发布整整一年时间的2009年3月10日，曲泉丞的第二张EP《公主，我爱你》与大家见面。这张EP的问世，让大家清楚的看到了曲泉丞一年来的执着与进步。','~\MusicShopFile\AlbumImage\公主我爱你_曲泉丞.jpg','曲泉丞','汉语普通话',90.00,72.00,1);
INSERT INTO Albums(AlbumName, AlbumIssueCompany, AlbumIssueDate, AlbumType, AlbumIntroduce, AlbumImageUrl, AlbumSinger, AlbumLanguage, AlbumMarketPrice, AlbumMemberPrice, AlbumIsRecommend)
VALUES('好多谢安琪呐喊演唱会','新艺宝','2009-07-10',1,'近年来人气急升的谢安琪，继年初在各大流行乐坛颁奖典礼中成为大赢家后，她的第一个《好多谢安琪呐喊演唱会》在2009年5月8日至16日于红馆举行，全场爆满。被封为乐坛接班人，Kay在首个个唱中施展浑身解数，甫出场大唱演唱会主题曲“呐喊”，再加上她所演绎由出道以来的好歌，“姿色份子”、“钟无艳”、“亡命之途”、最新主打歌“年度之歌”和年度金曲“囍帖街”，首首动听，看出她的努力，赢得了观众的口碑。','~\MusicShopFile\AlbumImage\好多_谢安琪.jpg','谢安琪','粤语',80.00,64.00,1);
INSERT INTO Albums(AlbumName, AlbumIssueCompany, AlbumIssueDate, AlbumType, AlbumIntroduce, AlbumImageUrl, AlbumSinger, AlbumLanguage, AlbumMarketPrice, AlbumMemberPrice, AlbumIsRecommend)
VALUES('三十而立','BMG','2009-06-02',1,'《周杰伦：三十而立》三十而立，立身扬名。30岁的杰伦已全方位进入了娱乐圈，在其而立之年推出的这套成名作珍藏版，包含了杰伦出道初期最为经典的创作。让我们回味原汁原味的“周杰伦音乐风”，感受最为纯正的周杰伦。音乐的完美呈现，环绕震撼你的心灵，三十而立的蜕变，回顾，展望，全新周杰伦，最纯正的杰伦风！','~\MusicShopFile\AlbumImage\三十而立_周杰伦.jpg','周杰伦','多国',120.00,100.00,1);
INSERT INTO Albums(AlbumName, AlbumIssueCompany, AlbumIssueDate, AlbumType, AlbumIntroduce, AlbumImageUrl, AlbumSinger, AlbumLanguage, AlbumMarketPrice, AlbumMemberPrice, AlbumIsRecommend)
VALUES('时间','金牌大风','2009-07-08',1,'是等待让时间的流逝具有特殊的意义，还是时间的意义让等待在年华中成为必需？让周笔畅来告诉你答案。韶华流转，“周”而复始，她渐行渐入到风光好景，她的“笔”迹，是一条蜿蜒的曲线，但始终朝着一往无前的方向。','~\MusicShopFile\AlbumImage\时间_周笔畅.jpg','周笔畅','多国',80.00,64.00,1);
INSERT INTO Albums(AlbumName, AlbumIssueCompany, AlbumIssueDate, AlbumType, AlbumIntroduce, AlbumImageUrl, AlbumSinger, AlbumLanguage, AlbumMarketPrice, AlbumMemberPrice, AlbumIsRecommend)
VALUES('心的东方','爱贝克思','2009-07-10',1,'来自中国四川的藏族少女，被Avex力捧的新人女歌手阿兰，凭悦耳的歌声和漂亮的外表被日本的Avex唱片公司看中签约成为歌手。2007年11月以日语单曲“Ashita Heno Sanka”正式在日本出道。由2008年7月起，阿兰以地球的五大原素—地、空、风、火和水为主题，展开单曲五连发企划，其中为吴宇森执导，亚洲巨星合演的历史矩作《赤壁》两部曲的主题曲 —由音乐大师岩代太郎作曲的“Red Cliff - 心.战 -”和“赤壁～大江东去～”，她以悦耳歌声唱出三国群雄舞台的激荡，演绎备受赞赏。','~\MusicShopFile\AlbumImage\心的东方_阿兰.jpg','阿兰.达瓦卓玛','汉语普通话',80.00,64.00,1);
INSERT INTO Albums(AlbumName, AlbumIssueCompany, AlbumIssueDate, AlbumType, AlbumIntroduce, AlbumImageUrl, AlbumSinger, AlbumLanguage, AlbumMarketPrice, AlbumMemberPrice, AlbumIsRecommend)
VALUES('幸福遇见','爱贝克思','2009-07-10',1,'金钟奖视后林依晨演技精湛不容置疑，自从2004年为偶像剧《爱情合约》献声翻唱“孤单北半球”而大受欢迎。在影迷的期待之下，2009年5月，依晨终于正式加入乐坛，推出首张汉语普通话专辑《幸福遇见》。新专辑曲风配合依晨一贯的清新、自然且可爱的形象，主打歌“甜蜜花园”由她首次尝试填词，在大小提琴的伴奏下满载幸福，成为09夏日幸福的序曲。','~\MusicShopFile\AlbumImage\幸福遇见_林依晨.jpg','林依晨','汉语普通话',80.00,64.00,1);
INSERT INTO Albums(AlbumName, AlbumIssueCompany, AlbumIssueDate, AlbumType, AlbumIntroduce, AlbumImageUrl, AlbumSinger, AlbumLanguage, AlbumMarketPrice, AlbumMemberPrice, AlbumIsRecommend)
VALUES('Follow','爱贝克思','2009-05-20',1,'暂无 ','~\MusicShopFile\AlbumImage\Follow_周柏豪.JPG','周柏豪','汉语普通话',80.00,64.00,0);
INSERT INTO Albums(AlbumName, AlbumIssueCompany, AlbumIssueDate, AlbumType, AlbumIntroduce, AlbumImageUrl, AlbumSinger, AlbumLanguage, AlbumMarketPrice, AlbumMemberPrice, AlbumIsRecommend)
VALUES('Paradise','爱贝克思','2009-05-20',1,'暂无 ','~\MusicShopFile\AlbumImage\Paradise_陈乃容.JPG','陈乃容','英语',90.00,70.00,0);
INSERT INTO Albums(AlbumName, AlbumIssueCompany, AlbumIssueDate, AlbumType, AlbumIntroduce, AlbumImageUrl, AlbumSinger, AlbumLanguage, AlbumMarketPrice, AlbumMemberPrice, AlbumIsRecommend)
VALUES('魔杰座','爱贝克思','2009-07-01',1,'暂无 ','~\MusicShopFile\AlbumImage\魔杰座_周杰伦.JPG','周杰伦','粤语',100.00,80.00,0);
INSERT INTO Albums(AlbumName, AlbumIssueCompany, AlbumIssueDate, AlbumType, AlbumIntroduce, AlbumImageUrl, AlbumSinger, AlbumLanguage, AlbumMarketPrice, AlbumMemberPrice, AlbumIsRecommend)
VALUES('Ring','爱贝克思','2009-05-20',1,'暂无 ','~\MusicShopFile\AlbumImage\Ring_加藤ミリヤ.JPG','加藤ミリヤ','日语',90.00,70.00,0);
INSERT INTO Albums(AlbumName, AlbumIssueCompany, AlbumIssueDate, AlbumType, AlbumIntroduce, AlbumImageUrl, AlbumSinger, AlbumLanguage, AlbumMarketPrice, AlbumMemberPrice, AlbumIsRecommend)
VALUES('Thriller','爱贝克思','2007-05-20',1,'暂无 ','~\MusicShopFile\AlbumImage\Thriller_Michael Jackson.JPG','Michael Jackson','英语',100.00,80.00,1);
INSERT INTO Albums(AlbumName, AlbumIssueCompany, AlbumIssueDate, AlbumType, AlbumIntroduce, AlbumImageUrl, AlbumSinger, AlbumLanguage, AlbumMarketPrice, AlbumMemberPrice, AlbumIsRecommend)
VALUES('阿密特','爱贝克思','2009-08-01',1,'暂无 ','~\MusicShopFile\AlbumImage\阿密特_张惠妹.JPG','张惠妹','粤语',100.00,80.00,0);
INSERT INTO Albums(AlbumName, AlbumIssueCompany, AlbumIssueDate, AlbumType, AlbumIntroduce, AlbumImageUrl, AlbumSinger, AlbumLanguage, AlbumMarketPrice, AlbumMemberPrice, AlbumIsRecommend)
VALUES('江湖男人','爱贝克思','2009-08-01',1,'暂无 ','~\MusicShopFile\AlbumImage\江湖男人_张俊.JPG','张俊','汉语普通话',100.00,80.00,0);
INSERT INTO Albums(AlbumName, AlbumIssueCompany, AlbumIssueDate, AlbumType, AlbumIntroduce, AlbumImageUrl, AlbumSinger, AlbumLanguage, AlbumMarketPrice, AlbumMemberPrice, AlbumIsRecommend)
VALUES('静茹&情歌','爱贝克思','2009-08-01',1,'暂无 ','~\MusicShopFile\AlbumImage\静茹&情歌_梁静茹.JPG','梁静茹','汉语普通话',100.00,80.00,0);
INSERT INTO Albums(AlbumName, AlbumIssueCompany, AlbumIssueDate, AlbumType, AlbumIntroduce, AlbumImageUrl, AlbumSinger, AlbumLanguage, AlbumMarketPrice, AlbumMemberPrice, AlbumIsRecommend)
VALUES('最炫民族风','爱贝克思','2009-07-01',8,'暂无 ','~\MusicShopFile\AlbumImage\最炫民族风_凤凰传奇.JPG','凤凰传奇','汉语普通话',100.00,80.00,1);
INSERT INTO Albums(AlbumName, AlbumIssueCompany, AlbumIssueDate, AlbumType, AlbumIntroduce, AlbumImageUrl, AlbumSinger, AlbumLanguage, AlbumMarketPrice, AlbumMemberPrice, AlbumIsRecommend)
VALUES('世纪好歌','爱贝克思','2009-07-01',8,'暂无 ','~\MusicShopFile\AlbumImage\世纪好歌_香港杂锦合辑.jpg','香港杂锦合辑','粤语',100.00,70.00,0);

INSERT INTO Songs(SongNumber, AlbumID, SongTitle, SongDuration, SongContent, SongUploadDate, SongUrl, SongFormat, SongLanguage, SongType, SongSinger, SongIsRecommend) VALUES(1,1,'钱钱钱钱','0:4:10','暂无','2009-07-10','~\MusicShopFile\AlbumMusic\1_Eye Fever演唱会09\1_钱钱钱钱.mp3','MP3','粤语',1,'古巨基',0);
INSERT INTO Songs(SongNumber, AlbumID, SongTitle, SongDuration, SongContent, SongUploadDate, SongUrl, SongFormat, SongLanguage, SongType, SongSinger, SongIsRecommend) VALUES(2,1,'年年有今日','0:3:43','暂无','2009-07-10','~\MusicShopFile\AlbumMusic\1_Eye Fever演唱会09\2_年年有今日.mp3','MP3','粤语',1,'古巨基',0);
INSERT INTO Songs(SongNumber, AlbumID, SongTitle, SongDuration, SongContent, SongUploadDate, SongUrl, SongFormat, SongLanguage, SongType, SongSinger, SongIsRecommend) VALUES(3,1,'花洒','0:3:43','暂无','2009-07-10','~\MusicShopFile\AlbumMusic\1_Eye Fever演唱会09\3_花洒.mp3','MP3','粤语',1,'古巨基',1);
INSERT INTO Songs(SongNumber, AlbumID, SongTitle, SongDuration, SongContent, SongUploadDate, SongUrl, SongFormat, SongLanguage, SongType, SongSinger, SongIsRecommend) VALUES(4,1,'几时再见','0:3:43','暂无','2009-07-10','~\MusicShopFile\AlbumMusic\1_Eye Fever演唱会09\4_几时再见.mp3','MP3','粤语',1,'古巨基',1);
INSERT INTO Songs(SongNumber, AlbumID, SongTitle, SongDuration, SongContent, SongUploadDate, SongUrl, SongFormat, SongLanguage, SongType, SongSinger, SongIsRecommend) VALUES(5,1,'下次再见','0:3:43','暂无','2009-07-10','~\MusicShopFile\AlbumMusic\1_Eye Fever演唱会09\5_下次再见.mp3','MP3','粤语',1,'古巨基',0);
INSERT INTO Songs(SongNumber, AlbumID, SongTitle, SongDuration, SongContent, SongUploadDate, SongUrl, SongFormat, SongLanguage, SongType, SongSinger, SongIsRecommend) VALUES (1, 2, '1到10=我和你', '0:4:10  ', '暂无', '2009-07-10', '~\MusicShopFile\AlbumMusic\2_F.ONE\1_你和我.mp3', 'MP3', '汉语普通话', 1, '范玮琪', 1);
INSERT INTO Songs(SongNumber, AlbumID, SongTitle, SongDuration, SongContent, SongUploadDate, SongUrl, SongFormat, SongLanguage, SongType, SongSinger, SongIsRecommend) VALUES (2, 2, '想知道现在你好不好', '0:4:10  ', '暂无', '2009-07-10', '~\MusicShopFile\AlbumMusic\2_F.ONE\2_想知道现在你好不好.mp3', 'MP3', '汉语普通话', 1, '范玮琪', 1);
INSERT INTO Songs(SongNumber, AlbumID, SongTitle, SongDuration, SongContent, SongUploadDate, SongUrl, SongFormat, SongLanguage, SongType, SongSinger, SongIsRecommend) VALUES (3, 2, '起风', '0:4:10  ', '暂无', '2009-07-10', '~\MusicShopFile\AlbumMusic\2_F.ONE\3_起风.mp3', 'MP3', '汉语普通话', 1, '范玮琪', 0);
INSERT INTO Songs(SongNumber, AlbumID, SongTitle, SongDuration, SongContent, SongUploadDate, SongUrl, SongFormat, SongLanguage, SongType, SongSinger, SongIsRecommend) VALUES (4, 2, '灰色的彩虹', '0:4:10  ', '暂无', '2009-07-10', '~\MusicShopFile\AlbumMusic\2_F.ONE\4_灰色的彩虹.mp3', 'MP3', '汉语普通话', 1, '范玮琪', 0);
INSERT INTO Songs(SongNumber, AlbumID, SongTitle, SongDuration, SongContent, SongUploadDate, SongUrl, SongFormat, SongLanguage, SongType, SongSinger, SongIsRecommend) VALUES (5, 2, '傻的可以', '0:4:10  ', '暂无', '2009-07-10', '~\MusicShopFile\AlbumMusic\2_F.ONE\5_傻的可以.mp3', 'MP3', '汉语普通话', 1, '范玮琪', 1);
INSERT INTO Songs(SongNumber, AlbumID, SongTitle, SongDuration, SongContent, SongUploadDate, SongUrl, SongFormat, SongLanguage, SongType, SongSinger, SongIsRecommend) VALUES (6, 2, '对不起', '0:4:10  ', '暂无', '2009-07-10', '~\MusicShopFile\AlbumMusic\2_F.ONE\6_对不起.mp3', 'MP3', '汉语普通话', 1, '范玮琪', 0);
INSERT INTO Songs(SongNumber, AlbumID, SongTitle, SongDuration, SongContent, SongUploadDate, SongUrl, SongFormat, SongLanguage, SongType, SongSinger, SongIsRecommend) VALUES (7, 2, '别再生了', '0:4:10  ', '暂无', '2009-07-10', '~\MusicShopFile\AlbumMusic\2_F.ONE\7_别再生了.mp3', 'MP3', '汉语普通话', 1, '范玮琪', 1);
INSERT INTO Songs(SongNumber, AlbumID, SongTitle, SongDuration, SongContent, SongUploadDate, SongUrl, SongFormat, SongLanguage, SongType, SongSinger, SongIsRecommend) VALUES (8, 2, '没把握', '0:4:10  ', '暂无', '2009-07-10', '~\MusicShopFile\AlbumMusic\2_F.ONE\8_没把握.mp3', 'MP3', '汉语普通话', 1, '范玮琪', 0);
INSERT INTO Songs(SongNumber, AlbumID, SongTitle, SongDuration, SongContent, SongUploadDate, SongUrl, SongFormat, SongLanguage, SongType, SongSinger, SongIsRecommend) VALUES (9, 2, '爱的盲点', '0:4:10  ', '暂无', '2009-07-10', '~\MusicShopFile\AlbumMusic\2_F.ONE\9_爱的盲点.mp3', 'MP3', '汉语普通话', 1, '范玮琪', 1);
INSERT INTO Songs(SongNumber, AlbumID, SongTitle, SongDuration, SongContent, SongUploadDate, SongUrl, SongFormat, SongLanguage, SongType, SongSinger, SongIsRecommend) VALUES (10, 2, '微笑说再见', '0:4:10  ', '暂无', '2009-07-10', '~\MusicShopFile\AlbumMusic\2_F.ONE\10_微笑说再见.mp3', 'MP3', '汉语普通话', 1, '范玮琪', 0);

INSERT INTO Collections VALUES(1,'wt','2014-05-01');
INSERT INTO Collections VALUES(2,'wt','2015-05-01');
INSERT INTO Collections VALUES(1,'wyh','2013-05-15');
INSERT INTO Collections VALUES(2,'wyh','2015-05-20');
INSERT INTO Collections VALUES(3,'wyh','2016-05-21');
INSERT INTO Collections VALUES(4,'wyh','2016-05-23');
INSERT INTO Collections VALUES(5,'wyh','2017-05-20');

INSERT MusicCategory (CategoryName, CategoryImageUrl) VALUES ('流行/Pop', '~\MusicShopFile\AlbumCategory\Category_01.gif');
INSERT MusicCategory (CategoryName, CategoryImageUrl) VALUES ('古典音乐', '~\MusicShopFile\AlbumCategory\Category_02.gif');
INSERT MusicCategory (CategoryName, CategoryImageUrl) VALUES ('乡村民谣', '~\MusicShopFile\AlbumCategory\Category_03.gif');
INSERT MusicCategory (CategoryName, CategoryImageUrl) VALUES ('轻音乐', '~\MusicShopFile\AlbumCategory\Category_04.gif');
INSERT MusicCategory (CategoryName, CategoryImageUrl) VALUES ('舞曲', '~\MusicShopFile\AlbumCategory\Category_05.gif');
INSERT MusicCategory (CategoryName, CategoryImageUrl) VALUES ('军营歌曲', '~\MusicShopFile\AlbumCategory\Category_06.gif');
INSERT MusicCategory (CategoryName, CategoryImageUrl) VALUES ('影视乐曲', '~\MusicShopFile\AlbumCategory\Category_07.gif');
INSERT MusicCategory (CategoryName, CategoryImageUrl) VALUES ('民族音乐', '~\MusicShopFile\AlbumCategory\Category_08.gif');
INSERT MusicCategory (CategoryName, CategoryImageUrl) VALUES ('宗教音乐', '~\MusicShopFile\AlbumCategory\Category_09.gif');
INSERT MusicCategory (CategoryName, CategoryImageUrl) VALUES ('其他', '~\MusicShopFile\AlbumCategory\Category_10.gif');

INSERT Orders (OrderDate, UserName, GoodsFee, DeliverFee, DeliverID, AreaID, PaymentID, ReceiverName, ReceiverAddress, ReceiverPostCode, ReceiverPhone, ReceiverEmail, OrderIsPayment, OrderIsConsignment, OrderIsConfirm, OrderIsPigeonhole) VALUES ('2018-10-04', 'wt', 655.00, 4.00, 1, 1, 1, '王良', '北京市 海淀区', '100098', '82136688', 'wl@sina.com', 1, 1, 1, 1);
INSERT Orders (OrderDate, UserName, GoodsFee, DeliverFee, DeliverID, AreaID, PaymentID, ReceiverName, ReceiverAddress, ReceiverPostCode, ReceiverPhone, ReceiverEmail, OrderIsPayment, OrderIsConsignment, OrderIsConfirm, OrderIsPigeonhole) VALUES ('2017-11-04', 'wyh', 260.00, 4.00, 1, 1, 1, '李晓', '北京市 朝阳区', '100024', '65758696', NULL, 1, 1, 1, 1);
INSERT Orders (OrderDate, UserName, GoodsFee, DeliverFee, DeliverID, AreaID, PaymentID, ReceiverName, ReceiverAddress, ReceiverPostCode, ReceiverPhone, ReceiverEmail, OrderIsPayment, OrderIsConsignment, OrderIsConfirm, OrderIsPigeonhole) VALUES ('2017-12-04', 'wyh', 260.00, 4.00, 1, 1, 1, '李晓', '北京市 朝阳区', '100024', '65758696', NULL, 1, 1, 1, 1);
INSERT Orders (OrderDate, UserName, GoodsFee, DeliverFee, DeliverID, AreaID, PaymentID, ReceiverName, ReceiverAddress, ReceiverPostCode, ReceiverPhone, ReceiverEmail, OrderIsPayment, OrderIsConsignment, OrderIsConfirm, OrderIsPigeonhole) VALUES ('2017-05-11', 'sj', 80.00, 4.00, 1, 1, 2, '宋键', '北京市 朝阳区', '100024', '65778909', NULL, 1, 1, 1, 1);

INSERT Sales (OrderID, AlbumID, Quantity, TotalPrice) VALUES (1, 2, 3, 255.00);
INSERT Sales (OrderID, AlbumID, Quantity, TotalPrice) VALUES (1, 18, 5, 400.00);
INSERT Sales (OrderID, AlbumID, Quantity, TotalPrice) VALUES (2, 5, 1, 100.00);
INSERT Sales (OrderID, AlbumID, Quantity, TotalPrice) VALUES (2, 18, 2, 160.00);
INSERT Sales (OrderID, AlbumID, Quantity, TotalPrice) VALUES (3, 5, 1, 100.00);
INSERT Sales (OrderID, AlbumID, Quantity, TotalPrice) VALUES (3, 18, 2, 160.00);
INSERT Sales (OrderID, AlbumID, Quantity, TotalPrice) VALUES (4, 17, 1, 80.00);
