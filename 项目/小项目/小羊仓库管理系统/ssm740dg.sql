-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm740dg
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
-- Table structure for table `chukuxinxi`
--

DROP TABLE IF EXISTS `chukuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chukuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kehumingcheng` varchar(200) DEFAULT NULL COMMENT '客户名称',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `zhifufangshi` varchar(200) DEFAULT NULL COMMENT '支付方式',
  `guanliyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '管理员账号',
  `guanliyuanxingming` varchar(200) DEFAULT NULL COMMENT '管理员姓名',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `chukujiage` float DEFAULT NULL COMMENT '出库价格',
  `zongjine` float DEFAULT NULL COMMENT '总金额',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='出库信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chukuxinxi`
--

LOCK TABLES `chukuxinxi` WRITE;
/*!40000 ALTER TABLE `chukuxinxi` DISABLE KEYS */;
INSERT INTO `chukuxinxi` VALUES (61,'2021-05-11 17:15:54','客户名称1','商品名称1','支付宝','管理员账号1','管理员姓名1',1,1,1,'2021-05-12 01:15:54'),(62,'2021-05-11 17:15:54','客户名称2','商品名称2','支付宝','管理员账号2','管理员姓名2',2,2,2,'2021-05-12 01:15:54'),(63,'2021-05-11 17:15:54','客户名称3','商品名称3','支付宝','管理员账号3','管理员姓名3',3,3,3,'2021-05-12 01:15:54'),(64,'2021-05-11 17:15:54','客户名称4','商品名称4','支付宝','管理员账号4','管理员姓名4',4,4,4,'2021-05-12 01:15:54'),(65,'2021-05-11 17:15:54','客户名称5','商品名称5','支付宝','管理员账号5','管理员姓名5',5,5,5,'2021-05-12 01:15:54'),(66,'2021-05-11 17:15:54','客户名称6','商品名称6','支付宝','管理员账号6','管理员姓名6',6,6,6,'2021-05-12 01:15:54');
/*!40000 ALTER TABLE `chukuxinxi` ENABLE KEYS */;
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm740dg/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm740dg/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm740dg/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongyingshangtuihuo`
--

DROP TABLE IF EXISTS `gongyingshangtuihuo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongyingshangtuihuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jiage` float DEFAULT NULL COMMENT '价格',
  `zongjine` float DEFAULT NULL COMMENT '总金额',
  `guanliyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '管理员账号',
  `guanliyuanxingming` varchar(200) DEFAULT NULL COMMENT '管理员姓名',
  `tuihuoyuanyin` longtext COMMENT '退货原因',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='供应商退货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyingshangtuihuo`
--

LOCK TABLES `gongyingshangtuihuo` WRITE;
/*!40000 ALTER TABLE `gongyingshangtuihuo` DISABLE KEYS */;
INSERT INTO `gongyingshangtuihuo` VALUES (71,'2021-05-11 17:15:54','供应商名称1','商品名称1',1,1,1,'管理员账号1','管理员姓名1','退货原因1','2021-05-12 01:15:54'),(72,'2021-05-11 17:15:54','供应商名称2','商品名称2',2,2,2,'管理员账号2','管理员姓名2','退货原因2','2021-05-12 01:15:54'),(73,'2021-05-11 17:15:54','供应商名称3','商品名称3',3,3,3,'管理员账号3','管理员姓名3','退货原因3','2021-05-12 01:15:54'),(74,'2021-05-11 17:15:54','供应商名称4','商品名称4',4,4,4,'管理员账号4','管理员姓名4','退货原因4','2021-05-12 01:15:54'),(75,'2021-05-11 17:15:54','供应商名称5','商品名称5',5,5,5,'管理员账号5','管理员姓名5','退货原因5','2021-05-12 01:15:54'),(76,'2021-05-11 17:15:54','供应商名称6','商品名称6',6,6,6,'管理员账号6','管理员姓名6','退货原因6','2021-05-12 01:15:54');
/*!40000 ALTER TABLE `gongyingshangtuihuo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongyingshangxinxi`
--

DROP TABLE IF EXISTS `gongyingshangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongyingshangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `gongyingshangdizhi` varchar(200) DEFAULT NULL COMMENT '供应商地址',
  `gongyingshangdianhua` varchar(200) DEFAULT NULL COMMENT '供应商电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `chuanzhen` varchar(200) DEFAULT NULL COMMENT '传真',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `kaihuyinxing` varchar(200) DEFAULT NULL COMMENT '开户银行',
  `yinxingzhanghao` varchar(200) DEFAULT NULL COMMENT '银行账号',
  `shifoukeyong` varchar(200) DEFAULT NULL COMMENT '是否可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='供应商信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyingshangxinxi`
--

LOCK TABLES `gongyingshangxinxi` WRITE;
/*!40000 ALTER TABLE `gongyingshangxinxi` DISABLE KEYS */;
INSERT INTO `gongyingshangxinxi` VALUES (31,'2021-05-11 17:15:54','供应商名称1','供应商地址1','13823888881','邮箱1','传真1','联系人1','开户银行1','银行账号1','可用'),(32,'2021-05-11 17:15:54','供应商名称2','供应商地址2','13823888882','邮箱2','传真2','联系人2','开户银行2','银行账号2','可用'),(33,'2021-05-11 17:15:54','供应商名称3','供应商地址3','13823888883','邮箱3','传真3','联系人3','开户银行3','银行账号3','可用'),(34,'2021-05-11 17:15:54','供应商名称4','供应商地址4','13823888884','邮箱4','传真4','联系人4','开户银行4','银行账号4','可用'),(35,'2021-05-11 17:15:54','供应商名称5','供应商地址5','13823888885','邮箱5','传真5','联系人5','开户银行5','银行账号5','可用'),(36,'2021-05-11 17:15:54','供应商名称6','供应商地址6','13823888886','邮箱6','传真6','联系人6','开户银行6','银行账号6','可用');
/*!40000 ALTER TABLE `gongyingshangxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kehutuihuo`
--

DROP TABLE IF EXISTS `kehutuihuo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kehutuihuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kehumingcheng` varchar(200) DEFAULT NULL COMMENT '客户名称',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jiage` float DEFAULT NULL COMMENT '价格',
  `zongjine` float DEFAULT NULL COMMENT '总金额',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `guanliyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '管理员账号',
  `guanliyuanxingming` varchar(200) DEFAULT NULL COMMENT '管理员姓名',
  `tuihuoyuanyin` longtext COMMENT '退货原因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='客户退货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kehutuihuo`
--

LOCK TABLES `kehutuihuo` WRITE;
/*!40000 ALTER TABLE `kehutuihuo` DISABLE KEYS */;
INSERT INTO `kehutuihuo` VALUES (81,'2021-05-11 17:15:54','客户名称1','商品名称1',1,1,1,'2021-05-12 01:15:54','管理员账号1','管理员姓名1','退货原因1'),(82,'2021-05-11 17:15:54','客户名称2','商品名称2',2,2,2,'2021-05-12 01:15:54','管理员账号2','管理员姓名2','退货原因2'),(83,'2021-05-11 17:15:54','客户名称3','商品名称3',3,3,3,'2021-05-12 01:15:54','管理员账号3','管理员姓名3','退货原因3'),(84,'2021-05-11 17:15:54','客户名称4','商品名称4',4,4,4,'2021-05-12 01:15:54','管理员账号4','管理员姓名4','退货原因4'),(85,'2021-05-11 17:15:54','客户名称5','商品名称5',5,5,5,'2021-05-12 01:15:54','管理员账号5','管理员姓名5','退货原因5'),(86,'2021-05-11 17:15:54','客户名称6','商品名称6',6,6,6,'2021-05-12 01:15:54','管理员账号6','管理员姓名6','退货原因6');
/*!40000 ALTER TABLE `kehutuihuo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kehuxinxi`
--

DROP TABLE IF EXISTS `kehuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kehuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kehumingcheng` varchar(200) DEFAULT NULL COMMENT '客户名称',
  `kehudizhi` varchar(200) DEFAULT NULL COMMENT '客户地址',
  `kehudianhua` varchar(200) DEFAULT NULL COMMENT '客户电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `chuanzhen` varchar(200) DEFAULT NULL COMMENT '传真',
  `kaihuyinxing` varchar(200) DEFAULT NULL COMMENT '开户银行',
  `yinxingzhanghao` varchar(200) DEFAULT NULL COMMENT '银行账号',
  `shifoukeyong` varchar(200) DEFAULT NULL COMMENT '是否可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='客户信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kehuxinxi`
--

LOCK TABLES `kehuxinxi` WRITE;
/*!40000 ALTER TABLE `kehuxinxi` DISABLE KEYS */;
INSERT INTO `kehuxinxi` VALUES (21,'2021-05-11 17:15:54','客户名称1','客户地址1','13823888881','邮箱1','传真1','开户银行1','银行账号1','可用'),(22,'2021-05-11 17:15:54','客户名称2','客户地址2','13823888882','邮箱2','传真2','开户银行2','银行账号2','可用'),(23,'2021-05-11 17:15:54','客户名称3','客户地址3','13823888883','邮箱3','传真3','开户银行3','银行账号3','可用'),(24,'2021-05-11 17:15:54','客户名称4','客户地址4','13823888884','邮箱4','传真4','开户银行4','银行账号4','可用'),(25,'2021-05-11 17:15:54','客户名称5','客户地址5','13823888885','邮箱5','传真5','开户银行5','银行账号5','可用'),(26,'2021-05-11 17:15:54','客户名称6','客户地址6','13823888886','邮箱6','传真6','开户银行6','银行账号6','可用');
/*!40000 ALTER TABLE `kehuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kucunxinxi`
--

DROP TABLE IF EXISTS `kucunxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kucunxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `guanliyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '管理员账号',
  `guanliyuanxingming` varchar(200) DEFAULT NULL COMMENT '管理员姓名',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='库存信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kucunxinxi`
--

LOCK TABLES `kucunxinxi` WRITE;
/*!40000 ALTER TABLE `kucunxinxi` DISABLE KEYS */;
INSERT INTO `kucunxinxi` VALUES (41,'2021-05-11 17:15:54','商品编号1','商品名称1','管理员账号1','管理员姓名1',1,'2021-05-12 01:15:54'),(42,'2021-05-11 17:15:54','商品编号2','商品名称2','管理员账号2','管理员姓名2',2,'2021-05-12 01:15:54'),(43,'2021-05-11 17:15:54','商品编号3','商品名称3','管理员账号3','管理员姓名3',3,'2021-05-12 01:15:54'),(44,'2021-05-11 17:15:54','商品编号4','商品名称4','管理员账号4','管理员姓名4',4,'2021-05-12 01:15:54'),(45,'2021-05-11 17:15:54','商品编号5','商品名称5','管理员账号5','管理员姓名5',5,'2021-05-12 01:15:54'),(46,'2021-05-11 17:15:54','商品编号6','商品名称6','管理员账号6','管理员姓名6',6,'2021-05-12 01:15:54');
/*!40000 ALTER TABLE `kucunxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `putongguanliyuan`
--

DROP TABLE IF EXISTS `putongguanliyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `putongguanliyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `guanliyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '管理员账号',
  `guanliyuanxingming` varchar(200) DEFAULT NULL COMMENT '管理员姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `guanliyuanzhanghao` (`guanliyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='普通管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `putongguanliyuan`
--

LOCK TABLES `putongguanliyuan` WRITE;
/*!40000 ALTER TABLE `putongguanliyuan` DISABLE KEYS */;
INSERT INTO `putongguanliyuan` VALUES (11,'2021-05-11 17:15:54','普通管理员1','管理员姓名1','123456','男','13823888881'),(12,'2021-05-11 17:15:54','普通管理员2','管理员姓名2','123456','男','13823888882'),(13,'2021-05-11 17:15:54','普通管理员3','管理员姓名3','123456','男','13823888883'),(14,'2021-05-11 17:15:54','普通管理员4','管理员姓名4','123456','男','13823888884'),(15,'2021-05-11 17:15:54','普通管理员5','管理员姓名5','123456','男','13823888885'),(16,'2021-05-11 17:15:54','普通管理员6','管理员姓名6','123456','男','13823888886');
/*!40000 ALTER TABLE `putongguanliyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rukuxinxi`
--

DROP TABLE IF EXISTS `rukuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rukuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `zhifufangshi` varchar(200) DEFAULT NULL COMMENT '支付方式',
  `guanliyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '管理员账号',
  `guanliyuanxingming` varchar(200) DEFAULT NULL COMMENT '管理员姓名',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jinhuojiage` float DEFAULT NULL COMMENT '进货价格',
  `zongjine` float DEFAULT NULL COMMENT '总金额',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='入库信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rukuxinxi`
--

LOCK TABLES `rukuxinxi` WRITE;
/*!40000 ALTER TABLE `rukuxinxi` DISABLE KEYS */;
INSERT INTO `rukuxinxi` VALUES (51,'2021-05-11 17:15:54','供应商名称1','商品名称1','支付宝','管理员账号1','管理员姓名1',1,1,1,'2021-05-12 01:15:54'),(52,'2021-05-11 17:15:54','供应商名称2','商品名称2','支付宝','管理员账号2','管理员姓名2',2,2,2,'2021-05-12 01:15:54'),(53,'2021-05-11 17:15:54','供应商名称3','商品名称3','支付宝','管理员账号3','管理员姓名3',3,3,3,'2021-05-12 01:15:54'),(54,'2021-05-11 17:15:54','供应商名称4','商品名称4','支付宝','管理员账号4','管理员姓名4',4,4,4,'2021-05-12 01:15:54'),(55,'2021-05-11 17:15:54','供应商名称5','商品名称5','支付宝','管理员账号5','管理员姓名5',5,5,5,'2021-05-12 01:15:54'),(56,'2021-05-11 17:15:54','供应商名称6','商品名称6','支付宝','管理员账号6','管理员姓名6',6,6,6,'2021-05-12 01:15:54');
/*!40000 ALTER TABLE `rukuxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','6e297ssio702aoxmru1eqjux6xnnoybe','2021-05-11 17:26:24','2021-05-11 18:26:25');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-05-11 17:15:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-12 15:11:48
