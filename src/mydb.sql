-- MySQL dump 10.13  Distrib 5.1.32, for Win32 (ia32)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.1.32-community-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES gbk */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `approval`
--

DROP TABLE IF EXISTS `approval`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `approval` (
  `uid` varchar(20) NOT NULL DEFAULT '',
  `eid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `approval`
--

LOCK TABLES `approval` WRITE;
/*!40000 ALTER TABLE `approval` DISABLE KEYS */;
INSERT INTO `approval` VALUES ('002',6),('11',6),('null',6),('002',7),('001',11),('001',15);
/*!40000 ALTER TABLE `approval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attention`
--

DROP TABLE IF EXISTS `attention`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `attention` (
  `uid` varchar(20) NOT NULL DEFAULT '',
  `rid` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`,`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `attention`
--

LOCK TABLES `attention` WRITE;
/*!40000 ALTER TABLE `attention` DISABLE KEYS */;
INSERT INTO `attention` VALUES ('001','002'),('001','003'),('001','004'),('002','001'),('002','003'),('003','001'),('003','002'),('003','004'),('003','005'),('11','001');
/*!40000 ALTER TABLE `attention` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collect`
--

DROP TABLE IF EXISTS `collect`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `collect` (
  `uid` varchar(20) NOT NULL DEFAULT '',
  `eid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `collect`
--

LOCK TABLES `collect` WRITE;
/*!40000 ALTER TABLE `collect` DISABLE KEYS */;
INSERT INTO `collect` VALUES ('11',6),('002',7),('003',8);
/*!40000 ALTER TABLE `collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commentapproval`
--

DROP TABLE IF EXISTS `commentapproval`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `commentapproval` (
  `uid` varchar(20) NOT NULL DEFAULT '',
  `ecid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`ecid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `commentapproval`
--

LOCK TABLES `commentapproval` WRITE;
/*!40000 ALTER TABLE `commentapproval` DISABLE KEYS */;
/*!40000 ALTER TABLE `commentapproval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commentunapproval`
--

DROP TABLE IF EXISTS `commentunapproval`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `commentunapproval` (
  `uid` varchar(20) NOT NULL DEFAULT '',
  `ecid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`ecid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `commentunapproval`
--

LOCK TABLES `commentunapproval` WRITE;
/*!40000 ALTER TABLE `commentunapproval` DISABLE KEYS */;
/*!40000 ALTER TABLE `commentunapproval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `essay`
--

DROP TABLE IF EXISTS `essay`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `essay` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(20) DEFAULT NULL,
  `etitle` varchar(30) DEFAULT NULL,
  `econtent` text,
  `edate` date DEFAULT NULL,
  `eapproval` int(11) DEFAULT NULL,
  `ecollect` int(11) DEFAULT NULL,
  `ecomment` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `essay`
--

LOCK TABLES `essay` WRITE;
/*!40000 ALTER TABLE `essay` DISABLE KEYS */;
INSERT INTO `essay` VALUES (6,'001','����ﵽ���Ӽ����','<div><div><p>��һ����Ҫ�Ǽ������չ��һ����ʷ���ô�Ҷ��ڼ�����ķ�չ��һ���Ƚϳ�ֵ���ʶ����Ϊ�ϳ������ݿ���ƫ����һ�㣬�����Ҿ���ϸ���������Ǻ��м�ֵ����������������ƶ�����������һ�顣</p><p>����һ�¹���΢���ķ�չ�������˼һ�㣩</p><p><b>��������򵥵Ľ�������ֳɵ��Ӽ�����ͷǵ��Ӽ�������ڷǵ��Ӽ�������У��ְ�����еʽ������ͼ̵���ʽ������ȵȣ����Ǿ��ȴ�����ļ������ʼչ����</b></p><h3>���ڼ�����</h3><p>�������Դ�ڼ������ķ�չ���������������׷�ݵ�����ս��ʱ�ڣ���ʱ�����ˡ����������㹤�ߣ����������ӻ����������Ƴɵ�С��,��һ����������,����ͬ����,���������Ǽ�����˳</p><p>�ڡ����Ļ����ϣ��Ƴ�ĩ������ֳ����ˡ����̡�������һ�ֲ���ʮ���Ƶ��Ƚ��ļ��㹤�ߡ�������������������Ϊ����,�������繫�ϵļ��㹤��ʷ�ϵ�һ������</p><p>1633�꣬Ӣ����������ŷ���յ·����ļ����Ҳ�ǱȽ���ļ��㹤�ߡ�</p><h4>��еʽ������</h4><p><b>�������ڼ�������Ҫ�����������룬�����ٶȺ��������������������������ǻ�еʽ���������Ӧ�˶�����</b></p><p>1623�꣬�¹���ѧ��ʲ����������������е����������룬��û�б�Ϊ��ʵ��</p><p>��һ̨�����Ļ�еʽ�������1642�귨����ѧ�Һ���ѧ�Ұ�˹�������ġ���̨����ʵ������һ̨8λ�ӷ�������˹���ڡ���˼¼����д���������������������еĹ������ȶ������Ϊ���ӽ������˼ά����������Կ��������Ѿ������û���ȥģ���˵�˼ά��˼�룬��Ժ���������ķ�չ������һ��Ӱ�졣</p><p>��˹���ļ���������������,���а����¹�������ѧ���������ȡ�</p><p><b>�������ȶԼ������չ����Ҫ���������㣺</b></p><blockquote>\n<p>��һ������1667-1669���Ƴ��˿��Խ��мӡ������ˡ�����������ļ���������ֻ������˹���ļ������ͬ��������Ҫ�����ؼӼ����㣬ֻҪ��˲�����������ֺܴ�ĳ˳����㡣</p>\n<p>�ڶ����������ϵͳ�еĶ������������㷨�򡣲�����������Ϊ�����������ķ�����������Ϊ��������й��Ŵ��׾��м��صİ��ԡ�</p>\n</blockquote><p>������Ͷ���г�������ʵ�ù��ܵļ����������19���ͳ���</p><p>1821�귨���˿���˹��������������˹�������ġ������������Ͷ����������������������������ļ��㣨�����100̨��������������������ء��շơ��µ��ɻ���15��ʱ���ԭ�еļ�������иĽ�����1874����Ƴ����ͼ��������һֱ���õ�20����20�����</p><p><b>������е�������Ȼ�����ٶ�����ˣ�ʹ��Ҳ�ȽϷ��㣬��������һ�Ǹ����ֶΣ������㲽�衢���������������������������Ȼ���뵽�ܷ����������˵Ĳ����������Զ�����,���ǻ�е����������Զ�����Ŀ�귢չ��</b></p><p>���зǳ���Ҫ��������Ӣ����ѧ�Ҳ���˹���ͱ��棬�����ִ����Ӽ��������һ�ٶ���ǰ������˽��������ĳ����Զ����Ƶ���Ʒ�����</p><p>����1822���ö���ʽ��ֵ�����ֵ��ֹ���������һ̨������ת�ĸǷֻ�ģ��(����ֻ�1�š�)�����ּ����������ÿ�����һ���������㣬���ܰ����Զ����һϵ���������㣬����Ǽ����������Ƶ���ѿ��</p><p>����������һ�����ڽ���������ת�ơ���ָ������÷���������ʱ�����Ը����Ӽ��������ĳ�����������������ţ��ӿ��ܼ������������·����ѡ��һ������ȥ�����ǽ�����Ӽ���������Ļ���ԭ��֮һ��</p><p>���л��кܶ࣬�ҾͲ�һһ�����ˣ���֮��еʽ�������������ԭ��ͻ���˼�붼Ϊ�ִ����Ӽ�����ĵ����춨��˼�������</p></div><br><br>���ߣ�JackXiao2017<br>���ӣ�https://www.jianshu.com/p/16c228ad84c3<br>��Դ������<br>����Ȩ���������С���ҵת������ϵ���߻����Ȩ������ҵת����ע��������</div>','2020-04-01',3,1,11,2),(7,'001','���������֪ʶ��','<div><div><p><b>���������</b><br></p><p><b>�����</b>��һ���ܰ������ȴ洢�ĳ����Զ������ٵĽ��д�����ֵ����͸�����Ϣ������ִ������ܵ����豸��</p><p>һ�������ϵͳ��<b>�����Ӳ���ͼ�������</b>���󲿷���ɡ�</p><p><b>�����Ӳ��</b>���ɵ��ӵġ����Եġ���е����������һ������ϵ�ṹ���Ӷ��ɵ������豸���Ǽ����ϵͳ���Թ�����ʵ�塣</p><p><b><b>��������</b>�Ǽ����ϵͳ�еĳ������ݺ��й��ĵ����ܳƣ��Ǽ����ϵͳ����꣬�ǿ��ƺͲ�������������ĺ��ġ�</b></p><p>�����Ӳ���ڼ����ϵͳ�����ڲ㣬��Ҫ��<b>���봦�������洢���������������ϵͳ�͸�����������豸</b>�ȹ��ܲ�����ɡ�</p><p>1946���������Ƴ������ϵ�һ̨�������ּ����ENIAC��</p><p>��һ�����������<b>���ӹ�</b>��������Ե��ӹ���Ϊ�߼���·����Ҫ����������û��ʲô������ã������ٶ���������ϴ󣻼۸񰺹�</p><p>�ڶ������������<b>�����</b>��������߼�Ԫ�������þ���ܣ��ڴ洢�������˴����壻���ܱȵ�һ��������õ㡢����������������ӳ���ͼ�س�������˲���ϵͳ�ĸ�������˸߼����ԡ�</p><p>���������������<b>���ɵ�·</b>��������߼�Ԫ�������˼��ɵ�·�����洢�������˰뵼�塣</p><p>���Ĵ����������<b>���ģ�ڳ����ģ���ɵ�·</b>�������</p><p>��һ�����������<b>����</b>�������</p><p>΢�ͼ��������<b>���С�������ᡢ����С���ɿ��Ըߡ�ʹ�û���Ҫ���ϸ񡢼۸���������ڳ����������ص㣬���Ĳ�����΢��������</b></p><p>����<b>�������������</b>�ķ�ʽ���Է�Ϊ���ּ������ģ������������ģ���ϼ������</p><p>����<b>�������;</b>�ɷ�Ϊͨ�ü������ר�ü������</p><p>��<b>������Ĺ�ģ�ʹ�������</b>����Ϊ���ͼ�����������ͼ������С�ͼ������΢�ͼ����������վ��������������������</p><p>�������<b>�ص�</b>�������ٶȿ졢���㾫�ȸߡ����м��������������߼��ж������������Զ�����������</p><p>�������<b>��;</b>����ѧ���㡢���ݴ������̿��ơ����������ϵͳ���˹����ܡ���������</p><p>������ѧ��<b>�롤ŵ����</b>����˼����Ӧ��5������������ɣ�<b>�����������������洢������������豸������ˡ����ö����ơ��͡��洢����������Ҫ����˼�롣</b>�����ö����ơ����Ǽ�����е����ݺ�ָ����Զ�������ʽ�洢�ʹ������洢���򡱾��ǽ��������ȴ���洢���У�ʹ������ڹ���ʱ���Զ��شӴ洢���ж�ȡָ�������ִ�С�</p><p>��������Ҫ�������ڿ������Ŀ�����ִ�г����е�ָ���ɸ�������������߼����㣬ʵ���߼��жϡ���Ҫ����ָ��Ϊ�����ٶȡ�</p><p>�������ɳ����������ָ��Ĵ�����ָ����������ʱ���·��΢�������Ƶ�·��ɡ�</p><p><b>������������������һ���Ϊ���봦����</b>��</p><p>�洢������1���ڴ棺����ֱ����CPU������Ϣ����ȡ�ٶȿ죬�洢������С���۸�������ߵ��ص㡣����ȡ��ʽ�ڴ�ͨ����Ϊ<b>�����ȡ�洢��RAM��ֻ���洢��ROM��</b></p><p>RAM��һ�ֶ�д�洢����ͨ�������������ִ�еĳ�����������ݣ���ȡ�ٶȿ죬����ֻ����ʱ�洢��Ϣ��<b>һ���ϵ�RAM�е���Ϣ������ʧ</b><b>��</b></p><p>ROM�е���Ϣֻ�ܶ�������������д����޸ģ���洢����Ϣ���������ô洢��ʱ��ר������д��ġ�<b>������ϵ����Ϣ���ᶪʧ��</b></p><p><b>ÿ���洢��Ԫ�ܴ��һ��������������һ���ɶ����Ʊ����ʾ��ָ��</b>��</p><p>ÿ���洢��Ԫ�����ɸ�������λ��ɣ���λ����bit���Ǵ洢������С�洢��λ��һλ�ɴ洢һλ����������8λ�����ƴ����Ϊһ���ֽڣ��ֽ��Ǽ���������ݴ���ʹ洢�����Ļ�����λ��һ���洢��Ԫ�д������Ϣ��Ϊһ�����֡���һ�����������Ķ���������λ����Ϊ���ֳ����� һ���洢��Ԫ�ɴ洢һ�������ƴ��룬���⴮�����ƴ���Ϊһ���洢�֣��⴮�����ƴ���ĸ����д洢�ֳ���</p><p>�洢���������Ĵ洢��Ԫ��������Ϊ�洢�����������洢�����Ĵ�С�ĵ�λһ�����ֽڣ�B����ǧ�ֽڣ�KB�������ֽڣ�MB���ȣ��涨��<b>1KB=1024B��1MB=1024KB��1GB=1024MB��1TB=1024GB��</b><b></b></p><p>��2����棺���д洢�����󡢼۸�͡���ȡ�ٶȽ�����������CPUֱ�ӽ�����Ϣ���ص㡣�д��̡����̡�U�̡��Ŵ��ȡ�</p><p>��3��<b>���ٻ���洢����Cache��</b>�������CPU���ڵȴ�״̬�������</p><p><b>�������</b>�Ǹ��ݸ����ľ������񣬱���һ������ȷ��ɸ�����ļ�������򡣼��������������ָ��ļ��ϻ��Ǿ���һ���ṹ�����ļ��ϡ�������ƹ��̷�Ϊ������ȷ���㷨�����ݽṹ��������ͼ��ʾ�����˼�롢�ó���������Ա��Ƽ��������</p><p>������Ʒ�����Ҫ�нṹ��������ƺ���Զ��������ơ�</p><p>������������У�<b>�������ԡ�������ԡ��߼����ԡ�</b><b></b></p><p><b>�㷨</b>�ǽ���Ĳ��裬��һ������Ĺ������ǹ涨�˽��ĳһ�ض������һϵ�����㣬�ǶԽ��ⷽ����׼ȷ��������������</p><p>�㷨������Ϊ��ȷ���ԡ������ԡ������ԡ����������</p><p>�㷨����������Ȼ���ԡ�ͼ�Ρ��㷨���ԡ�</p><p><b>���ݽṹ</b>��ָ�໥֮�����ĳ�ֹ�ϵ������Ԫ�صļ��ϡ������ݵ��߼��ṹ�����ݵĴ洢�ṹ�����ݵĲ���ʵ���㷨��</p><p><b>ջ</b>����������Ա������ƽ��ڱ��һ�˽��в����ɾ�����������Ա�</p><p>΢�ͼ������΢���������ڴ洢����I/O�ӿڵ�·��ɣ��������߽ṹ��ʵ���໥֮�����Ϣ���ݡ�</p><p><b>����</b>��΢���������ڴ洢����I/O�ӿ�֮���໥������Ϣ�Ĺ���ͨ·�������Ӷ����������Ϣ�����ߣ��Ǹ���������Ĵ�����ʡ�</p><p>��ϵͳ������Ϣ�����ݲ�ͬ�����߿���<b>�������ߡ���ַ���ߺͿ�������</b>��ɡ�</p><p>΢����������ָ����<b>�ֳ�����Ƶ����Ƶ����Ƶϵ�������ٻ�����������ˮ�߼���</b>�ȡ�</p><p>�������ֳ���ָCPUһ���ܴ��������λ����</p><p>��Ƶ��CPU��ʱ��Ƶ�ʡ���Ƶ��CPU�Ļ�׼Ƶ�ʣ���ϵͳ���ߵĹ���Ƶ�ʡ�</p><p>��ӡ���е���ʽ��ӡ������ī��ӡ����<b>�����ӡ����</b></p><p>ͼ�ε����������Ҫ�л�ͼ�Ǻʹ�ӡ�����֡�</p><p>�����洢�豸������̡�Ӳ���̡�</p><p>�������������ࣺ<b>ϵͳ�����֧�������Ӧ�������</b></p><p>ϵͳ����Ǽ����ϵͳ�����Ӳ����ε���������ڹ������ƺ�ά�������ϵͳ��Դ�ĳ��򼯺ϣ������ϵͳ�������򡢱������ȡ�</p><p>֧�������֧����������Ŀ�����ά��������������ݾݿ����ϵͳ������ϵͳ���������ߵ�</p><p>Ӧ�������Ϊ����ض���Ӧ��������������Ƶ�Ӧ�ó���������ϵͳ���칫ϵͳ��������ȡ�</p><p><b>����ϵͳ</b>��һ��ϵͳ�������ͳһ�Ĺ���Ϳ��Ƽ����ϵͳ�е���Ӳ����Դ���������֯������������̣����Ƴ����ִ�У���Ϊ�û��ṩһ�����õġ����ڲ����Ĺ���������ʹ�û��ܹ�������Ч��ʹ�ü������</p><p>�Լ������������˵������ϵͳ��һ���û�������һ������ƽ̨��һ������������н��������Ľ��棻��ϵͳ�������˵������ϵͳ��һ��ǿ���ܵ�ϵͳ��Դ������������Կ��ơ�������������Ӳ����Դ�ͳ���ִ�еļ������ϵͳ��</p><p>����ϵͳ��<b>����</b>������������洢�������豸�����ļ������û��ӿڡ�</p><p>����ϵͳ��<b>MS��DOS����ϵͳ��Windows����ϵͳ��UNIX��Linux����ϵͳ</b>��</p><p>�������ͳ��Ϊ���Դ�����򣬹����֣������򡢱�����򡢽��ͳ���</p><p>����������ָ������ϵͳ�����йصĳ������ݼ��κ���֮�йص��ĵ����ϡ�����������ɣ������ִ�еĳ�������ݡ���������������С�ά����ʹ�ú���ѵ���йص��ĵ����ϡ�</p><p>���Σ�������������棺��ο�����������㲻���������������ӵ��������ά�������������͵������Ʒ��</p><p><b>�������</b>�Ǵӹ���ͼ����������о���θ��õؿ�����ά������������ѧ�ơ���Ҫ��Ϊ���������ߡ����̡�֧����Ŀ�ƻ��͹��㡢ϵͳ�������������������ơ����롢���Ժ�ά����Ŀ��Ϊ���ڸ����ɱ������ȵ�ǰ���£����������п��޸��ԡ���Ч�ԡ��ɿ��ԡ�������ԡ���ά���ԡ��������ԡ��������ԡ�����ֲ�ԡ���׷���Կɻ������Բ������û�����������Ʒ��</p><p>����������ڷ�����������9���׶Σ�������壨�������о����������)�������������Ҫ��ơ���ϸ��ơ�ʵ�֡���װ���ԡ����ղ��ԣ������ʹ����ά�������ʹ����ά�������ۣ���</p><p><b>���������</b>��ָ������̨����λ�ò�ͬ���Ҿ��ж������ܵļ������ͨ��ͨ���豸����·�໥�������������������ϵͳ������������������ͨ��Э��Ĺ����Э���£�ʵ����Ϣ�������Դ�����һ�ּ����ϵͳ��</p><p>�����������Դ����Ӳ����Դ�������Դ����������Դ������Ҫ��Ϊ������Դ��</p><p>һ�����������ϵͳ��Ҫ�����¼���������ɣ�����ͨ��ϵͳ���������ϵͳ������Ӧ��ϵͳ��</p><p>����������м��ַ��ࣺ�������ǵĵ���Χ���ࣺ<b>��������LLAN������������MMAN�����͹�������WWAN��</b>��������ҵ����У԰���Ǿ����������ߵ��������ڳ���������������Ϊ���Ų����齨������Ὺ�ţ�����绰����������������</p><p>�������˽ṹ�������������������״�������ʽ���������˽ṹ�������͡����͡����͡���״�͡����͵ȡ�</p><p>���������Ĵ�����ʷ�Ϊ���ߺ����������ࡣ���ߴ��������˫���ߡ�ͬ����¡����ˣ���õ�Ϊ˫���ߺ͹��ˣ����ߴ������Ϊ΢���������ߺͼ��⡣</p><p><b>���������Э��</b>���йؼ��������ͨ�ŵ�һ���׹��򣬻���˵��Ϊ��ɼ��������ͨ�Ŷ��ƶ��Ĺ���Լ���ͱ�׼������Э�����﷨�����塢ʱ������Ҫ����ɡ�</p><p>�����Ŀ���ϵͳ���������ο�ģ��Ϊ�ϣӣɡ��������������ͨ�Ź��ܷ�Ϊ�߸���Σ��ɵ͵���Ϊ����㡢������·�㡢����㡢����㡢�Ự�㡢��ʾ���Ӧ�ò㡣</p><p><b>���������Ĺ���Ϊ������ͨ�š���Դ�����ֲ�����</b>��</p><p>�����������͹�����ģ��������֡��ַ���������ͼ���Լ����������뵽������в��ܱ����������ӹ�������źŵļ��ϡ�</p><p>��Ϣ���˽��������ݱ�ʾ�İ���֪Լ���������ݵĺ��塣��Ϣ�ǹ����Եģ������������Եġ������Ǹ�����Ϣ�Ĺ��ߣ���Ϣ�Ƕ����ݵĽ��͡�</p><p>���������ͨ��������������Ҫ��ָ�꣺���ݴ������ʺ������ʡ�</p><p>���ݴ���Ļ�����ʽ�ɷ�Ϊ���д���ʹ��д������֡�</p><p>���ݴ����еļ��;��������ű����Ϊ�����ࣺһ��ֻ�ܷ��ִ��������룬��һ���Ǽ��ܷ��ִ������ܾ�������ľ����롣</p><p><b>�����</b>��ָ�ڷ���ÿһ����Ϣʱ����һЩ����λ��ͨ����Щ����λ�����ն˿����ж������յ������Ƿ���ȷ��</p><p><b>������</b>��ָ�ڷ���ÿһ����Ϣʱ�����㹻�ĸ���λ��������Щ������Ϣ�����ն��ڽ����������Ŀ����²������Է��ִ��󣬻����Զ���������</p><p><b>������</b>��ȫ���Եġ����Ӱ�����ļ�����������磬ͬʱҲ�����緶Χ����Ϣ��Դ���⡣ʹ�ãԣãУ��ɣ�Э�顣</p><p>����������Ҫ��ɲ��֣�ͨ����·��·��������������ͻ�������Ϣ��Դ��</p><p>���ݴ�Դ��������ͨ����Ҫ�������·�������ܵ���Ŀ����������������·�����������ݴ�һ�������͵�������磬���ݾ������·�����Ĵ��ݣ����ձ��͵�Ŀ�����硣</p><p>�����������������ϵļ����ͳ��Ϊ������</p><p>�ɣ�Э���ȫ��������Э�顣ר��Ϊ���绥����Ŀ�Ķ���Ƶġ�</p><p>�ԣã�Э���ȫ���Ǵ������Э�飬����һ���������ӵ�Э�飬�����һ̨������������Ϣ����׼ȷ�ط��͵��������ϵ�����������</p><p>�ɣе�ַ���ڱ�ʶ�������������е�λ�á�ÿһ���ɣе�ַ��<b>�����ʶ��������ʶ</b>��������ɡ�</p><p>����������������������֡�</p></div><br><br>���ߣ�����ȷ�<br>���ӣ�https://www.jianshu.com/p/abc8090d7ba3<br>��Դ������<br>����Ȩ���������С���ҵת������ϵ���߻����Ȩ������ҵת����ע��������</div>','2020-04-01',1,1,4,2),(8,'001','���������˼ά1.1.1����������','<div><div><p>1.1.1����������</p><p>������ǵ�����ΰ��ķ���֮һ���������������һ̨������������Ѳ��70���ˣ��������ü�������������죬д���£�����Ϸ�����裬����Ӱ�����ҵ����ȸ�����;������������ǵ�������Խ��Խ�벻���ˣ���ô������������������Щ�ģ���Ҫ�˽������Ĺ���ԭ��</p><p>�ᵽ������������ǵ��Ժ���һ�����CPU,���̣���ʾ����Ӳ�̣�������һ��Ӳ���豸��</p></div><br><br>���ߣ�ghfhaifeng<br>���ӣ�https://www.jianshu.com/p/0d001a915b7d<br>��Դ������<br>����Ȩ���������С���ҵת������ϵ���߻����Ȩ������ҵת����ע��������</div>','2020-04-01',0,1,1,2),(9,'001','�����������������չʷ ��PS:�γ�����','<div><div><h1>����</h1>\n<h3>��ժҪ��</h3>\n<p>������ķ�չʷ���ܴ�һ�����Ǽ�����������ķ�չʷ����Ϊ������ʷ������Ϊ���ܣ���չǱ�����ķ�����������ĵ�λ����ӹ���ɵģ������˴�30�ֵġ����ᰢ�ˡ�(ENIAC)���������������ʮ�˵�CPU�������������������ļ��շ�չ����΢���Ӽ����ı�ըʽ�������ϸ���ѭ��Ħ�����ɵķ�չ����ʹ�����������ˡ��Ƽ��㡱���������ݡ���ǰ��δ�е���Ϣ����չ��粽�����Ա��Ľ���Ҫ�������������Լ������Ӣ�������������������������չ�����̣��˽��������������ĺ��Ĳ��ֵİ��ء�����̽��������������ķ�չ��ʷ�����������Ǹ���ֱ�۵��˽⵽��Щ��ļ������ҵ�ķ�չ���ߡ�</p>\n<h6>���ؼ��ʡ������������������չ��ʷ��CPU����Ϣ��</h6>\n<h3>��Abstract��</h3>\n<p>The history of computer processors is a large part of the history of computers. As the most sophisticated human invention, the greatest potential for development of inventions, the computer\'s status is beyond doubt. After 30 tons of Eniac (ENIAC), but now the weight of only tens of grams of CPU, which represents the development of human technology is the explosive growth of microelectronics, strictly follow the Moore\'s Law The curve of development has led us to come up with unprecedented strides in concept such as \"cloud computing\" and \"big data.\" So this article will mainly analyze the course of the development of computer processors with the aid of online literature and foreign materials in English to understand the mysteries of the core part of mankind\'s most exquisite creations. And to explore the history of the development of computer processors, allows us to more intuitive understanding of the computer industry in recent years, the development curve.</p></div><br><br>���ߣ����ղ�<br>���ӣ�https://www.jianshu.com/p/e33520e840cf<br>��Դ������<br>����Ȩ���������С���ҵת������ϵ���߻����Ȩ������ҵת����ע��������</div>','2020-04-01',0,0,0,2),(10,'002','�����������������ѧϰ�����һ�����ɡ�','<div><div><p>ѧϰ����ƪ���£���Ϊ���������Ŀ�궨�÷ǳ��ã����ǲ�ֻ������������Ӧ��ѧУӢ�￼�Ե�ѧ�������ǻ��߱���ֹ۵����繫��ѧӢ��ȴ��ֹ��Ӣ�ͨ������ѧԱ���ڶ����������Ǳ����Ľ��ܹ��䣬�������ҷ��ֺ�̽�����Ӷ�Ӱ�������Ŀ�Ŀѧϰ��</p><p>Ϊ��ʵ�����Ŀ�꣬������������������Ϊ������</p><p>��һ�����������ġ�STEAM��ϵ������������������������յľ����ǣ�ѧϰ��ͨ��������ʽ��ѧϰ����ȥ̽���͹����Լ���������ϵ����Ҳ�������������ʦ�ǣ��ͷ�����ѧԱ�������ġ���ÿ��ˢˢ���ƣ��򵥵ļ�ֻᴴ���漣����������һ�콨�ɵġ���</p><p>�ڶ������ǡ�ѧϰ������������������ȡ�����̵�һ�㣬Ҳ�����������̵ķ���������˽��ڣ��໥�̣�����ʹ�á�</p><p>���������Ϻ�����ѧϰ���������ﶼ���쾡���ܶ�Ļ��ᣬ����ѧϰ��ȥ���̱��ˡ�����ʦ���á��������Ľ�ɫ����ѧϰ�������ۡ�������̱���������з�չ�Լ����������������ָ������Լ������������ġ���ѧԱת�����̣�С�೤��ȡ�</p><p>�����������������ԿƼ���˾Rosetta stone������������������ʦͨ��������Rosetta stone���ԿƼ���˾1993�������������������ѧϰϵͳ��ͨ����������缼��ģ����ĸ���Ļ����Լ�ѧĸ�����Ȼ���̣�����ʵ������Ŀ������ѧϰĿ������辭��ĸ�����ķ��룬ʹ�κ�������˶�������ѧϰĸ��������ȥѧϰ�����Ч�������ﲢ������ѧ����ȥ������˼��������ѧϰ���Գ���������ٶ�ʵ�ֵڶ����Ե�Ŀ��!</p><p>����ǰ����������������������������Rosetta stone��������������Ҫ����ɲ��֡����������Rosetta stone��˾��ͬ���Ƴ��������й����飬�������й�ѧԱ���ܸ�����ϰ��һ������Ŀγ̡�</p><p>Rosetta stone���������ԣ���������ѡ�����ṩ��ѧԱ��Ϊѧϰ��������Ź��ߡ�Ϊ����ѧԱ�������ʵ�ֵ��½�С˵�Ķ������������������Ĳ�������Rosetta stone�����й����踨����Ƶ��������ս���������Ķ�Ӫ������Ķ�Ӫ����������Ӫ����Ȼƴ��Ӫ�ȵȣ��������﹫�ںŸ��Ǹ�ѧԱ�ҳ��ṩ�˸��ָ���������������������app�������ߣ�����Ҳ�����˿ɹ�ѧϰ�ķḻ����Դ��</p></div><br><br>���ߣ���������������Sharen<br>���ӣ�https://www.jianshu.com/p/e5c37d0d8e88<br>��Դ������<br>����Ȩ���������С���ҵת������ϵ���߻����Ȩ������ҵת����ע��������</div>','2020-04-01',0,0,0,1),(11,'002','��ҵ���֮���Թ�ѧ������ò�ƷԽ��Խ����','<div><div><h2><b>ʲô�Ǹ��ԣ�</b></h2><p>�����ԡ�����������ʱ����˼��������ڽ���ŷ����ѧʱ�������ѧ�����ʱָ���ǻ�����������ĸо���������<b>��г嶯������</b>��</p><p>����һ�����ձ�Ӧ�úܹ㷺����һ��������֪���Ӿ���������ζ��������봥��<b>���ָй�</b>�о����ۺϵ�����ѧ���</p><p>������һ����̬�ĸ������һ����̬�Ĺ��̣���̬�ġ����ԡ���ָ<b>�˵ĸ��飬ĳ������</b>����̬�ġ����ԡ���ָ�˵���ʶ������ָ���壨�ˣ����ܵ����̼���������Ӧ��ȫ���̡�</p><h2><b>ʲô�Ǹ��Թ�ѧ��</b></h2><p>�����Թ�ѧ����Ӣ�ı���ΪKansei Engineering��Kansei���ձ�����ԡ������󥻥������롣</p><p>���Թ�ѧ�����Ͽ��Զ���Ϊ���Թ�ѧ���ַ����跨��<b>�˵ĸ��ָ��Զ�����</b>������������������Ѱ�ҳ�����������빤ѧ����ʹ�õĸ���������֮��ĸ�Ԫ������ϵ����Ϊ�����о��Ļ������򵥵�˵�����Թ�ѧ���ǽ�����ת�뵽��ѧ��ȥ����<b>���˵ĸ��Է���</b>�Ľ��ת��Ϊ<b>��Ʒ�������Ҫ��</b>��<b>�����˵�ϲ���������Ʒ</b>�������ڹ�ѧ��һ���·�֧��</p><h2>���Թ�ѧ���˻�����ѧ���������ģ�</h2><p>���Թ�ѧ��һ������ߵĸо���������󣨸��ԣ�Ӧ���ڴ��з��Ĳ�Ʒ�еĹ���ǿ����˻�����ѧ��������ˣ���һ���Ƕ��������Թ�ѧҲ��һ���˻�����ѧ������</p><p>�˻�����ѧ����ע������<b>��Ʒ��ʵ���Ժ͹�����</b>�����Ǽ��������ʹ�������Ʒ�����˵�����������</p><p>���Թ�ѧ����Ķ�<b>�����ߵ��������������</b>���п��ǣ�ȷ����Ʒʹ���ܹ����������������ԡ�</p><h2>���Թ�ѧ���ձ���Ӧ��<br>\n</h2><p>1970 �꣬�ձ��㵺��ѧ���о���Ա��סլ����п�ʼȫ�濼�Ǿ�ס�ߵ���к������о���ν���ס�ߵĸ�����סլ����о��廯Ϊ��ѧ�������������罫���Է������빤ѧ�о�����ĳ��ԣ��ڵ�ʱ����Ϊ��������ѧ����</p><p>1987 �꣬���Դ�������˾����о������ȳ����ˡ����Թ�ѧ�о��ҡ����˺��ձ���Ҫ����������ͼҵ���ҵ��̳��������Ƶ��о�������</p><p>1993 �꣬���ձ��Ĳ�ʡ�����ˡ����Թ�ѧίԱ�ᡱ���о����Թ�ѧ��չ�Ŀ����ԣ���1997���ֳ���ȫ���Եġ����Թ�ѧѧ�ᡱ��</p><p><b>���ø��Թ�ѧ������Ʒ�з���ȡ�����ش�ĳɹ�</b>���������м�����Ϊ���͵Ĳ�Ʒ�з��İ���ʹ�ø��Թ�ѧ���ձ���ҵ�����ʢ����</p><p>���Դ���ø��Թ�ѧ�з����ܳ�Miyata����ŷ�ޱ���ΪMX5�����˳��Ƴ�������ʮ���궼��������������ܳ�������˹��¼��2001����</p></div><br><br>���ߣ����Թ�ѧ��Ѷվ<br>���ӣ�https://www.jianshu.com/p/13ad3bf6eba9<br>��Դ������<br>����Ȩ���������С���ҵת������ϵ���߻����Ȩ������ҵת����ע��������</div>','2020-04-01',1,0,2,4),(36,'003','llll','<p>fhgkklll<img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/50/pcmoren_huaixiao_org.png\" alt=\"[��Ц]\" data-w-e=\"1\"><img src=\"data:image/jpeg;base64,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dDHk6AiPgyQRGI6AkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAH//Z\" style=\"max-width: 100%;\"></p>','2020-05-30',0,0,0,1);
/*!40000 ALTER TABLE `essay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `essaycomment`
--

DROP TABLE IF EXISTS `essaycomment`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `essaycomment` (
  `ecid` int(11) NOT NULL AUTO_INCREMENT,
  `eid` int(11) DEFAULT NULL,
  `uid` varchar(20) DEFAULT NULL,
  `econtent` text,
  `ecdate` date DEFAULT NULL,
  `ecapproval` int(11) DEFAULT NULL,
  `ecunapproval` int(11) DEFAULT NULL,
  PRIMARY KEY (`ecid`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `essaycomment`
--

LOCK TABLES `essaycomment` WRITE;
/*!40000 ALTER TABLE `essaycomment` DISABLE KEYS */;
INSERT INTO `essaycomment` VALUES (19,11,'001','��','2020-04-01',0,0),(20,6,'001','111','2020-04-01',0,0),(21,6,'003','hao','2020-04-01',0,0),(22,6,'003','1111','2020-04-01',0,0),(23,6,'003','444','2020-04-01',0,0),(24,7,'003','000','2020-04-01',0,0),(25,6,'003','5555','2020-04-01',0,0),(26,6,'003','666','2020-04-01',0,0),(27,6,'003','333','2020-05-29',0,0),(28,6,'003','hhhhhh','2020-05-29',0,0),(29,6,'003','lllllllll','2020-05-29',0,0),(30,6,'003','mmmmmmmm','2020-05-29',0,0),(31,7,'003','kkkk','2020-05-29',0,0),(32,6,'11','111','2020-05-29',0,0),(33,8,'003','11','2020-05-29',0,0),(34,11,'003','11','2020-05-29',0,0),(35,7,'003','111111','2020-05-29',0,0),(36,7,'003','lllll','2020-05-30',0,0);
/*!40000 ALTER TABLE `essaycomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem`
--

DROP TABLE IF EXISTS `problem`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `problem` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(20) DEFAULT NULL,
  `pcontent` text,
  `pdate` date DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `problem`
--

LOCK TABLES `problem` WRITE;
/*!40000 ALTER TABLE `problem` DISABLE KEYS */;
INSERT INTO `problem` VALUES (6,'002','��Ƶĺ����Ǽ�����?','2020-04-01'),(7,'002','�����React�н�����������ӵ�JSON���飿','2020-04-01'),(8,'002','·���л�����������ʹ������ܹ����µ���componentDi','2020-04-01'),(9,'002','chrome����û��Ӧ��ô�죿','2020-04-01'),(10,'001','mysql���ݿ��У����Ϊ���е��ֶ�����Ĭ��ֵ��','2020-04-01');
/*!40000 ALTER TABLE `problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problemattention`
--

DROP TABLE IF EXISTS `problemattention`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `problemattention` (
  `uid` varchar(20) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `problemattention`
--

LOCK TABLES `problemattention` WRITE;
/*!40000 ALTER TABLE `problemattention` DISABLE KEYS */;
INSERT INTO `problemattention` VALUES ('002',6),('003',6),('11',6);
/*!40000 ALTER TABLE `problemattention` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response`
--

DROP TABLE IF EXISTS `response`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `response` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(20) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `rcontent` text,
  `rdate` date DEFAULT NULL,
  `rapproval` int(11) DEFAULT NULL,
  `runapproval` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `response`
--

LOCK TABLES `response` WRITE;
/*!40000 ALTER TABLE `response` DISABLE KEYS */;
INSERT INTO `response` VALUES (5,'002',6,'���ǡ�  ��Ƶĺ��������ǿ����������ĽǶ��뷽ʽ��ְҵ�жϡ�','2020-04-01',0,0),(6,'003',7,'����뽫��ӵ��´���������ӵ�React����������Ⱦʱ�����������������ֿ�todoItems��Ψһid��  �㲻Ӧ��ʹ��push�ı䵱ǰ״̬����Ӧ��ʹ��һ������ǰһ�����ݵ�ȫ������������״̬��','2020-04-01',0,0),(7,'003',8,'componentDidMount �ǻ�ȡ ajax �����õģ�����ֻ����һ�Ρ�','2020-04-01',0,0),(8,'003',6,'1111','2020-04-01',0,0),(9,'003',9,'111','2020-04-01',0,0),(10,'003',6,'222','2020-04-01',0,0),(11,'003',7,'000','2020-04-01',0,0),(12,'003',6,'333','2020-04-01',0,0),(13,'003',6,'eeee','2020-04-01',0,0),(14,'001',6,'1111','2020-04-14',0,0),(15,'001',6,'333','2020-04-14',0,0),(16,'001',6,'111','2020-04-14',0,0),(17,'001',6,'44','2020-04-14',0,0),(18,'001',6,'11','2020-04-16',0,0),(19,'003',6,'lll','2020-05-29',0,0),(20,'003',6,'hhhhhhhh','2020-05-29',0,0),(21,'003',10,'kkkk','2020-05-29',0,0),(22,'003',7,'lllllllll','2020-05-29',0,0),(23,'003',7,'jjjjj','2020-05-29',0,0),(24,'003',8,'llllll','2020-05-29',0,0),(25,'11',6,'111','2020-05-29',0,0),(26,'003',8,'11','2020-05-29',0,0),(27,'003',10,'22','2020-05-29',0,0),(28,'003',8,'kkkl','2020-05-30',0,0);
/*!40000 ALTER TABLE `response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responseapproval`
--

DROP TABLE IF EXISTS `responseapproval`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `responseapproval` (
  `uid` varchar(20) NOT NULL DEFAULT '',
  `rid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `responseapproval`
--

LOCK TABLES `responseapproval` WRITE;
/*!40000 ALTER TABLE `responseapproval` DISABLE KEYS */;
/*!40000 ALTER TABLE `responseapproval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responseunapproval`
--

DROP TABLE IF EXISTS `responseunapproval`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `responseunapproval` (
  `uid` varchar(20) NOT NULL DEFAULT '',
  `rid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `responseunapproval`
--

LOCK TABLES `responseunapproval` WRITE;
/*!40000 ALTER TABLE `responseunapproval` DISABLE KEYS */;
/*!40000 ALTER TABLE `responseunapproval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'����'),(2,'�����'),(3,'��ѧ'),(4,'��ѧ'),(5,'���ù���'),(6,'��ʷ��'),(7,'�������'),(8,'����ѧ'),(9,'ҽҩ����'),(10,'��ѧ'),(11,'������ѧ'),(12,'ũ��԰��'),(13,'����');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users` (
  `uid` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `tel` char(11) DEFAULT NULL,
  `uimg` varchar(100) DEFAULT 'https://pic4.zhimg.com/da8e974dc_im.jpg',
  `signature` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` char(2) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('001','001','1234567','http://img.mp.itc.cn/upload/20170724/cf678e09eb384401aa616ba134126357_th.jpg','Ŭ��',8,'Ů'),('002','002','1234567','http://image.yy.com/yywebalbumbs2bucket/144152f8680f421599233c6ffcfcef49_1476265267104.jpeg','Ŭ��',8,'Ů'),('003','003','1234567','http://pic1.zhimg.com/50/v2-af12f7b6f7eb2f2f5f7e2f3b7880cf01_hd.jpg','Ŭ��',8,'Ů'),('004','004','1234567','http://b-ssl.duitang.com/uploads/item/201511/21/20151121171154_KZL4N.jpeg','Ŭ��',8,'Ů'),('005','005','1234567','http://cdn.duitang.com/uploads/item/201412/17/20141217211542_CYRCV.jpeg','Ŭ��',8,'Ů'),('000','000',NULL,'https://pic4.zhimg.com/da8e974dc_im.jpg',NULL,NULL,NULL),('009','009',NULL,'https://pic4.zhimg.com/da8e974dc_im.jpg',NULL,NULL,NULL);
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

-- Dump completed on 2020-05-30 23:25:40
