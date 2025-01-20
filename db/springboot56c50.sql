-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot56c50
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot56c50/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot56c50/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot56c50/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (101,'2021-02-23 09:06:33',1,1,'评论内容1','回复内容1'),(102,'2021-02-23 09:06:33',2,2,'评论内容2','回复内容2'),(103,'2021-02-23 09:06:33',3,3,'评论内容3','回复内容3'),(104,'2021-02-23 09:06:33',4,4,'评论内容4','回复内容4'),(105,'2021-02-23 09:06:33',5,5,'评论内容5','回复内容5'),(106,'2021-02-23 09:06:33',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='闲置鱼塘';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (71,'2021-02-23 09:06:33','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(72,'2021-02-23 09:06:33','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(73,'2021-02-23 09:06:33','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(74,'2021-02-23 09:06:33','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(75,'2021-02-23 09:06:33','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(76,'2021-02-23 09:06:33','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maijia`
--

DROP TABLE IF EXISTS `maijia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maijia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiahao` varchar(200) NOT NULL COMMENT '卖家号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `maijiaming` varchar(200) NOT NULL COMMENT '卖家名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `maijiahao` (`maijiahao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='卖家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maijia`
--

LOCK TABLES `maijia` WRITE;
/*!40000 ALTER TABLE `maijia` DISABLE KEYS */;
INSERT INTO `maijia` VALUES (21,'2021-02-23 09:06:33','卖家1','123456','卖家名1','男',1,'13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/springboot56c50/upload/maijia_zhaopian1.jpg'),(22,'2021-02-23 09:06:33','卖家2','123456','卖家名2','男',2,'13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/springboot56c50/upload/maijia_zhaopian2.jpg'),(23,'2021-02-23 09:06:33','卖家3','123456','卖家名3','男',3,'13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/springboot56c50/upload/maijia_zhaopian3.jpg'),(24,'2021-02-23 09:06:33','卖家4','123456','卖家名4','男',4,'13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/springboot56c50/upload/maijia_zhaopian4.jpg'),(25,'2021-02-23 09:06:33','卖家5','123456','卖家名5','男',5,'13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/springboot56c50/upload/maijia_zhaopian5.jpg'),(26,'2021-02-23 09:06:33','卖家6','123456','卖家名6','男',6,'13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/springboot56c50/upload/maijia_zhaopian6.jpg');
/*!40000 ALTER TABLE `maijia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='校园资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-02-23 09:06:33','标题1','简介1','http://localhost:8080/springboot56c50/upload/news_picture1.jpg','内容1'),(92,'2021-02-23 09:06:33','标题2','简介2','http://localhost:8080/springboot56c50/upload/news_picture2.jpg','内容2'),(93,'2021-02-23 09:06:33','标题3','简介3','http://localhost:8080/springboot56c50/upload/news_picture3.jpg','内容3'),(94,'2021-02-23 09:06:33','标题4','简介4','http://localhost:8080/springboot56c50/upload/news_picture4.jpg','内容4'),(95,'2021-02-23 09:06:33','标题5','简介5','http://localhost:8080/springboot56c50/upload/news_picture5.jpg','内容5'),(96,'2021-02-23 09:06:33','标题6','简介6','http://localhost:8080/springboot56c50/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpingoumai`
--

DROP TABLE IF EXISTS `shangpingoumai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpingoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiahao` varchar(200) DEFAULT NULL COMMENT '卖家号',
  `maijiaming` varchar(200) DEFAULT NULL COMMENT '卖家名',
  `shangpin` varchar(200) DEFAULT NULL COMMENT '商品',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `zhonglei` varchar(200) DEFAULT NULL COMMENT '种类',
  `shoujia` int(11) DEFAULT NULL COMMENT '售价',
  `kucun` int(11) DEFAULT NULL COMMENT '库存',
  `chengse` varchar(200) DEFAULT NULL COMMENT '成色',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jine` varchar(200) DEFAULT NULL COMMENT '金额',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='商品购买';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpingoumai`
--

LOCK TABLES `shangpingoumai` WRITE;
/*!40000 ALTER TABLE `shangpingoumai` DISABLE KEYS */;
INSERT INTO `shangpingoumai` VALUES (61,'2021-02-23 09:06:33','卖家号1','卖家名1','商品1','类型1','种类1',1,1,'成色1','账号1','姓名1',1,'金额1','2021-02-23 17:06:33','是','','未支付'),(62,'2021-02-23 09:06:33','卖家号2','卖家名2','商品2','类型2','种类2',2,2,'成色2','账号2','姓名2',2,'金额2','2021-02-23 17:06:33','是','','未支付'),(63,'2021-02-23 09:06:33','卖家号3','卖家名3','商品3','类型3','种类3',3,3,'成色3','账号3','姓名3',3,'金额3','2021-02-23 17:06:33','是','','未支付'),(64,'2021-02-23 09:06:33','卖家号4','卖家名4','商品4','类型4','种类4',4,4,'成色4','账号4','姓名4',4,'金额4','2021-02-23 17:06:33','是','','未支付'),(65,'2021-02-23 09:06:33','卖家号5','卖家名5','商品5','类型5','种类5',5,5,'成色5','账号5','姓名5',5,'金额5','2021-02-23 17:06:33','是','','未支付'),(66,'2021-02-23 09:06:33','卖家号6','卖家名6','商品6','类型6','种类6',6,6,'成色6','账号6','姓名6',6,'金额6','2021-02-23 17:06:33','是','','未支付');
/*!40000 ALTER TABLE `shangpingoumai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiahao` varchar(200) DEFAULT NULL COMMENT '卖家号',
  `maijiaming` varchar(200) DEFAULT NULL COMMENT '卖家名',
  `shangpin` varchar(200) DEFAULT NULL COMMENT '商品',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `zhonglei` varchar(200) DEFAULT NULL COMMENT '种类',
  `shoujia` int(11) DEFAULT NULL COMMENT '售价',
  `zujia` int(11) DEFAULT NULL COMMENT '租价',
  `kucun` int(11) DEFAULT NULL COMMENT '库存',
  `chengse` varchar(200) DEFAULT NULL COMMENT '成色',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `jieshao` longtext COMMENT '介绍',
  `xiangqing` longtext COMMENT '详情',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (41,'2021-02-23 09:06:33','卖家号1','卖家名1','商品1','租借','种类1',1,1,1,'全新','规格1','http://localhost:8080/springboot56c50/upload/shangpinxinxi_zhaopian1.jpg','介绍1','详情1','是','',1,1),(42,'2021-02-23 09:06:33','卖家号2','卖家名2','商品2','租借','种类2',2,2,2,'全新','规格2','http://localhost:8080/springboot56c50/upload/shangpinxinxi_zhaopian2.jpg','介绍2','详情2','是','',2,2),(43,'2021-02-23 09:06:33','卖家号3','卖家名3','商品3','租借','种类3',3,3,3,'全新','规格3','http://localhost:8080/springboot56c50/upload/shangpinxinxi_zhaopian3.jpg','介绍3','详情3','是','',3,3),(44,'2021-02-23 09:06:33','卖家号4','卖家名4','商品4','租借','种类4',4,4,4,'全新','规格4','http://localhost:8080/springboot56c50/upload/shangpinxinxi_zhaopian4.jpg','介绍4','详情4','是','',4,4),(45,'2021-02-23 09:06:33','卖家号5','卖家名5','商品5','租借','种类5',5,5,5,'全新','规格5','http://localhost:8080/springboot56c50/upload/shangpinxinxi_zhaopian5.jpg','介绍5','详情5','是','',5,5),(46,'2021-02-23 09:06:33','卖家号6','卖家名6','商品6','租借','种类6',6,6,6,'全新','规格6','http://localhost:8080/springboot56c50/upload/shangpinxinxi_zhaopian6.jpg','介绍6','详情6','是','',6,6);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinzhonglei`
--

DROP TABLE IF EXISTS `shangpinzhonglei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinzhonglei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhonglei` varchar(200) DEFAULT NULL COMMENT '种类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='商品种类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinzhonglei`
--

LOCK TABLES `shangpinzhonglei` WRITE;
/*!40000 ALTER TABLE `shangpinzhonglei` DISABLE KEYS */;
INSERT INTO `shangpinzhonglei` VALUES (31,'2021-02-23 09:06:33','种类1'),(32,'2021-02-23 09:06:33','种类2'),(33,'2021-02-23 09:06:33','种类3'),(34,'2021-02-23 09:06:33','种类4'),(35,'2021-02-23 09:06:33','种类5'),(36,'2021-02-23 09:06:33','种类6');
/*!40000 ALTER TABLE `shangpinzhonglei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinzujie`
--

DROP TABLE IF EXISTS `shangpinzujie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinzujie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiahao` varchar(200) DEFAULT NULL COMMENT '卖家号',
  `maijiaming` varchar(200) DEFAULT NULL COMMENT '卖家名',
  `shangpin` varchar(200) DEFAULT NULL COMMENT '商品',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `zhonglei` varchar(200) DEFAULT NULL COMMENT '种类',
  `zujia` int(11) DEFAULT NULL COMMENT '租价',
  `kucun` int(11) DEFAULT NULL COMMENT '库存',
  `chengse` varchar(200) DEFAULT NULL COMMENT '成色',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `tianshu` int(11) DEFAULT NULL COMMENT '天数',
  `jine` varchar(200) DEFAULT NULL COMMENT '金额',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='商品租借';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinzujie`
--

LOCK TABLES `shangpinzujie` WRITE;
/*!40000 ALTER TABLE `shangpinzujie` DISABLE KEYS */;
INSERT INTO `shangpinzujie` VALUES (51,'2021-02-23 09:06:33','卖家号1','卖家名1','商品1','类型1','种类1',1,1,'成色1','账号1','姓名1',1,1,'金额1','2021-02-23 17:06:33','是','','未支付'),(52,'2021-02-23 09:06:33','卖家号2','卖家名2','商品2','类型2','种类2',2,2,'成色2','账号2','姓名2',2,2,'金额2','2021-02-23 17:06:33','是','','未支付'),(53,'2021-02-23 09:06:33','卖家号3','卖家名3','商品3','类型3','种类3',3,3,'成色3','账号3','姓名3',3,3,'金额3','2021-02-23 17:06:33','是','','未支付'),(54,'2021-02-23 09:06:33','卖家号4','卖家名4','商品4','类型4','种类4',4,4,'成色4','账号4','姓名4',4,4,'金额4','2021-02-23 17:06:33','是','','未支付'),(55,'2021-02-23 09:06:33','卖家号5','卖家名5','商品5','类型5','种类5',5,5,'成色5','账号5','姓名5',5,5,'金额5','2021-02-23 17:06:33','是','','未支付'),(56,'2021-02-23 09:06:33','卖家号6','卖家名6','商品6','类型6','种类6',6,6,'成色6','账号6','姓名6',6,6,'金额6','2021-02-23 17:06:33','是','','未支付');
/*!40000 ALTER TABLE `shangpinzujie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-23 09:06:33');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-02-23 09:06:33','用户1','123456','姓名1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/springboot56c50/upload/yonghu_zhaopian1.jpg'),(12,'2021-02-23 09:06:33','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/springboot56c50/upload/yonghu_zhaopian2.jpg'),(13,'2021-02-23 09:06:33','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/springboot56c50/upload/yonghu_zhaopian3.jpg'),(14,'2021-02-23 09:06:33','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/springboot56c50/upload/yonghu_zhaopian4.jpg'),(15,'2021-02-23 09:06:33','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/springboot56c50/upload/yonghu_zhaopian5.jpg'),(16,'2021-02-23 09:06:33','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/springboot56c50/upload/yonghu_zhaopian6.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-23 18:57:17
