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
INSERT INTO `essay` VALUES (6,'001','从算筹到光子计算机','<div><div><p>这一章主要是计算机发展的一个历史，让大家对于计算机的发展有一个比较充分的认识，因为较长，内容可能偏枯燥一点，但是我觉得细读下来还是很有价值，尤其是体会需求推动技术进步这一块。</p><p>（下一章关于微机的发展会更有意思一点）</p><p><b>我在这里简单的将计算机分成电子计算机和非电子计算机，在非电子计算机当中，又包括机械式计算机和继电器式计算机等等，我们就先从最早的计算机开始展开。</b></p><h3>早期计算器</h3><p>计算机起源于计算器的发展，计算器最早可以追溯到春秋战国时期，那时发明了“算筹”这种运算工具，其是用竹子或其他材料制成的小条,按一定规则排列,代表不同的数,来帮助人们记忆和运筹。</p><p>在“算筹”的基础上，唐朝末年民间又出现了“算盘”，这是一种采用十进制的先进的计算工具。由于算盘灵巧轻便而广为流传,它是世界公认的计算工具史上的一大发明。</p><p>1633年，英国人威廉·欧特勒德发明的计算尺也是比较早的计算工具。</p><h4>机械式计算器</h4><p><b>由于早期计算器需要人力大量参与，运算速度很慢，不符合社会进步的需求，于是机械式计算机便逐渐应运而生。</b></p><p>1623年，德国数学家什卡尔特提出了制造机械计算机的设想，但没有变为现实。</p><p>第一台真正的机械式计算机是1642年法国数学家和哲学家巴斯卡发明的。这台机器实际上是一台8位加法器。巴斯卡在《沉思录》中写道：“这种算术器所进行的工作，比动物的行为更接近人类的思维。”从这可以看出，他已经有了用机器去模拟人的思维的思想，这对后来计算机的发展产生了一定影响。</p><p>巴斯卡的计算机启发了许多人,其中包括德国著名数学家莱布尼兹。</p><p><b>莱布尼兹对计算机发展的重要贡献有两点：</b></p><blockquote>\n<p>第一是他于1667-1669年制成了可以进行加、减、乘、除四则运算的计算机。这种机器与巴斯卡的计算机不同，它不需要连续地加减运算，只要在瞬间就能完成数字很大的乘除运算。</p>\n<p>第二是他提出了系统中的二进制算术运算法则。不过他并不认为二进制是他的发明，而是认为其出自于中国古代易经中记载的八卦。</p>\n</blockquote><p>真正能投入市场、发挥实用功能的计算机出现在19世纪初。</p><p>1821年法国人卡里斯·哈依尔·托马斯设计制造的“四则运算机”投入批量生产，这是最早成批生产的计算（年产量100台），后来瑞典人威尔多特·陶菲·奥德纳花了15年时间对原有的计算机进行改进，于1874年设计出新型计算机，其一直沿用到20世纪20年代。</p><p><b>上述机械计算机虽然运算速度提高了，使用也比较方便，但仍属于一角辅助手段，其运算步骤、程序仍需操纵者来决定。人们自然地想到能否让它摆脱人的操作，进行自动运算,于是机械计算机又向自动化的目标发展。</b></p><p>其中非常重要的人物是英国数学家查理斯·巴贝奇，他在现代电子计算机诞生一百多年前就提出了近手完整的程序自动控制的设计方案。</p><p>他于1822年用多项式数值表的数值差分规律制造了一台可以运转的盖分机模型(“差分机1号”)。这种计算机不仅能每次完成一个算术运算，还能安排自动完成一系列算术运算，这就是计算机程序设计的萌芽。</p><p>他还设想了一种现在叫做“条件转移”的指令，即在用分析机解题时，可以根电子计算机技术某个被计算结果的正负号，从可能继续运算的两条路线中选择一条做下去，这是今天电子计算机工作的基本原理之一。</p><p>其中还有很多，我就不一一介绍了，总之机械式计算机的许多基本原理和基本思想都为现代电子计算机的诞生奠定了思想基础。</p></div><br><br>作者：JackXiao2017<br>链接：https://www.jianshu.com/p/16c228ad84c3<br>来源：简书<br>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>','2020-04-01',3,1,11,2),(7,'001','计算机导论知识点','<div><div><p><b>计算机导论</b><br></p><p><b>计算机</b>是一种能按照事先存储的程序，自动、高速的进行大量数值计算和各种信息处理的现代化智能电子设备。</p><p>一个计算机系统由<b>计算机硬件和计算机软件</b>两大部分组成。</p><p><b>计算机硬件</b>是由电子的、磁性的、机械的器件按照一定的体系结构连接而成的物理设备，是计算机系统赖以工作的实体。</p><p><b><b>计算机软件</b>是计算机系统中的程序、数据和有关文档的总称，是计算机系统的灵魂，是控制和操作计算机工作的核心。</b></p><p>计算机硬件在计算机系统的最内层，主要由<b>中央处理器、存储器、输入输出控制系统和各种输入输出设备</b>等功能部件组成。</p><p>1946年美国研制出世界上第一台电子数字计算机ENIAC。</p><p>第一代计算机——<b>电子管</b>计算机：以电子管作为逻辑电路的主要器件；几乎没有什么软件配置；运算速度慢；体积较大；价格昂贵。</p><p>第二代计算机——<b>晶体管</b>计算机：逻辑元器件采用晶体管；内存储器采用了磁心体；性能比第一代计算机好点、在软件方面配置了子程序和监控程序；提出了操作系统的概念，出现了高级语言。</p><p>第三代计算机——<b>集成电路</b>计算机：逻辑元件采用了集成电路；主存储器采用了半导体。</p><p>第四代计算机——<b>大规模于超大规模集成电路</b>计算机。</p><p>新一代计算机——<b>智能</b>计算机。</p><p>微型计算机具有<b>体积小、重量轻、功耗小、可靠性高、使用环境要求不严格、价格低廉、易于成批生产等特点，核心部件是微处理器。</b></p><p>按照<b>计算机处理数据</b>的方式可以分为数字计算机、模拟计算机、数字模拟混合计算机。</p><p>按照<b>计算机用途</b>可分为通用计算机和专用计算机。</p><p>按<b>计算机的规模和处理能力</b>分类为巨型计算机、大中型计算机、小型计算机、微型计算机、工作站、服务器、网络计算机。</p><p>计算机的<b>特点</b>：运算速度快、计算精度高、具有记忆能力、具有逻辑判断能力、具有自动控制能力。</p><p>计算机的<b>用途</b>：科学计算、数据处理、过程控制、计算机辅助系统、人工智能、电子商务。</p><p>美国数学家<b>冯·诺依曼</b>提出了计算机应由5个基本部分组成：<b>运算器、控制器、存储器、输入输出设备。提出了“采用二进制”和“存储程序”两个重要基本思想。</b>“采用二进制”就是计算机中的数据和指令均以二进制形式存储和处理。“存储程序”就是将程序事先存入存储器中，使计算机在工作时能自动地从存储器中读取指令、分析后执行。</p><p>运算器主要功能是在控制器的控制下执行程序中的指令，完成各种算术运算和逻辑运算，实现逻辑判断。主要技术指标为运算速度。</p><p>控制器由程序计数器、指令寄存器、指令译码器、时序电路和微操作控制电路组成。</p><p><b>控制器和运算器合在一起称为中央处理器</b>。</p><p>存储器：（1）内存：具有直接与CPU交换信息，存取速度快，存储容量较小，价格相对外存高等特点。按存取方式内存通常分为<b>随机存取存储器RAM和只读存储器ROM。</b></p><p>RAM是一种读写存储器，通常用来存放正在执行的程序及所需的数据，存取速度快，但它只是临时存储信息，<b>一旦断电RAM中的信息立即丢失</b><b>。</b></p><p>ROM中的信息只能读出而不能重新写入和修改，其存储的信息是在制作该存储器时用专门仪器写入的。<b>计算机断电后，信息不会丢失。</b></p><p><b>每个存储单元能存放一个二进制数，或一条由二进制编码表示的指令</b>。</p><p>每个存储单元由若干个二进制位组成，“位”（bit）是存储器的最小存储单位，一位可存储一位二进制数，8位二进制代码称为一个字节，字节是计算机中数据处理和存储容量的基本单位。一个存储单元中存入的信息称为一个“字”，一个字所包含的二进制数的位数称为“字长”。 一个存储单元可存储一串二进制代码，称这串二进制代码为一个存储字，这串二进制代码的个数叫存储字长。</p><p>存储器所包含的存储单元的总数称为存储容量，衡量存储容量的大小的单位一般用字节（B），千字节（KB），兆字节（MB）等，规定：<b>1KB=1024B，1MB=1024KB，1GB=1024MB，1TB=1024GB。</b><b></b></p><p>（2）外存：具有存储容量大、价格低、存取速度较慢、不能与CPU直接交换信息等特点。有磁盘、光盘、U盘、磁带等。</p><p>（3）<b>高速缓冲存储器（Cache）</b>：解决当CPU处于等待状态的情况。</p><p><b>程序设计</b>是根据给出的具体任务，编制一个能正确完成该任务的计算机程序。计算机程序是有序指令的集合或是具有一定结构的语句的集合。程序设计过程分为三步：确定算法与数据结构、用流程图表示程序的思想、用程序设计语言编制计算机程序。</p><p>程序设计方法主要有结构化程序设计和面对对象程序设计。</p><p>程序设计语言有：<b>机器语言、汇编语言、高级语言。</b><b></b></p><p><b>算法</b>是解题的步骤，是一组有穷的规则，它们规定了解决某一特定问题的一系列运算，是对解题方案的准确与完整的描述。</p><p>算法的特性为：确定性、有穷性、可行性、输入输出。</p><p>算法的描述：自然语言、图形、算法语言。</p><p><b>数据结构</b>是指相互之间存在某种关系的数据元素的集合。由数据的逻辑结构、数据的存储结构和数据的操作实现算法。</p><p><b>栈</b>是特殊的线性表，是限制仅在表的一端进行插入和删除操作的线性表。</p><p>微型计算机由微处理器、内存储器和I/O接口电路组成，采用总线结构来实现相互之间的信息传递。</p><p><b>总线</b>是微处理器、内存储器和I/O接口之间相互交换信息的公共通路。是连接多个部件的信息传输线，是各部件共享的传输介质。</p><p>按系统传输信息的内容不同，总线可由<b>数据总线、地址总线和控制总线</b>组成。</p><p>微处理器性能指标有<b>字长、主频、外频、倍频系数、高速缓存容量及流水线技术</b>等。</p><p>机器的字长是指CPU一次能处理的数据位数。</p><p>主频是CPU的时钟频率。外频是CPU的基准频率，是系统总线的工作频率。</p><p>打印机有点针式打印机、喷墨打印机、<b>激光打印机。</b></p><p>图形的输出工具主要有绘图仪和打印机两种。</p><p>辅助存储设备：软磁盘、硬磁盘。</p><p>计算机软件分三类：<b>系统软件、支撑软件、应用软件。</b></p><p>系统软件是计算机系统中最靠近硬件层次的软件。用于管理、控制和维护计算机系统资源的程序集合，如操作系统、汇编程序、编译程序等。</p><p>支撑软件是支撑其他软件的开发与维护的软件，如数据据库管理系统、网络系统、开发工具等</p><p>应用软件是为解决特定的应用领域问题而编制的应用程序。如银行系统、办公系统、浏览器等。</p><p><b>操作系统</b>是一种系统软件，他统一的管理和控制计算机系统中的软、硬件资源，合理的组织计算机工作流程，控制程序的执行，并为用户提供一个良好的、易于操作的工作环境，使用户能够灵活方便有效地使用计算机。</p><p>对计算机操作者来说，操作系统是一个用户环境，一个工作平台，一个人与机器进行交互操作的界面；对系统设计者来说，操作系统是一种强功能的系统资源管理程序，是用以控制、管理计算机中软硬件资源和程序执行的集成软件系统。</p><p>操作系统的<b>功能</b>：处理机管理、存储器管理、设备管理、文件管理、用户接口。</p><p>操作系统有<b>MS—DOS操作系统、Windows操作系统、UNIX、Linux操作系统</b>。</p><p>翻译程序统称为语言处理程序，共三种：汇编程序、编译程序、解释程序。</p><p>计算机软件是指与计算机系统操作有关的程序、数据及任何与之有关的文档资料。有两部分组成：及其可执行的程序和数据、与软件开发、运行、维护、使用和培训等有关的文档资料。</p><p>软件危机包含两个方面：如何开发软件以满足不断增长，日趋复杂的需求、如何维护数量不断膨胀的软件产品。</p><p><b>软件工程</b>是从管理和技术两方面研究如何更好地开发和维护计算机软件的学科。三要素为方法、工具、过程。支持项目计划和估算、系统和软件需求分析、软件设计、编码、测试和维护。目标为：在给定成本、进度的前提下，开发出具有可修改性、有效性、可靠性、可理解性、可维护性、可重用性、可适用性、可移植性、可追踪性可互操作性并满足用户需求的软件产品。</p><p>软件生产周期分三个过程有9个阶段：软件定义（可行性研究、需求分析)、软件开发（概要设计、详细设计、实现、组装测试、验收测试）、软件使用与维护（软件使用与维护、退役）。</p><p><b>计算机网络</b>是指把若干台地理位置不同，且具有独立功能的计算机，通过通信设备和线路相互连接起来，在网络操作系统、网络管理软件及网络通信协议的管理和协调下，实现信息传输和资源共享的一种计算机系统。</p><p>计算机网络资源包括硬件资源、软件资源、和数据资源，最重要的为数据资源。</p><p>一个计算机网络系统主要由以下几个部分组成：网络通信系统，网络操作系统，网络应用系统。</p><p>计算机网络有几种分类：按所覆盖的地域范围分类：<b>局域网（LLAN）、城域网（MMAN）、和广域网（WWAN）</b>。例如企业网和校园网是局域网，有线电视网属于城域网，广域网多为电信部门组建，向社会开放，例如电话网、公用数据网。</p><p>网络拓扑结构用来描述网络的连接形状和组成形式，网络拓扑结构有总线型、环型、星型、网状型、树型等。</p><p>计算机网络的传输介质分为有线和无线两大类。有线传输介质有双绞线、同轴电缆、光纤，最常用的为双绞线和光纤；无线传输介质为微波、红外线和激光。</p><p><b>计算机网络协议</b>是有关计算机网络通信的一整套规则，或者说是为完成计算机网络通信而制定的规则、约定和标准。网络协议由语法、语义、时序三大要素组成。</p><p>著名的开放系统互连基本参考模型为ＯＳＩ。它将整个网络的通信功能分为七个层次：由低到高为物理层、数据链路层、网络层、运输层、会话层、表示层和应用层。</p><p><b>计算机网络的功能为：数据通信、资源共享、分布处理</b>。</p><p>数据是描述客观事物的，包括数字、字符、声音、图像以及所有能输入到计算机中并能被计算机程序加工处理的信号的集合。</p><p>信息是人借助于数据表示的按已知约定赋予数据的含义。信息是观念性的，数据是物理性的。数据是负载信息的工具，信息是对数据的解释。</p><p>衡量计算机通信质量有两个主要的指标：数据传输速率和误码率。</p><p>数据传输的基本方式可分为并行传输和串行传输两种。</p><p>数据传输中的检错和纠错：抗干扰编码分为两大类：一类只能发现错误的验错码，另一类是既能发现错误又能纠正错误的纠错码。</p><p><b>验错码</b>是指在发送每一组信息时发送一些附加位，通过这些附加位，接收端可以判断所接收的数据是否正确。</p><p><b>纠错码</b>是指在发送每一组信息时发送足够的附加位，借助这些附加信息，接收端在接收译码器的控制下不仅可以发现错误，还能自动纠正错误。</p><p><b>因特网</b>是全球性的、最具影响力的计算机互联网络，同时也是世界范围的信息资源宝库。使用ＴＣＰ／ＩＰ协议。</p><p>因特网的主要组成部分：通信线路、路由器、服务器与客户机、信息资源。</p><p>数据从源主机出发通常需要经过多个路由器才能到达目的主机，所经过的路由器负责将数据从一个网络送到另个网络，数据经过多个路由器的传递，最终被送到目的网络。</p><p>所有连接在因特网上的计算机统称为主机。</p><p>ＩＰ协议的全称是网络协议。专门为网络互联的目的而设计的。</p><p>ＴＣＰ协议的全称是传输控制协议，它是一个面向连接的协议，允许从一台机器发出的信息包被准确地发送到互联网上的其他机器。</p><p>ＩＰ地址用于标识本机在因特网中的位置。每一个ＩＰ地址由<b>网络标识和主机标识</b>两部分组成。</p><p>域名就是入网计算机的名字。</p></div><br><br>作者：北沐橙风<br>链接：https://www.jianshu.com/p/abc8090d7ba3<br>来源：简书<br>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>','2020-04-01',1,1,4,2),(8,'001','计算与计算思维1.1.1计算机与计算','<div><div><p>1.1.1计算机与计算</p><p>计算机是当代最伟大的发明之一，从人类制造出第一台计算机，迄今已差不多70年了，人们利用计算机上网，聊天，写文章，打游戏，听歌，看电影购物，企业管理等各种用途。计算机在人们的生活中越来越离不开了，那么，计算机是如何做到这些的？需要了解计算机的工作原理。</p><p>提到计算机，在我们的脑海中一般会是CPU,键盘，显示器，硬盘，主机等一堆硬件设备。</p></div><br><br>作者：ghfhaifeng<br>链接：https://www.jianshu.com/p/0d001a915b7d<br>来源：简书<br>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>','2020-04-01',0,1,1,2),(9,'001','计算机（处理器）发展史 （PS:课程论文','<div><div><h1>正文</h1>\n<h3>【摘要】</h3>\n<p>计算机的发展史，很大一部分是计算机处理器的发展史。作为人类有史以来最为精密，发展潜力最大的发明，计算机的地位是毋庸置疑的，经历了从30吨的“埃尼阿克”(ENIAC)到如今重量不过几十克的CPU，其中所代表的是人类的技艺发展，是微电子技术的爆炸式增长，严格遵循着摩尔定律的发展曲线使我们衍生出了“云计算”，“大数据”等前所未有的信息化发展大跨步。所以本文将主要借助网络文献以及国外的英文资料来解析计算机处理器发展的历程，了解人类最精美的造物的核心部分的奥秘。并且探索计算机处理器的发展历史，可以让我们更加直观的了解到这些年的计算机行业的发展曲线。</p>\n<h6>【关键词】计算机，处理器，发展历史，CPU，信息化</h6>\n<h3>【Abstract】</h3>\n<p>The history of computer processors is a large part of the history of computers. As the most sophisticated human invention, the greatest potential for development of inventions, the computer\'s status is beyond doubt. After 30 tons of Eniac (ENIAC), but now the weight of only tens of grams of CPU, which represents the development of human technology is the explosive growth of microelectronics, strictly follow the Moore\'s Law The curve of development has led us to come up with unprecedented strides in concept such as \"cloud computing\" and \"big data.\" So this article will mainly analyze the course of the development of computer processors with the aid of online literature and foreign materials in English to understand the mysteries of the core part of mankind\'s most exquisite creations. And to explore the history of the development of computer processors, allows us to more intuitive understanding of the computer industry in recent years, the development curve.</p></div><br><br>作者：张照博<br>链接：https://www.jianshu.com/p/e33520e840cf<br>来源：简书<br>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>','2020-04-01',0,0,0,2),(10,'002','《塔牌外语——让外语学习像打牌一样轻松》','<div><div><p>学习了这篇文章，认为塔牌外语的目标定得非常好：我们不只是培养能轻松应对学校英语考试的学生，而是还具备大局观的世界公民！学英语却不止于英语，通过激发学员的内动力，不再是被动的接受灌输，而是自我发现和探索，从而影响其它的科目学习！</p><p>为了实现这个目标，塔牌外语用了三座塔为根基：</p><p>第一座塔是美国的“STEAM体系塔”，塔牌外语从这座塔吸收的精华是：学习者通过“沉浸式”学习法，去探索和构建自己的语言体系。这也是塔牌外语的老师们，客服们向学员传达最多的。“每天刷刷塔牌，简单的坚持会创造奇迹”“罗马不是一天建成的”。</p><p>第二座塔是“学习金字塔”。塔牌外语取其最坚固的一层，也是令记忆最深刻的方法：向别人讲授，相互教，快速使用。</p><p>不管是线上和线下学习，塔牌外语都创造尽可能多的机会，引导学习者去“教别人”，老师做好“教练”的角色，让学习者在讨论、体验与教别人这过程中发展自己的语言能力，发现更棒的自己，提升自信心。如学员转做助教，小班长活动等。</p><p>第三座塔是美国语言科技公司Rosetta stone译名“罗塞塔”或“如师通”。美国Rosetta stone语言科技公司1993年成立开发出这套语言学习系统，通过计算机网络技术模拟了母语般的环境以及学母语的自然过程，真正实现了用目标语来学习目标语，无需经过母语区的翻译，使任何年龄的人都能像孩子学习母语那样地去学习外语，有效掌握外语并能用所学外语去交流和思考，帮助学习者以超乎想象的速度实现第二语言的目标!</p><p>其中前两座塔是塔牌外语的理念，第三座塔Rosetta stone是塔牌外语最重要的组成部分。塔牌外语和Rosetta stone公司共同研制出更符合中国国情，令我们中国学员们能更快速习得一门外语的课程。</p><p>Rosetta stone因其优秀性，塔牌外语选择其提供给学员作为学习外语的入门工具。为了让学员从零基础实现到章节小说阅读，塔牌外语所包括的不仅仅有Rosetta stone，还有哈哈妈辅导视频，各种挑战赛，经典阅读营，疯狂阅读营，美语主播营，自然拼读营等等，塔牌外语公众号更是给学员家长提供了各种各样的育儿经。塔牌外语app现已上线，里面也包含了可供学习的丰富的资源。</p></div><br><br>作者：哈哈妈塔牌外语Sharen<br>链接：https://www.jianshu.com/p/e5c37d0d8e88<br>来源：简书<br>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>','2020-04-01',0,0,0,1),(11,'002','工业设计之感性工学：如何让产品越来越懂你','<div><div><h2><b>什么是感性？</b></h2><p>“感性”最早是明治时代的思想家西周在介绍欧洲哲学时所造的哲学用语，当时指的是基于人类身体的感觉而产生的<b>情感冲动和欲求</b>。</p><p>感性一词在日本应用很广泛，是一个包括认知和视觉、听觉、味觉、嗅觉与触觉<b>五种感官</b>感觉的综合的心理学概念。</p><p>它既是一个静态的概念，又是一个动态的过程：静态的“感性”是指<b>人的感情，某种意向</b>；动态的“感性”是指人的认识心理活动，指主体（人）从受到外界刺激到做出反应的全过程。</p><h2><b>什么是感性工学？</b></h2><p>“感性工学”的英文表述为Kansei Engineering，Kansei是日本语“感性”即カンセィ的音译。</p><p>感性工学基本上可以定义为：以工学的手法，设法将<b>人的各种感性定量化</b>（“感性量”），再寻找出这个感性量与工学中所使用的各种物理量之间的高元函数关系，作为工程研究的基础。简单地说，感性工学就是将感性转译到工学中去，将<b>对人的感性分析</b>的结果转化为<b>产品物理设计要素</b>，<b>依据人的喜好来制造产品</b>，它属于工学的一个新分支。</p><h2>感性工学和人机工程学的区别在哪？</h2><p>感性工学是一项将消费者的感觉与情感需求（感性）应用在待研发的产品中的功能强大的人机工程学技术。因此，从一定角度来讲感性工学也是一种人机工程学技术。</p><p>人机工程学所关注焦点是<b>产品的实用性和功能性</b>，总是集中在如何使消费类产品符合人的生理特征。</p><p>感性工学更多的对<b>消费者的心理需求与感情</b>进行考虑，确保产品使用能够带来积极的愉悦性。</p><h2>感性工学在日本的应用<br>\n</h2><p>1970 年，日本广岛大学的研究人员在住宅设计中开始全面考虑居住者的情感和欲求，研究如何将居住者的感性在住宅设计中具体化为工学技术，这是最早将感性分析导入工学研究领域的尝试，在当时被称为“情绪工学”。</p><p>1987 年，马自达汽车公司横滨研究所率先成立了“感性工学研究室”，此后，日本主要的汽车制造和家电企业相继成立了类似的研究机构。</p><p>1993 年，在日本文部省成立了“感性工学委员会”，研究感性工学发展的可行性，至1997年又成立全国性的“感性工学学会”。</p><p><b>采用感性工学的许多产品研发都取得了重大的成功</b>，其中下列几个较为典型的产品研发的案例使得感性工学在日本产业界具有盛誉。</p><p>马自达采用感性工学研发的跑车Miyata（在欧洲被称为MX5）。此车推出后连续十多年都是世界上最畅销的跑车（吉尼斯记录，2001）。</p></div><br><br>作者：感性工学资讯站<br>链接：https://www.jianshu.com/p/13ad3bf6eba9<br>来源：简书<br>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</div>','2020-04-01',1,0,2,4),(36,'003','llll','<p>fhgkklll<img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/50/pcmoren_huaixiao_org.png\" alt=\"[坏笑]\" data-w-e=\"1\"><img src=\"data:image/jpeg;base64,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dDHk6AiPgyQRGI6AkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAH//Z\" style=\"max-width: 100%;\"></p>','2020-05-30',0,0,0,1);
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
INSERT INTO `essaycomment` VALUES (19,11,'001','好','2020-04-01',0,0),(20,6,'001','111','2020-04-01',0,0),(21,6,'003','hao','2020-04-01',0,0),(22,6,'003','1111','2020-04-01',0,0),(23,6,'003','444','2020-04-01',0,0),(24,7,'003','000','2020-04-01',0,0),(25,6,'003','5555','2020-04-01',0,0),(26,6,'003','666','2020-04-01',0,0),(27,6,'003','333','2020-05-29',0,0),(28,6,'003','hhhhhh','2020-05-29',0,0),(29,6,'003','lllllllll','2020-05-29',0,0),(30,6,'003','mmmmmmmm','2020-05-29',0,0),(31,7,'003','kkkk','2020-05-29',0,0),(32,6,'11','111','2020-05-29',0,0),(33,8,'003','11','2020-05-29',0,0),(34,11,'003','11','2020-05-29',0,0),(35,7,'003','111111','2020-05-29',0,0),(36,7,'003','lllll','2020-05-30',0,0);
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
INSERT INTO `problem` VALUES (6,'002','会计的核心是计算吗?','2020-04-01'),(7,'002','如何在React中将输入数据添加到JSON数组？','2020-04-01'),(8,'002','路由切换后怎样可以使得组件能够重新调用componentDi','2020-04-01'),(9,'002','chrome经常没反应怎么办？','2020-04-01'),(10,'001','mysql数据库中，如何为表中的字段设置默认值？','2020-04-01');
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
INSERT INTO `response` VALUES (5,'002',6,'不是。  会计的核心是我们看待会计事项的角度与方式—职业判断。','2020-04-01',0,0),(6,'003',7,'你必须将添加的新待办事项添加到React可用于在渲染时将其与其他对象区分开todoItems的唯一id。  你不应该使用push改变当前状态。你应该使用一个包含前一个数据的全新数组来设置状态。','2020-04-01',0,0),(7,'003',8,'componentDidMount 是获取 ajax 数据用的，并且只触发一次。','2020-04-01',0,0),(8,'003',6,'1111','2020-04-01',0,0),(9,'003',9,'111','2020-04-01',0,0),(10,'003',6,'222','2020-04-01',0,0),(11,'003',7,'000','2020-04-01',0,0),(12,'003',6,'333','2020-04-01',0,0),(13,'003',6,'eeee','2020-04-01',0,0),(14,'001',6,'1111','2020-04-14',0,0),(15,'001',6,'333','2020-04-14',0,0),(16,'001',6,'111','2020-04-14',0,0),(17,'001',6,'44','2020-04-14',0,0),(18,'001',6,'11','2020-04-16',0,0),(19,'003',6,'lll','2020-05-29',0,0),(20,'003',6,'hhhhhhhh','2020-05-29',0,0),(21,'003',10,'kkkk','2020-05-29',0,0),(22,'003',7,'lllllllll','2020-05-29',0,0),(23,'003',7,'jjjjj','2020-05-29',0,0),(24,'003',8,'llllll','2020-05-29',0,0),(25,'11',6,'111','2020-05-29',0,0),(26,'003',8,'11','2020-05-29',0,0),(27,'003',10,'22','2020-05-29',0,0),(28,'003',8,'kkkl','2020-05-30',0,0);
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
INSERT INTO `type` VALUES (1,'外语'),(2,'计算机'),(3,'理学'),(4,'工学'),(5,'经济管理'),(6,'文史哲'),(7,'艺术设计'),(8,'心理学'),(9,'医药卫生'),(10,'法学'),(11,'教育教学'),(12,'农林园艺'),(13,'其它');
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
INSERT INTO `users` VALUES ('001','001','1234567','http://img.mp.itc.cn/upload/20170724/cf678e09eb384401aa616ba134126357_th.jpg','努力',8,'女'),('002','002','1234567','http://image.yy.com/yywebalbumbs2bucket/144152f8680f421599233c6ffcfcef49_1476265267104.jpeg','努力',8,'女'),('003','003','1234567','http://pic1.zhimg.com/50/v2-af12f7b6f7eb2f2f5f7e2f3b7880cf01_hd.jpg','努力',8,'女'),('004','004','1234567','http://b-ssl.duitang.com/uploads/item/201511/21/20151121171154_KZL4N.jpeg','努力',8,'女'),('005','005','1234567','http://cdn.duitang.com/uploads/item/201412/17/20141217211542_CYRCV.jpeg','努力',8,'女'),('000','000',NULL,'https://pic4.zhimg.com/da8e974dc_im.jpg',NULL,NULL,NULL),('009','009',NULL,'https://pic4.zhimg.com/da8e974dc_im.jpg',NULL,NULL,NULL);
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
