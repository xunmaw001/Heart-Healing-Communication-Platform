-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootu72sl
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
-- Table structure for table `ceshishuju`
--

DROP TABLE IF EXISTS `ceshishuju`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ceshishuju` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ceshibianhao` varchar(200) DEFAULT NULL COMMENT '测试编号',
  `ceshimingcheng` varchar(200) DEFAULT NULL COMMENT '测试名称',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `huida1` varchar(200) DEFAULT NULL COMMENT '回答1',
  `huida2` varchar(200) DEFAULT NULL COMMENT '回答2',
  `huida3` varchar(200) DEFAULT NULL COMMENT '回答3',
  `huida4` varchar(200) DEFAULT NULL COMMENT '回答4',
  `huida5` varchar(200) DEFAULT NULL COMMENT '回答5',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ceshibianhao` (`ceshibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='测试数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ceshishuju`
--

LOCK TABLES `ceshishuju` WRITE;
/*!40000 ALTER TABLE `ceshishuju` DISABLE KEYS */;
INSERT INTO `ceshishuju` VALUES (61,'2021-01-19 13:46:46','测试编号1','测试名称1','用户名1','用户姓名1','回答11','回答21','回答31','回答41','回答51'),(62,'2021-01-19 13:46:46','测试编号2','测试名称2','用户名2','用户姓名2','回答12','回答22','回答32','回答42','回答52'),(63,'2021-01-19 13:46:46','测试编号3','测试名称3','用户名3','用户姓名3','回答13','回答23','回答33','回答43','回答53'),(64,'2021-01-19 13:46:46','测试编号4','测试名称4','用户名4','用户姓名4','回答14','回答24','回答34','回答44','回答54'),(65,'2021-01-19 13:46:46','测试编号5','测试名称5','用户名5','用户姓名5','回答15','回答25','回答35','回答45','回答55'),(66,'2021-01-19 13:46:46','测试编号6','测试名称6','用户名6','用户姓名6','回答16','回答26','回答36','回答46','回答56');
/*!40000 ALTER TABLE `ceshishuju` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='聊天';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (91,'2021-01-19 13:46:46',1,1,'提问1','回复1',1),(92,'2021-01-19 13:46:46',2,2,'提问2','回复2',2),(93,'2021-01-19 13:46:46',3,3,'提问3','回复3',3),(94,'2021-01-19 13:46:46',4,4,'提问4','回复4',4),(95,'2021-01-19 13:46:46',5,5,'提问5','回复5',5),(96,'2021-01-19 13:46:46',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springbootu72sl/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springbootu72sl/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springbootu72sl/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxinlizixunshi`
--

DROP TABLE IF EXISTS `discussxinlizixunshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxinlizixunshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='心理咨询师评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxinlizixunshi`
--

LOCK TABLES `discussxinlizixunshi` WRITE;
/*!40000 ALTER TABLE `discussxinlizixunshi` DISABLE KEYS */;
INSERT INTO `discussxinlizixunshi` VALUES (101,'2021-01-19 13:46:46',1,1,'评论内容1','回复内容1'),(102,'2021-01-19 13:46:46',2,2,'评论内容2','回复内容2'),(103,'2021-01-19 13:46:46',3,3,'评论内容3','回复内容3'),(104,'2021-01-19 13:46:46',4,4,'评论内容4','回复内容4'),(105,'2021-01-19 13:46:46',5,5,'评论内容5','回复内容5'),(106,'2021-01-19 13:46:46',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussxinlizixunshi` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-19 13:46:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaozhitiao`
--

DROP TABLE IF EXISTS `xiaozhitiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaozhitiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `biaotimingcheng` varchar(200) DEFAULT NULL COMMENT '标题名称',
  `qiaoqiaohua` longtext COMMENT '悄悄话',
  `tupianfengmian` varchar(200) DEFAULT NULL COMMENT '图片封面',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='小纸条';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaozhitiao`
--

LOCK TABLES `xiaozhitiao` WRITE;
/*!40000 ALTER TABLE `xiaozhitiao` DISABLE KEYS */;
INSERT INTO `xiaozhitiao` VALUES (81,'2021-01-19 13:46:46','用户名1','标题名称1','悄悄话1','http://localhost:8080/springbootu72sl/upload/xiaozhitiao_tupianfengmian1.jpg','2021-01-19'),(82,'2021-01-19 13:46:46','用户名2','标题名称2','悄悄话2','http://localhost:8080/springbootu72sl/upload/xiaozhitiao_tupianfengmian2.jpg','2021-01-19'),(83,'2021-01-19 13:46:46','用户名3','标题名称3','悄悄话3','http://localhost:8080/springbootu72sl/upload/xiaozhitiao_tupianfengmian3.jpg','2021-01-19'),(84,'2021-01-19 13:46:46','用户名4','标题名称4','悄悄话4','http://localhost:8080/springbootu72sl/upload/xiaozhitiao_tupianfengmian4.jpg','2021-01-19'),(85,'2021-01-19 13:46:46','用户名5','标题名称5','悄悄话5','http://localhost:8080/springbootu72sl/upload/xiaozhitiao_tupianfengmian5.jpg','2021-01-19'),(86,'2021-01-19 13:46:46','用户名6','标题名称6','悄悄话6','http://localhost:8080/springbootu72sl/upload/xiaozhitiao_tupianfengmian6.jpg','2021-01-19');
/*!40000 ALTER TABLE `xiaozhitiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinlingzhuanlan`
--

DROP TABLE IF EXISTS `xinlingzhuanlan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinlingzhuanlan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanlanbiaoti` varchar(200) DEFAULT NULL COMMENT '专栏标题',
  `tupianfengmian` varchar(200) DEFAULT NULL COMMENT '图片封面',
  `zhuanlanfenlei` varchar(200) DEFAULT NULL COMMENT '专栏分类',
  `zhuanlanneirong` varchar(200) DEFAULT NULL COMMENT '专栏内容',
  `fabushijian` varchar(200) DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `xinxilaiyuan` varchar(200) DEFAULT NULL COMMENT '信息来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='心灵专栏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinlingzhuanlan`
--

LOCK TABLES `xinlingzhuanlan` WRITE;
/*!40000 ALTER TABLE `xinlingzhuanlan` DISABLE KEYS */;
INSERT INTO `xinlingzhuanlan` VALUES (41,'2021-01-19 13:46:46','专栏标题1','http://localhost:8080/springbootu72sl/upload/xinlingzhuanlan_tupianfengmian1.jpg','专栏分类1','专栏内容1','发布时间1','发布人1','信息来源1'),(42,'2021-01-19 13:46:46','专栏标题2','http://localhost:8080/springbootu72sl/upload/xinlingzhuanlan_tupianfengmian2.jpg','专栏分类2','专栏内容2','发布时间2','发布人2','信息来源2'),(43,'2021-01-19 13:46:46','专栏标题3','http://localhost:8080/springbootu72sl/upload/xinlingzhuanlan_tupianfengmian3.jpg','专栏分类3','专栏内容3','发布时间3','发布人3','信息来源3'),(44,'2021-01-19 13:46:46','专栏标题4','http://localhost:8080/springbootu72sl/upload/xinlingzhuanlan_tupianfengmian4.jpg','专栏分类4','专栏内容4','发布时间4','发布人4','信息来源4'),(45,'2021-01-19 13:46:46','专栏标题5','http://localhost:8080/springbootu72sl/upload/xinlingzhuanlan_tupianfengmian5.jpg','专栏分类5','专栏内容5','发布时间5','发布人5','信息来源5'),(46,'2021-01-19 13:46:46','专栏标题6','http://localhost:8080/springbootu72sl/upload/xinlingzhuanlan_tupianfengmian6.jpg','专栏分类6','专栏内容6','发布时间6','发布人6','信息来源6');
/*!40000 ALTER TABLE `xinlingzhuanlan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinlizixunshi`
--

DROP TABLE IF EXISTS `xinlizixunshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinlizixunshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixunshizhanghao` varchar(200) NOT NULL COMMENT '咨询师账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zixunshixingming` varchar(200) NOT NULL COMMENT '咨询师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `zigezhengshu` varchar(200) DEFAULT NULL COMMENT '资格证书',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `gerenlvli` longtext COMMENT '个人履历',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zixunshizhanghao` (`zixunshizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='心理咨询师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinlizixunshi`
--

LOCK TABLES `xinlizixunshi` WRITE;
/*!40000 ALTER TABLE `xinlizixunshi` DISABLE KEYS */;
INSERT INTO `xinlizixunshi` VALUES (31,'2021-01-19 13:46:46','心理咨询师1','123456','咨询师姓名1','男',1,'','地址1','13823888881','http://localhost:8080/springbootu72sl/upload/xinlizixunshi_zhaopian1.jpg','个人履历1','否',''),(32,'2021-01-19 13:46:46','心理咨询师2','123456','咨询师姓名2','男',2,'','地址2','13823888882','http://localhost:8080/springbootu72sl/upload/xinlizixunshi_zhaopian2.jpg','个人履历2','否',''),(33,'2021-01-19 13:46:46','心理咨询师3','123456','咨询师姓名3','男',3,'','地址3','13823888883','http://localhost:8080/springbootu72sl/upload/xinlizixunshi_zhaopian3.jpg','个人履历3','否',''),(34,'2021-01-19 13:46:46','心理咨询师4','123456','咨询师姓名4','男',4,'','地址4','13823888884','http://localhost:8080/springbootu72sl/upload/xinlizixunshi_zhaopian4.jpg','个人履历4','否',''),(35,'2021-01-19 13:46:46','心理咨询师5','123456','咨询师姓名5','男',5,'','地址5','13823888885','http://localhost:8080/springbootu72sl/upload/xinlizixunshi_zhaopian5.jpg','个人履历5','否',''),(36,'2021-01-19 13:46:46','心理咨询师6','123456','咨询师姓名6','男',6,'','地址6','13823888886','http://localhost:8080/springbootu72sl/upload/xinlizixunshi_zhaopian6.jpg','个人履历6','否','');
/*!40000 ALTER TABLE `xinlizixunshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xitonggonggao`
--

DROP TABLE IF EXISTS `xitonggonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `gonggaoleixing` varchar(200) DEFAULT NULL COMMENT '公告类型',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xitonggonggao`
--

LOCK TABLES `xitonggonggao` WRITE;
/*!40000 ALTER TABLE `xitonggonggao` DISABLE KEYS */;
INSERT INTO `xitonggonggao` VALUES (11,'2021-01-19 13:46:46','标题1','内容1','公告类型1','2021-01-19','发布人1','http://localhost:8080/springbootu72sl/upload/xitonggonggao_tupian1.jpg'),(12,'2021-01-19 13:46:46','标题2','内容2','公告类型2','2021-01-19','发布人2','http://localhost:8080/springbootu72sl/upload/xitonggonggao_tupian2.jpg'),(13,'2021-01-19 13:46:46','标题3','内容3','公告类型3','2021-01-19','发布人3','http://localhost:8080/springbootu72sl/upload/xitonggonggao_tupian3.jpg'),(14,'2021-01-19 13:46:46','标题4','内容4','公告类型4','2021-01-19','发布人4','http://localhost:8080/springbootu72sl/upload/xitonggonggao_tupian4.jpg'),(15,'2021-01-19 13:46:46','标题5','内容5','公告类型5','2021-01-19','发布人5','http://localhost:8080/springbootu72sl/upload/xitonggonggao_tupian5.jpg'),(16,'2021-01-19 13:46:46','标题6','内容6','公告类型6','2021-01-19','发布人6','http://localhost:8080/springbootu72sl/upload/xitonggonggao_tupian6.jpg');
/*!40000 ALTER TABLE `xitonggonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaliceshi`
--

DROP TABLE IF EXISTS `yaliceshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaliceshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ceshimingcheng` varchar(200) DEFAULT NULL COMMENT '测试名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jianjie` longtext COMMENT '简介',
  `timu1` varchar(200) DEFAULT NULL COMMENT '题目1',
  `timu2` varchar(200) DEFAULT NULL COMMENT '题目2',
  `timu3` varchar(200) DEFAULT NULL COMMENT '题目3',
  `timu4` varchar(200) DEFAULT NULL COMMENT '题目4',
  `timu5` varchar(200) DEFAULT NULL COMMENT '题目5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='压力测试';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaliceshi`
--

LOCK TABLES `yaliceshi` WRITE;
/*!40000 ALTER TABLE `yaliceshi` DISABLE KEYS */;
INSERT INTO `yaliceshi` VALUES (51,'2021-01-19 13:46:46','测试名称1','http://localhost:8080/springbootu72sl/upload/yaliceshi_tupian1.jpg','简介1','题目11','题目21','题目31','题目41','题目51'),(52,'2021-01-19 13:46:46','测试名称2','http://localhost:8080/springbootu72sl/upload/yaliceshi_tupian2.jpg','简介2','题目12','题目22','题目32','题目42','题目52'),(53,'2021-01-19 13:46:46','测试名称3','http://localhost:8080/springbootu72sl/upload/yaliceshi_tupian3.jpg','简介3','题目13','题目23','题目33','题目43','题目53'),(54,'2021-01-19 13:46:46','测试名称4','http://localhost:8080/springbootu72sl/upload/yaliceshi_tupian4.jpg','简介4','题目14','题目24','题目34','题目44','题目54'),(55,'2021-01-19 13:46:46','测试名称5','http://localhost:8080/springbootu72sl/upload/yaliceshi_tupian5.jpg','简介5','题目15','题目25','题目35','题目45','题目55'),(56,'2021-01-19 13:46:46','测试名称6','http://localhost:8080/springbootu72sl/upload/yaliceshi_tupian6.jpg','简介6','题目16','题目26','题目36','题目46','题目56');
/*!40000 ALTER TABLE `yaliceshi` ENABLE KEYS */;
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
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (21,'2021-01-19 13:46:46','用户1','123456','用户姓名1','男','http://localhost:8080/springbootu72sl/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com'),(22,'2021-01-19 13:46:46','用户2','123456','用户姓名2','男','http://localhost:8080/springbootu72sl/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com'),(23,'2021-01-19 13:46:46','用户3','123456','用户姓名3','男','http://localhost:8080/springbootu72sl/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com'),(24,'2021-01-19 13:46:46','用户4','123456','用户姓名4','男','http://localhost:8080/springbootu72sl/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com'),(25,'2021-01-19 13:46:46','用户5','123456','用户姓名5','男','http://localhost:8080/springbootu72sl/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com'),(26,'2021-01-19 13:46:46','用户6','123456','用户姓名6','男','http://localhost:8080/springbootu72sl/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zixunshiyuyue`
--

DROP TABLE IF EXISTS `zixunshiyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zixunshiyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `zixunshizhanghao` varchar(200) DEFAULT NULL COMMENT '咨询师账号',
  `zixunshixingming` varchar(200) DEFAULT NULL COMMENT '咨询师姓名',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `yuyueshijian` date NOT NULL COMMENT '预约时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='咨询师预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zixunshiyuyue`
--

LOCK TABLES `zixunshiyuyue` WRITE;
/*!40000 ALTER TABLE `zixunshiyuyue` DISABLE KEYS */;
INSERT INTO `zixunshiyuyue` VALUES (71,'2021-01-19 13:46:46','预约编号1','咨询师账号1','咨询师姓名1','用户名1','用户姓名1','手机1','2021-01-19'),(72,'2021-01-19 13:46:46','预约编号2','咨询师账号2','咨询师姓名2','用户名2','用户姓名2','手机2','2021-01-19'),(73,'2021-01-19 13:46:46','预约编号3','咨询师账号3','咨询师姓名3','用户名3','用户姓名3','手机3','2021-01-19'),(74,'2021-01-19 13:46:46','预约编号4','咨询师账号4','咨询师姓名4','用户名4','用户姓名4','手机4','2021-01-19'),(75,'2021-01-19 13:46:46','预约编号5','咨询师账号5','咨询师姓名5','用户名5','用户姓名5','手机5','2021-01-19'),(76,'2021-01-19 13:46:46','预约编号6','咨询师账号6','咨询师姓名6','用户名6','用户姓名6','手机6','2021-01-19');
/*!40000 ALTER TABLE `zixunshiyuyue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-19 21:48:27
