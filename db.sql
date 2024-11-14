/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmv0lc9
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmv0lc9` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmv0lc9`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmv0lc9/upload/1620776796205.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmv0lc9/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmv0lc9/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620777042557 DEFAULT CHARSET=utf8 COMMENT='活动交流';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (42,'2021-05-12 07:40:41','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (43,'2021-05-12 07:40:41','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (44,'2021-05-12 07:40:41','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (45,'2021-05-12 07:40:41','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (46,'2021-05-12 07:40:41','帖子标题6','帖子内容6',6,6,'用户名6','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1620777033945,'2021-05-12 07:50:33','66666','<p>用户可以在这里发布信息进行交流的</p>\n<p><img src=\"../../../upload/1620777024612.jpg\" /></p>\n<p>可以对一些有兴趣的事情进行交流的</p>',0,1620776932611,'2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1620777042556,'2021-05-12 07:50:41',NULL,'888',1620777033945,1620776932611,'2',NULL);

/*Table structure for table `huodongbaoming` */

DROP TABLE IF EXISTS `huodongbaoming`;

CREATE TABLE `huodongbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongbiaoti` varchar(200) DEFAULT NULL COMMENT '活动标题',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `baomingshijian` datetime NOT NULL COMMENT '报名时间',
  `baomingneirong` varchar(200) NOT NULL COMMENT '报名内容',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620777000564 DEFAULT CHARSET=utf8 COMMENT='活动报名';

/*Data for the table `huodongbaoming` */

insert  into `huodongbaoming`(`id`,`addtime`,`huodongbiaoti`,`huodongdidian`,`baomingshijian`,`baomingneirong`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`) values (31,'2021-05-12 07:40:41','活动标题1','活动地点1','2021-05-12 07:40:41','报名内容1','1','姓名1','手机1','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`huodongbiaoti`,`huodongdidian`,`baomingshijian`,`baomingneirong`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`) values (32,'2021-05-12 07:40:41','活动标题2','活动地点2','2021-05-12 07:40:41','报名内容2','用户名2','姓名2','手机2','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`huodongbiaoti`,`huodongdidian`,`baomingshijian`,`baomingneirong`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`) values (33,'2021-05-12 07:40:41','活动标题3','活动地点3','2021-05-12 07:40:41','报名内容3','用户名3','姓名3','手机3','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`huodongbiaoti`,`huodongdidian`,`baomingshijian`,`baomingneirong`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`) values (34,'2021-05-12 07:40:41','活动标题4','活动地点4','2021-05-12 07:40:41','报名内容4','用户名4','姓名4','手机4','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`huodongbiaoti`,`huodongdidian`,`baomingshijian`,`baomingneirong`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`) values (35,'2021-05-12 07:40:41','活动标题5','活动地点5','2021-05-12 07:40:41','报名内容5','用户名5','姓名5','手机5','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`huodongbiaoti`,`huodongdidian`,`baomingshijian`,`baomingneirong`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`) values (36,'2021-05-12 07:40:41','活动标题6','活动地点6','2021-05-12 07:40:41','报名内容6','用户名6','姓名6','手机6','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`huodongbiaoti`,`huodongdidian`,`baomingshijian`,`baomingneirong`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`) values (1620777000563,'2021-05-12 07:50:00','校园XX活动','学校礼堂','2021-05-12 07:49:46','我要报名参加','2','王飞','15214121411','是','同意报名');

/*Table structure for table `huodongxinxi` */

DROP TABLE IF EXISTS `huodongxinxi`;

CREATE TABLE `huodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongbiaoti` varchar(200) DEFAULT NULL COMMENT '活动标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `zixundianhua` varchar(200) DEFAULT NULL COMMENT '咨询电话',
  `huodongyaoqiu` longtext COMMENT '活动要求',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='活动信息';

/*Data for the table `huodongxinxi` */

insert  into `huodongxinxi`(`id`,`addtime`,`huodongbiaoti`,`fengmian`,`kaishishijian`,`jieshushijian`,`huodongdidian`,`zixundianhua`,`huodongyaoqiu`) values (21,'2021-05-12 07:40:41','校园XX活动','http://localhost:8080/ssmv0lc9/upload/huodongxinxi_fengmian1.jpg','2021-05-12','2021-06-16','学校礼堂','13823888881','<p><img src=\"http://localhost:8080/ssmv0lc9/upload/1620776726641.jpg\"></p><p><br></p><p>这里可以发布一些相关活动内容要求的，可以图文结合描述，也可以单独图片或者文字描述的，这里的所有内容都是用预测功能的，都是可以自行添加修改删除替换的。</p>');
insert  into `huodongxinxi`(`id`,`addtime`,`huodongbiaoti`,`fengmian`,`kaishishijian`,`jieshushijian`,`huodongdidian`,`zixundianhua`,`huodongyaoqiu`) values (22,'2021-05-12 07:40:41','活动标题2','http://localhost:8080/ssmv0lc9/upload/huodongxinxi_fengmian2.jpg','2021-05-12','2021-05-12','活动地点2','13823888882','活动要求2');
insert  into `huodongxinxi`(`id`,`addtime`,`huodongbiaoti`,`fengmian`,`kaishishijian`,`jieshushijian`,`huodongdidian`,`zixundianhua`,`huodongyaoqiu`) values (23,'2021-05-12 07:40:41','活动标题3','http://localhost:8080/ssmv0lc9/upload/huodongxinxi_fengmian3.jpg','2021-05-12','2021-05-12','活动地点3','13823888883','活动要求3');
insert  into `huodongxinxi`(`id`,`addtime`,`huodongbiaoti`,`fengmian`,`kaishishijian`,`jieshushijian`,`huodongdidian`,`zixundianhua`,`huodongyaoqiu`) values (24,'2021-05-12 07:40:41','活动标题4','http://localhost:8080/ssmv0lc9/upload/huodongxinxi_fengmian4.jpg','2021-05-12','2021-05-12','活动地点4','13823888884','活动要求4');
insert  into `huodongxinxi`(`id`,`addtime`,`huodongbiaoti`,`fengmian`,`kaishishijian`,`jieshushijian`,`huodongdidian`,`zixundianhua`,`huodongyaoqiu`) values (25,'2021-05-12 07:40:41','活动标题5','http://localhost:8080/ssmv0lc9/upload/huodongxinxi_fengmian5.jpg','2021-05-12','2021-05-12','活动地点5','13823888885','活动要求5');
insert  into `huodongxinxi`(`id`,`addtime`,`huodongbiaoti`,`fengmian`,`kaishishijian`,`jieshushijian`,`huodongdidian`,`zixundianhua`,`huodongyaoqiu`) values (26,'2021-05-12 07:40:41','活动标题6','http://localhost:8080/ssmv0lc9/upload/huodongxinxi_fengmian6.jpg','2021-05-12','2021-05-12','活动地点6','13823888886','活动要求6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620777069582 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (61,'2021-05-12 07:40:41',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (62,'2021-05-12 07:40:41',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (63,'2021-05-12 07:40:41',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (64,'2021-05-12 07:40:41',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (65,'2021-05-12 07:40:41',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (66,'2021-05-12 07:40:41',6,'用户名6','留言内容6','回复内容6');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1620777069581,'2021-05-12 07:51:09',1620776932611,'2','有什么问题或者意见也可以给管理员进行反馈的。。。','好的 欢迎反馈的。。。');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='活动资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (51,'2021-05-12 07:40:41','XX活动资讯1','简介1测试','http://localhost:8080/ssmv0lc9/upload/news_picture1.jpg','<p><img src=\"http://localhost:8080/ssmv0lc9/upload/1620776833582.jpg\"></p><p><br></p><p><br></p><p>	1.体育类。如<a href=\"https://baike.baidu.com/item/cuba/325668\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">cuba</a>大体协的大学生篮球<a href=\"https://baike.baidu.com/item/%E8%B6%85%E7%BA%A7%E8%81%94%E8%B5%9B\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">超级联赛</a>，此活动已经比较成熟，之前有<a href=\"https://baike.baidu.com/item/%E6%9D%8E%E5%AE%81/4581186\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">李宁</a>赞助，有<a href=\"https://baike.baidu.com/item/361%C2%B0/8278203\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">361°</a>赞助，当然与美国的<a href=\"https://baike.baidu.com/item/ncaa/1240077\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">ncaa</a>还有相当距离。前几年飞利浦赞助的大学生足球联赛也相当不错，不过由于中国的大环境不好，所以这两年也没什么声音了。另外，<a href=\"https://baike.baidu.com/item/%E8%82%AF%E5%BE%B7%E5%9F%BA/323305\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">肯德基</a>、<a href=\"https://baike.baidu.com/item/%E6%9D%8E%E5%AE%81/4581186\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">李宁</a>、<a href=\"https://baike.baidu.com/item/%E9%98%BF%E8%BF%AA%E8%BE%BE%E6%96%AF/527092\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">阿迪达斯</a>、<a href=\"https://baike.baidu.com/item/%E8%80%90%E5%85%8B/265519\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">耐克</a>等品牌也非常注重<a href=\"https://baike.baidu.com/item/%E6%A0%A1%E5%86%85/7312332\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">校内</a>的各种体育赛事。当然这些品牌也非常受大学生尊敬。</p><p>	2.<span style=\"color: rgb(51, 102, 204);\">&nbsp;[1]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span>&nbsp;。文化类包括很多，各种大型唱歌比赛，如<a href=\"https://baike.baidu.com/item/%E4%BC%8A%E5%88%A9/15664\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">伊利</a>在2007年做的大学生原创音乐节就颇有影响，基本汇集了校园原创的所有精英。当然各种歌咏比赛、文艺汇演、电影节、话剧节、街舞大赛、辩论赛多如牛毛，就不一一举例。近几年的动漫cosplay也在校园非常火爆。</p><p>	3.创业类。创业这几年被炒的几乎发黑。各类创业网、创业社团、创业大赛、创业园区如雨后春笋般涌现。特别是各种创业大赛更被商家青睐。</p><p>	4.学术类。在大学校园当然离不开学术，但更多学术类活动更多是为大学教授搭建的平台，大学生在学术类的活动中更多是充当听众角色。</p><p>	5.科技类.科技类的活动是个比较窄众的关注活动。但也有知名度非常高的，如世界机器人大赛，就吸引和很多科技发烧友的眼球，而<a href=\"https://baike.baidu.com/item/%E7%99%BE%E5%BA%A6/6699\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">百度</a>、<a href=\"https://baike.baidu.com/item/%E8%B0%B7%E6%AD%8C/117920\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">谷歌</a>、<a href=\"https://baike.baidu.com/item/%E8%85%BE%E8%AE%AF/112204\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">腾讯</a>做的软件程序大赛更多的感觉是作秀和<a href=\"https://baike.baidu.com/item/%E6%A0%A1%E5%9B%AD%E6%8B%9B%E8%81%98/1048605\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">校园招聘</a>。这方面<a href=\"https://baike.baidu.com/item/%E5%BE%AE%E8%BD%AF/124767\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">微软</a>反而不错，一直支持科技类的社团，如<a href=\"https://baike.baidu.com/item/%E7%A7%91%E5%AD%A6%E6%9D%BE%E9%BC%A0%E4%BC%9A/2571436\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">科学松鼠会</a>就是微软经常赞助。</p><p>	6.其他。大学校园活动越来越被社会重视。很多与大学生关系不大的活动也放在大学校园来做。如各个旅游景点的的巡展都放在大学校园里。</p><p><br></p><p>这里可以发布一些相关校园资讯内容的，可以图文结合描述的。。。。</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (52,'2021-05-12 07:40:41','标题2','简介2','http://localhost:8080/ssmv0lc9/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (53,'2021-05-12 07:40:41','标题3','简介3','http://localhost:8080/ssmv0lc9/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (54,'2021-05-12 07:40:41','标题4','简介4','http://localhost:8080/ssmv0lc9/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (55,'2021-05-12 07:40:41','标题5','简介5','http://localhost:8080/ssmv0lc9/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (56,'2021-05-12 07:40:41','标题6','简介6','http://localhost:8080/ssmv0lc9/upload/news_picture6.jpg','内容6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','qtprlzb0c9rlbuysj6b0c80j1w5m6dnr','2021-05-12 07:42:48','2021-05-12 08:51:27');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,11,'1','yonghu','用户','5uknpyupatk6dyow8zs8ejqb2g2xouga','2021-05-12 07:42:53','2021-05-12 08:43:32');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1620776932611,'2','yonghu','用户','ibsr7vb2mydqqkryxbfz2sopmtj9p4vq','2021-05-12 07:48:58','2021-05-12 08:52:30');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-12 07:40:41');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1620776932612 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (11,'2021-05-12 07:40:41','1','1','姓名1','男','http://localhost:8080/ssmv0lc9/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (12,'2021-05-12 07:40:41','用户2','123456','姓名2','男','http://localhost:8080/ssmv0lc9/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (13,'2021-05-12 07:40:41','用户3','123456','姓名3','男','http://localhost:8080/ssmv0lc9/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (14,'2021-05-12 07:40:41','用户4','123456','姓名4','男','http://localhost:8080/ssmv0lc9/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (15,'2021-05-12 07:40:41','用户5','123456','姓名5','男','http://localhost:8080/ssmv0lc9/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (16,'2021-05-12 07:40:41','用户6','123456','姓名6','男','http://localhost:8080/ssmv0lc9/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (1620776932611,'2021-05-12 07:48:52','2','1','王飞','男','http://localhost:8080/ssmv0lc9/upload/1620776951891.png','15214121411','212121@15.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
