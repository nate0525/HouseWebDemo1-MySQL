/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.27 : Database - houseweb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`houseweb` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `houseweb`;

/*Table structure for table `citycode` */

DROP TABLE IF EXISTS `citycode`;

CREATE TABLE `citycode` (
  `citycode` int(11) DEFAULT NULL,
  `cityname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cityname2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `citycode` */

insert  into `citycode`(`citycode`,`cityname`,`cityname2`) values (1,'广州','guangzhou'),(2,'深圳','shenzhen'),(3,'东莞','dongguan');

/*Table structure for table `gardenname` */

DROP TABLE IF EXISTS `gardenname`;

CREATE TABLE `gardenname` (
  `gardenCode` int(11) DEFAULT NULL,
  `gardenName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `gardenname` */

insert  into `gardenname`(`gardenCode`,`gardenName`) values (1,'罗马家园'),(2,'骏景花园'),(3,'棠德花园'),(4,'金碧花园'),(5,'岭南新世界');

/*Table structure for table `housesindongguan` */

DROP TABLE IF EXISTS `housesindongguan`;

CREATE TABLE `housesindongguan` (
  `rentalorsale` varchar(5) COLLATE utf8_bin DEFAULT NULL COMMENT '出租房或售卖房',
  `neworold` varchar(5) COLLATE utf8_bin DEFAULT NULL COMMENT '新房或二手房',
  `liveorwork` varchar(5) COLLATE utf8_bin DEFAULT NULL COMMENT '居住房或工作房',
  `gardenName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `houseCode` int(11) NOT NULL,
  `houseName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `housePrice` float DEFAULT NULL,
  `houseBig` float DEFAULT NULL,
  `houseInfo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `publisher` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `houseImg` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`houseCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `housesindongguan` */

insert  into `housesindongguan`(`rentalorsale`,`neworold`,`liveorwork`,`gardenName`,`houseCode`,`houseName`,`housePrice`,`houseBig`,`houseInfo`,`publisher`,`houseImg`) values ('0','0','0','罗马家园',1,'东莞-罗马家园 实用三房 高层望小蛮腰 保养新静',10000,107.92,'三房带主套 保养新静 户型方正实用 高层望海珠湖','Bill Gates','img/house/dongguan/1.PNG'),('0','0','0','罗马家园',2,'东莞-罗马家园 精致三房 南北向 安静舒适',10000,145.4,'南北通透 阳光充足 视野开阔','Bill Gates','img/house/dongguan/2.PNG'),('0','0','0','罗马家园',3,'东莞-罗马家园 中空复式 精致装修',10000,273.93,'南北对流，带入户花园，保养新净。','Bill Gates','img/house/dongguan/3.PNG'),('0','0','0','罗马家园',4,'东莞-罗马家园 三房带主套 位置安静舒适',10000,129,'三房带主套 南北对流 位置安静','Bill Gates','img/house/dongguan/4.PNG'),('0','0','0','罗马家园',5,'东莞-罗马家园 温馨实用三房 格局方正 安静舒适 精致3房',10000,91,'安静舒适 精致3房','Bill Gates','img/house/dongguan/5.PNG'),('1','1','1','珠江新城',6,'东莞-珠江新城 纯南向三房 安静看花园',1000000,117,'南向 采光好 安静看花园 过五唯一 ','Bill Gates','img/house/dongguan/6.PNG'),('1','1','1','珠江新城',7,'东莞-两房 地铁珠江新城站',1000000,61,'格局方正，珠江新城站','Bill Gates','img/house/dongguan/7.PNG'),('1','1','1','珠江新城',8,'东莞-刚需两房 配套成熟 交通便利 商务地段 随时看房',1000000,75,'商务地段 交通便利 配套成熟 品质小区 ','Bill Gates','img/house/dongguan/8.PNG'),('1','1','1','珠江新城',9,'东莞-珠江新城 交通便利 经典大复式单价5万一方',1000000,157,'珠江新城 交通便利 经典大复式；单价只需5万一方 ','Bill Gates','img/house/dongguan/9.PNG'),('1','1','1','珠江新城',10,'东莞-珠江新城东 精美两房 楼龄新',1000000,75,'地理位置好 交通发达 配套完善 ','Bill Gates','img/house/dongguan/10.PNG'),('0','0','0','123',11,'123',123,123,'123',NULL,'img/house/dongguan/11.jpg'),('0','0','0','123',12,'123',123,123,'123','1234',NULL);

/*Table structure for table `housesinguangzhou` */

DROP TABLE IF EXISTS `housesinguangzhou`;

CREATE TABLE `housesinguangzhou` (
  `rentalorsale` varchar(5) COLLATE utf8_bin NOT NULL COMMENT '0出租房或1售卖房',
  `neworold` varchar(5) COLLATE utf8_bin NOT NULL COMMENT '0新房或1二手房',
  `liveorwork` varchar(5) COLLATE utf8_bin NOT NULL COMMENT '0居住房或1工作房',
  `gardenName` varchar(100) COLLATE utf8_bin NOT NULL,
  `houseCode` int(11) NOT NULL,
  `houseName` varchar(100) COLLATE utf8_bin NOT NULL,
  `housePrice` float NOT NULL,
  `houseBig` float NOT NULL,
  `houseInfo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `publisher` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `houseImg` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`houseCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `housesinguangzhou` */

insert  into `housesinguangzhou`(`rentalorsale`,`neworold`,`liveorwork`,`gardenName`,`houseCode`,`houseName`,`housePrice`,`houseBig`,`houseInfo`,`publisher`,`houseImg`) values ('0','0','0','罗马家园',1,'罗马家园 实用三房 高层望小蛮腰 保养新静',10000,145,'三房带主套 保养新静 户型方正实用 高层望海珠湖','123','img/house/guangzhou/1.PNG'),('0','0','0','罗马家园',2,'罗马家园 精致三房 南北向 安静舒适',10000,134.17,'南北通透 阳光充足 视野开阔','123','img/house/guangzhou/2.PNG'),('0','0','0','罗马家园',3,'罗马家园 中空复式 精致装修',10000,158.15,'南北对流，带入户花园，保养新净。','123','img/house/guangzhou/3.PNG'),('0','0','0','罗马家园',4,'罗马家园 三房带主套 位置安静舒适',10000,91.14,'三房带主套 南北对流 位置安静','123','img/house/guangzhou/4.PNG'),('0','0','0','罗马家园',5,'罗马家园 温馨实用三房 格局方正 安静舒适 精致3房',10000,91.14,'安静舒适 精致3房','123','img/house/guangzhou/5.PNG'),('0','0','0','珠江新城',6,'珠江新城 纯南向三房 安静看花园',10000,128.43,'南向 采光好 安静看花园 过五唯一 ','123','img/house/guangzhou/6.PNG'),('0','0','0','珠江新城',7,'两房 地铁珠江新城站',10000,108,'格局方正，珠江新城站','123','img/house/guangzhou/7.PNG'),('0','0','0','珠江新城',8,'刚需两房 配套成熟 交通便利 商务地段 随时看房',10000,107.92,'商务地段 交通便利 配套成熟 品质小区 ','123','img/house/guangzhou/8.PNG'),('0','0','0','珠江新城',9,'珠江新城 交通便利 经典大复式单价5万一方',10000,91.14,'珠江新城 交通便利 经典大复式；单价只需5万一方 ','123','img/house/guangzhou/9.PNG'),('0','0','0','珠江新城',10,'珠江新城东 精美两房 楼龄新',10000,91.14,'地理位置好 交通发达 配套完善 ','123','img/house/guangzhou/10.PNG'),('1','1','1','森语星园',11,'森语星园 精致一房 视野开阔 采光通风',1000000,31.34,'此房为精致一房，采光通风，视野开阔','123','img/house/guangzhou/11.PNG'),('1','1','1','鸿威海怡湾',12,'鸿威海怡湾 东南向实用5房 有钥匙随时看',1000000,150.05,'此房满五年，红本在手，交易简便购房成本相对低，东南向实用5房','123','img/house/guangzhou/12.PNG'),('1','1','1','翡翠海岸',13,'翡翠海岸 4室1厅 3000万',1000000,176.53,'链家网真房源，更多房源信息请联系经纪人','123','img/house/guangzhou/13.PNG'),('1','1','1','半岛城邦',14,'半岛城邦一期，高层看海景，无遮挡，赠送48㎡',1000000,221.1,'业主诚心出售，看房子很方便，满五年，赠送48㎡。','1234','img/house/guangzhou/14.PNG'),('1','0','0','晓景苑',16,'三元里大道 晓景苑 精致两房',1000000,64.17,'房子有阳台，户型方正。装修保养的还不错，','Bill Gates','img/house/guangzhou/16.PNG'),('1','0','0','晓景苑',17,'三元里大道棠下 晓景苑小区 低楼层两房',1000000,54.66,'此房满五年非唯一，免增值税，低楼层，光线充足，拎包即可入住。','Bill Gates','img/house/guangzhou/17.PNG'),('1','0','0','晓景苑',18,'晓景苑 2室2厅 168万',1000000,60.68,'链家网真房源，更多房源信息请联系经纪人','Bill Gates','img/house/guangzhou/18.PNG'),('1','0','0','远景新苑',19,'三元里大道 一房一厅 温馨舒适 南向',1000000,41.92,'交通方便，通风采光好','Bill Gates','img/house/guangzhou/19.PNG'),('1','0','0','远景新苑',20,'远景新苑 3室1厅 178万',1000000,66.24,'链家网真房源，更多房源信息请联系经纪人','Bill Gates','img/house/guangzhou/20.PNG'),('1','0','0','远景新苑',21,'三元里大道 远景新苑 南向 居家实用',1000000,73,'南北对流 格局方正 实用经济 采光好','Bill Gates','img/house/guangzhou/21.PNG'),('1','0','0','三元里大道中医院宿舍',22,'三元里大道中医院宿舍 2室1厅 173万',1000000,60.26,'链家网真房源，更多房源信息请联系经纪人','Bill Gates','img/house/guangzhou/22.PNG'),('1','0','0','三元里大道中医院宿舍',23,'三元里大道中医院宿舍 2室1厅 152万',1000000,60,'链家网真房源，更多房源信息请联系经纪人','Bill Gates','img/house/guangzhou/23.PNG'),('1','0','0','正升雅境',24,'三元里大道 正升雅境 电梯高层 精装2房',1000000,71.62,'小区楼龄新 环境好 厅出阳台','Bill Gates','img/house/guangzhou/24.PNG'),('1','1','0','正升雅境',25,'正升雅境 4室2厅 560万',1000000,140,'链家网真房源，更多房源信息请联系经纪人','Bill Gates','img/house/guangzhou/25.PNG'),('1','1','0','正升雅境',26,'三元里大道 正升雅境 精装1房',1000000,46.84,'小区楼龄新 环境好 精装修','Bill Gates','img/house/guangzhou/26.PNG'),('1','1','1','正升雅境',27,'正升雅境 3室2厅 420万',1000000,110,'链家网真房源，更多房源信息请联系经纪人','Bill Gates','img/house/guangzhou/27.PNG'),('1','1','1','正升雅境',28,'三元里 正升雅境 楼龄新 采光好 诚售',1000000,102.84,'楼龄新 格局方正 视野开阔 通风采光好','Bill Gates','img/house/guangzhou/28.PNG'),('1','1','1','正升雅境',29,'三元里 正升雅境 楼龄新 采光好 诚售',900000,102.84,'楼龄新 格局方正 视野开阔 通风采光好','Bill Gates','img/house/guangzhou/29.PNG'),('1','1','1','嘉怡花园',30,'电梯正规两房，中高层，视野开阔，地铁就在楼下',1500000,47.12,'此房过五年唯一，交通便利，配套齐全，厅出阳台光线好','Bill Gates','img/house/guangzhou/30.PNG'),('1','1','1','嘉怡花园',31,'加怡花园 3室2厅 475万',1000000,109,'链家网真房源，更多房源信息请联系经纪人','Bill Gates','img/house/guangzhou/31.PNG'),('1','1','1','嘉怡花园',32,'加怡花园 南向两房 厅直出阳台 保养新净',2000000,74.8,'过五年唯一物业 南向两房 交通便利','Bill Gates','img/house/guangzhou/32.PNG'),('1','1','1','嘉怡花园',33,'加怡花园 电梯中层 温馨两房',2500000,58.5,'生活方便 交通便利 户型方正','Bill Gates','img/house/guangzhou/33.PNG'),('1','1','0','嘉怡花园',34,'加怡花园 南向两房 采光好',3000000,74.8,'交通便利 户型好 高层南向','Bill Gates','img/house/guangzhou/34.PNG'),('0','0','0','嘉怡花园',35,'加怡花园二期 东向无遮 温馨2+1三房',10000,128.43,'生活方便 交通便利 户型方正','Bill Gates','img/house/guangzhou/35.PNG'),('0','0','0','罗马家园',36,'罗马家园 精致三房 南北向 安静舒适',10000,108,'南北通透 阳光充足 视野开阔','Bill Gates','img/house/guangzhou/36.PNG'),('0','0','0','罗马家园',37,'罗马家园 实用两房 户型方正',10000,92,'布局合理。采光以及通风都很好 两房一厅','Bill Gates','img/house/guangzhou/37.PNG'),('0','0','0','罗马家园',38,'罗马家园 楼龄新 保养好 户型方正',10000,92,'罗马家园 保养新净 证过两年','Bill Gates','img/house/guangzhou/38.PNG'),('0','0','0','罗马家园',39,'罗马家园 实用3房 望小蛮腰',10000,108,'罗马家园 户型方正 通风采光好','Bill Gates','img/house/guangzhou/39.PNG'),('0','0','0','罗马家园',40,'罗马家园 三房带主套 东向望花园',2000,128.43,'户型方正 东向望花园 保养新静','Bill Gates','img/house/guangzhou/40.PNG'),('0','0','0','罗马家园',41,'罗马家园 温馨三房 保养新净',4003,90.41,'罗马家园 视野开阔 位置好','Bill Gates','img/house/guangzhou/41.PNG');

/*Table structure for table `housesinshenzhen` */

DROP TABLE IF EXISTS `housesinshenzhen`;

CREATE TABLE `housesinshenzhen` (
  `rentalorsale` varchar(5) COLLATE utf8_bin DEFAULT NULL COMMENT '出租房或售卖房',
  `neworold` varchar(5) COLLATE utf8_bin DEFAULT NULL COMMENT '新房或二手房',
  `liveorwork` varchar(5) COLLATE utf8_bin DEFAULT NULL COMMENT '居住房或工作房',
  `gardenName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `houseCode` int(11) NOT NULL,
  `houseName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `housePrice` float DEFAULT NULL,
  `houseBig` float DEFAULT NULL,
  `houseInfo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `publisher` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `houseImg` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`houseCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `housesinshenzhen` */

insert  into `housesinshenzhen`(`rentalorsale`,`neworold`,`liveorwork`,`gardenName`,`houseCode`,`houseName`,`housePrice`,`houseBig`,`houseInfo`,`publisher`,`houseImg`) values ('0','0','0','罗马家园',1,'深圳-罗马家园 实用三房 高层望小蛮腰 保养新静',10000,107.92,'三房带主套 保养新静 户型方正实用 高层望海珠湖','Bill Gates','img/house/shenzhen/1.PNG'),('0','0','0','罗马家园',2,'深圳-罗马家园 精致三房 南北向 安静舒适',10000,145.4,'南北通透 阳光充足 视野开阔','Bill Gates','img/house/shenzhen/2.PNG'),('0','0','0','罗马家园',3,'深圳-罗马家园 中空复式 精致装修',10000,273.93,'南北对流，带入户花园，保养新净。','Bill Gates','img/house/shenzhen/3.PNG'),('0','0','0','罗马家园',4,'深圳-罗马家园 三房带主套 位置安静舒适',10000,129,'三房带主套 南北对流 位置安静','Bill Gates','img/house/shenzhen/4.PNG'),('0','0','0','罗马家园',5,'深圳-罗马家园 温馨实用三房 格局方正 安静舒适 精致3房',10000,91,'安静舒适 精致3房','Bill Gates','img/house/shenzhen/5.PNG'),('1','1','1','珠江新城',6,'深圳-珠江新城 纯南向三房 安静看花园',1000000,117,'南向 采光好 安静看花园 过五唯一 ','Bill Gates','img/house/shenzhen/6.PNG'),('1','1','1','珠江新城',7,'深圳-两房 地铁珠江新城站',1000000,61,'格局方正，珠江新城站','Bill Gates','img/house/shenzhen/7.PNG'),('1','1','1','珠江新城',8,'深圳-刚需两房 配套成熟 交通便利 商务地段 随时看房',1000000,75,'商务地段 交通便利 配套成熟 品质小区 ','Bill Gates','img/house/shenzhen/8.PNG'),('1','1','1','珠江新城',9,'深圳-珠江新城 交通便利 经典大复式单价5万一方',1000000,157,'珠江新城 交通便利 经典大复式；单价只需5万一方 ','Bill Gates','img/house/shenzhen/9.PNG');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `userId` int(11) NOT NULL,
  `userName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `userPassWord` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `userPhone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `userLevel` int(11) DEFAULT '0',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `t_user` */

insert  into `t_user`(`userId`,`userName`,`userPassWord`,`userPhone`,`userLevel`) values (1,'123','123','15728412469',1),(2,'1234','1234','13148902017',0),(3,'Bill Gates','123','15728412461',1),(4,'123123','123123','15728412465',0);

/*Table structure for table `userfortest` */

DROP TABLE IF EXISTS `userfortest`;

CREATE TABLE `userfortest` (
  `userId` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sex` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `telphone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `userfortest` */

insert  into `userfortest`(`userId`,`username`,`password`,`sex`,`age`,`telphone`) values (1,'111','111',1,11,'1'),(2,'222','222',1,20,'2'),(3,'321','321',0,18,'13148902017'),(4,'444','444',4,44,'4'),(5,'5','5',5,5,'5'),(6,'6','6',6,6,'6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
