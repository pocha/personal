-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: stalkninja
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.9

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
-- Table structure for table `Ninja`
--

DROP TABLE IF EXISTS `Ninja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ninja` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Heading` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Rating` float(3,2) NOT NULL DEFAULT '0.00',
  `Skills` varchar(255) DEFAULT NULL,
  `RegisteredOn` date NOT NULL,
  `FacebookId` varchar(255) NOT NULL,
  `FacebookPicUrl` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ninja`
--

LOCK TABLES `Ninja` WRITE;
/*!40000 ALTER TABLE `Ninja` DISABLE KEYS */;
INSERT INTO `Ninja` VALUES (1,'amitworks','','AMIT VISHWAKARMA','amitvish14@gmail.com','+91-9179708445','AMIT VISHWAKARMA','I am undergraduate student of Computer science and engineering at Jabalpur Engineering College, Jabalpur. I am also group leader of my college NETRIX team which have responsibility to manage and develop websites of college and help in college server and network management.I had developed my college techfest AUREOLE 2010 website.This website I had developed in five days period. I am never feared from challenges because they give me more opportunity.  \r\n\r\n  ',9.50,'php html css javascript jquery','0000-00-00','138922026164649','http://a8.sphotos.ak.fbcdn.net/hphotos-ak-snc4/63439_1350488862353_1835315674_662466_2345212_n.jpg'),(2,'','','','arpit2art@gmail.com','','','',0.00,NULL,'0000-00-00','',''),(3,'','','','bhaskar.hridaypur@gmail.com','','','',0.00,NULL,'0000-00-00','',''),(4,'','','','nupoor.neha@gmail.com','','','',0.00,NULL,'0000-00-00','',''),(5,'paisat007','','S SARVOTHAM PAI','paisat007@gmail.com','9980216832','SPAI','loves anything related to technology and computers , intrested in mobile programming and software development .. \r\n',0.00,'programming c , c++ . ','2011-01-21','100000743863712',''),(6,'Paragjain','','Parag','parag.jain914@gmail.com','9713225707','The Power Of Ideas...','Student at JEC ( Jabalpur Engineering College,M.P.). ',0.00,'.NET ,Java(core)','2010-01-14','1381051163',''),(7,'rockingaayush','','Aayush Gupta','rockingaayush@gmail.com','8957936773','am here!!!!!','<h1>hey this is Aayush</h1>\r\n<h5>a guy with very high ambition and all that motivation to do it  </h5>',0.00,'c++/c','2010-02-20','145211532204904','http://a2.sphotos.ak.fbcdn.net/hphotos-ak-snc4/34156_1481025715743_1536834475_1187285_4333654_n.jpg'),(8,'samidha','','samidha','samidha.rai26@gmail.com','9425385258','work purify mind n efforts made with a pure mind always lead to success.....','',0.00,NULL,'2011-01-30','100001046347650',''),(9,'','','','singh.roshan08@gmail.com','','','',0.00,NULL,'0000-00-00','',''),(10,'sudhir','','Sudhir ravi','sudhir.rajeev@gmail.com','8095895618','Sudhir Ravi','A second year engineering student from Bangalore, a technology enthusiast and likes programming.',0.00,'Nothing in particular','2011-01-23','1072187330','');
/*!40000 ALTER TABLE `Ninja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Project`
--

DROP TABLE IF EXISTS `Project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Project` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Heading` varchar(255) NOT NULL,
  `Status` enum('open','in-progress','completed','cancelled') NOT NULL DEFAULT 'open',
  `Budget` varchar(255) NOT NULL,
  `Duration` int(11) NOT NULL,
  `StartupId` bigint(20) NOT NULL,
  `DateCreated` date NOT NULL,
  `DateAwarded` date DEFAULT NULL,
  `DateCompleted` date DEFAULT NULL,
  `Description` text NOT NULL,
  `Skills` varchar(255) NOT NULL,
  `ProgressSheet` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Project`
--

LOCK TABLES `Project` WRITE;
/*!40000 ALTER TABLE `Project` DISABLE KEYS */;
INSERT INTO `Project` VALUES (1,'Configure Ubuntu in Amazon EC2 Cloud','completed','1000',14,1,'2011-01-10','2010-01-10','2010-01-20','<div>This project needs creating & configuring amazon AWS EC2 EBS micro instance which is available free of change by amazon. More information at <a href=\"http://aws.amazon.com/free\">http://aws.amazon.com/free</a><br/></div><br/>\r\n\r\n<div>Please make sure that you read all the conditions mentioned on the amazon site to make sure that the instance would not get charged for any resources allocated to it outside the free tier. </div><br/>\r\n\r\n<div>You would be provided with a amazon account with a valid credit card, so that you can login & get started with instance creation & deployment.</div><br/>\r\n\r\n<b>Your deliverables would be as follows\r\n</b><br/><br />\r\n<ul><li>\r\nThe instance need to be running Ubuntu OS. So this is the first task you need to do. You can either pick up a pre-configured Ubuntu instance or can create one from scratch.<b style=\"color: #000;\">If you are picking a pre-configured instance, make sure that the resources the instance is utilizing is well within the free tier usage limit</b></li>\r\n<li>Install ngnix server on the instance.</li> <li>Configure the server so that multiple websites can be hosted on it</li>\r\n<li>Install mysql & PHP on the server & install all the dependencies for it to run with ngnix server</li>\r\n<li>You would be provided with two website dump of <a href=\"www.cofoundersgyan.com\">www.cofoundersgyan.com</a> & <a href=\"www.stalkninja.com\">www.stalkninja.com</a> . Former is in wordpress & latter uses custom html. Both sites use their own database. You need to transfer the dump to the server, configure the respective database & make them work</li>\r\n<li>You need to document all the steps that you follow to do above steps in the progress sheet</li>\r\n</ul>\r\n<br/>\r\n<div>Once both the sites are working on the instance, the project would be done after reviewing the progress sheet.</div>\r\n','System Administrator,Linux, Web-Server Installation ','Reference Link:\n\n   1. https://help.ubuntu.com/community/EC2StartersGuide\n   2. http://davidwinter.me/articles/2009/06/13/php-and-nginx-the-easy-way/\n   3. http://docs.amazonwebservices.com/AWSEC2/2007-08-29/GettingStartedGuide/\n   4. http://www.rajiv.com/blog/2008/02/04/amazon-ec2/\n   5. http://wiki.nginx.org/VirtualHostExample\n   6. http://www.youtube.com/watch?v=eZI6URU-Jak\n   7. http://www.youtube.com/watch?v=4WG_N2DqLQg\n   8. http://rubypond.com/blog/setting-up-nginx-ssl-and-virtual-hosts\n   9. http://paulstamatiou.com/how-to-getting-started-with-amazon-ec2\n  10. https://forums.aws.amazon.com/thread.jspa?threadID=54370&tstart=225\n  11. http://somic.org/2009/09/21/security-groups-most-underappreciated-feature-of-amazon-ec2/\n  12. http://www.linuxhomenetworking.com/wiki/index.php/Quick_HOWTO_:_Ch14_:_Linux_Firewalls_Using_iptables#What_Is_iptables.3F\n  13. https://help.ubuntu.com/community/IptablesHowTo\n  14. http://articles.techrepublic.com.com/5100-10878_11-1047763.html\n  15. http://www.puschitz.com/SecuringLinux.shtml\n  16. http://www.infotechmigrant.com/30/vps-dedicated-centos-nginx-fastcgi-mysql-php-wordpress/\n\n\nProcedure:\n\n    * Installation and configuration of UBUNTU SERVER 10.04\n            * Read Ref. Link https://help.ubuntu.com/community/EC2StartersGuide\n    * Selecting an instance image from (http://uec-images.ubuntu.com/server/lucid/current/ ) in us-east zone. \n\n\nUS-EAST-1 :|: 32-bit :|: EBS :|: ami-a055a4c9\n\n    * After It I run following commands:\n\n\nexport EC2_PRIVATE_KEY=$HOME//pk-XXXXXXXXXXXXXXXXXXXXXXXXXXXX.pem\n\nexport EC2_CERT=$HOME//cert-XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.pem\n\nexport JAVA_HOME=/usr/lib/jvm/java-6-openjdk/\n\n# to generate ec2 keypair\nec2-add-keypair ec2-keypair > ec2-keypair.pem\n\nchmod 600 ec2-keypair.pem\n\n# to deploy a micro instance\nec2-run-instances ami-a055a4c9 -k ec2-keypair.pem -t t1.micro\n\n#to port 22 access\nec2-authorize default -p 22\n\n#then establish connection from ssh\nssh -i /path/to/ec2-keypair.pem ubuntu@\n\n    * Installation and configuration of NGINX WEB SERVER, PHP and MySql \n\n    * Read Ref. Link http://davidwinter.me/articles/2009/06/13/php-and-nginx-the-easy-way/\n    * http://www.howtoforge.com/installing-nginx-with-php5-and-mysql-support-on-ubuntu-8.10\n    * After It I run following commands:\n\n\n## It installes nginx php5-cgi php5-curl etc. Php related things + mysql server etc..\nsudo apt-get install nginx php5-cgi php5-mysql php5-curl php5-gd php5-idn php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-mhash php5-ming php5-pspell php5-recode php5-snmp php5-tidy php5-xmlrpc php5-xsl mysql-server mysql-client\n\n            ## At the time of installation mysql asks for setting up root user                 password fill that and confirm that.\n\n    * Follow all steps of  Ref. Link http://davidwinter.me/articles/2009/06/13/php-and-nginx-the-easy-way/\n\n\n    * Installation of WEBMIN         \n\n    * If you like to install and update Webmin via APT, edit the /etc/apt/sources.list file on your system and add the lines\n\ndeb http://download.webmin.com/download/repository sarge contrib\n\ndeb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib\n\n    * You should also fetch and install GPG key with which the repository is signed, with the commands :\n\nwget http://www.webmin.com/jcameron-key.asc\napt-key add jcameron-key.asc\n\n    * You will now be able to install with the commands :\n\n\napt-get update\napt-get install webmin\n\n    * All dependencies should be resolved automatically.\n\n    * Configuration of Virtual Hosts         \n\n    * We have to park two websites thats why we have create two virtual hosts.\n\n\nFirst one for: www.stalkninja.com\nSecond one for: www.cofoundersgyan.com\n\n    * In /etc/nginx/sites-available firstly we have to create two files â€œstalkninja.comâ€ and â€œcofoundersgyan.comâ€\n\n\nHere is one example for virtualhost configuration for cottonslate.com and cofoundersgyan.com which are pointing to same root\n\nfile:: /etc/nginx/sites-avaiable/cottonslate.com\nserver\n{\n        listen       80;\n           server_name www.cottonslate.com cottonslate.com www.cofoundersgyan.com cofoundersgyan.com;\n\n               root /home/ubuntu/www/cofoundersgyan.com;\n    \n           location /\n           {                \n              index  index.html index.htm index.php;\n           }\n\n   \n           location ~ \\.php$\n          {\n              fastcgi_pass    127.0.0.1:9000;\n              fastcgi_index   index.php;\n              fastcgi_param   SCRIPT_FILENAME /home/ubuntu/www/cofoundersgyan.com$fastcgi_script_name;\n              include         fastcgi_params;\n          }   \n }\n\n\nFor example for creating www.stalkninja.com virtualhost simply create file of the name of stalkninja.com and copy all above example and edit it.\n\nDefine\n\n    * server_name www.stalkninja.com stalkninja.com\n    * root \n    * And again in location ~\\.php$ part edit /home/ubuntu/www/cofoundergyan.com$fastcgi_script_name; to your value $fastcgi_script_name;\n\n\n\nAfter doing all above for enabling website we have simply create a link in /etc/nginx/sites-enabled using ln command and reload the configuration of nginx web server using following command\n\nsudo /etc/init.d/nginx reload\n\n    * Copying files to server\n         \n    * We use command scp\n    * scp -i ec2-keypair.pem -r  ubuntu@ec2-184-73-237-41.compute-1.amazonaws.com:\n    * Above command copy all files of directory inside it to remote host recursively (-r) option..\n\n\n\n    * Setting Database for cofoundersgyan.com and stalkninja.com using webmin            \n\n    * Using WEBMIN I have create â€œcofoundersgyanâ€ user.\n    * Create a database of same name\n    * Give all permissions\n    * After all above click in cofoundersgyan database link and click in execute SQL link there is another option for import text file using this we can add our database backup to mysql. \n\n    * Setting Up WORDPRESS in NGINX WEB SERVER\n\n\nRef. Link http://www.infotechmigrant.com/30/vps-dedicated-centos-nginx-fastcgi-mysql-php-wordpress/\n\nfile:: /etc/nginx/sites-avaiable/cottonslate.com\nserver {\n\n   listen       80;\n   server_name www.cottonslate.com cottonslate.com www.cofoundersgyan.com cofoundersgyan.com;\n\n   root /home/ubuntu/www/cofoundersgyan.com;    \n\n   location / {                \n\n       index  index.html index.htm index.php;\n\n    # this serves static files that exist without running other rewrite tests\n    if (-f $request_filename) {\n        expires 30d;\n        break;\n    }\n    # this sends all non-existing file or directory requests to index.php\n    if (!-e $request_filename) {\n        rewrite ^(.+)$ /index.php?q=$1 last;\n    }\n    }\n       location ~ \\.php$ {\n                  fastcgi_pass    127.0.0.1:9000;\n                  fastcgi_index   index.php;\n                  fastcgi_param   SCRIPT_FILENAME /home/ubuntu/www/cofoundersgyan.com$fastcgi_script_name;\n                  include         fastcgi_params;\n                       fastcgi_param QUERY_STRING $query_string;\n                       fastcgi_param REQUEST_METHOD $request_method;\n                       fastcgi_param CONTENT_TYPE $content_type;\n                       fastcgi_param CONTENT_LENGTH $content_length;\n                       fastcgi_param SCRIPT_NAME $fastcgi_script_name;\n                       fastcgi_param REQUEST_URI $request_uri;\n                       fastcgi_param DOCUMENT_URI $document_uri;\n                       fastcgi_param DOCUMENT_ROOT $document_root;\n                       fastcgi_param SERVER_PROTOCOL $server_protocol;\n                       fastcgi_param GATEWAY_INTERFACE CGI/1.1;\n                       fastcgi_param SERVER_SOFTWARE nginx/$nginx_version;\n                       fastcgi_param REMOTE_ADDR $remote_addr;\n                       fastcgi_param REMOTE_PORT $remote_port;\n                      fastcgi_param SERVER_ADDR $server_addr;\n                      fastcgi_param SERVER_PORT $server_port;\n                      fastcgi_param SERVER_NAME $server_name;\n       }  \n\n }\n\n'),(2,'Override php mail() function with Google smtp','completed','1000',3,1,'2011-02-07','2010-02-07','2010-02-10','<div>We have a amazon aws micro instance running. We have two websites on the instance which are php based. We wish to over-ride the default mail() function used by php by our custom function</div>\r\n<br/>\r\n\r\n<div>We are not sure but it seems the default mail() function uses sendmail on the server & for that, there needs to be a mail server installed. We do not want to do that. We have google apps account for both the websites & want to relay the mail via the google smtp server.</div><br/>\r\n\r\n<div>For example, any mail going from <a href=\"www.cofoundersgyan.com\">www.cofoundersgyan.com</a> need to be sent via google server as going from admin@cofoundersgyan.com . Similarly, any mail going from www.stalkninja.com would need to go from google as mail from admin@stalkninja.com</div><br/>\r\n\r\n<p>I suggest two ways the problem can be done. You may select your way</p>\r\n<ol>\r\n	<li>The path to sendmail is specified in php.ini . You can change the path to point to one of your script. You would need to figure out what parameters are being passed to sendmail & in what order. You would then need to use the parameter to send mail via google smtp. Check http://jetpackweb.com/blog/2009/07/18/override-phps-mail-function-during-development/ where the author has tried over-riding the mail() function.</li>\r\n	<li> Alternatively, you can use the override_function http://php.net/manual/en/function.override-function.php & override the mail() function altogether. You can write a php script that uses the override function & is always gets included whenever a php script is processed. There is a way to do it via php.ini. Figure that out</li>\r\n</ol>\r\n\r\n<div>Following would be your deliverables\r\n<ul>\r\n	<li>A test script that would be just one line script calling mail() function & sending a mail to pocha.sharma@gmail.com & the mail coming from admin@cofoundersgyan.com . We would provide you the password of the account.</li>\r\n	<li>Updated progress sheet where you have told which way you have chosen & how you did it</li>\r\n</ul>\r\n','System Administrator,Linux, php',' * Configuration of   Mail Function            \n\n    * I have create a file /usr/share/php/MyMail/sendmail.php and giving it execution permission using chmod +x  and\n    * both /etc/php5/cli/php.ini and /etc/php5/cgi/php.ini in [mail function] section i have defined this  \n\n\nsendmail_path =  /usr/share/php/MyMail/sendmail.php\n\n    * Now edit this /usr/share/php/MyMail/sendmail.php file and specify   and  using nano editor\n    * You can use this command \n\n\n$sudo nano /usr/share/php/MyMail/sendmail.php\n           \n            after that edit that file and save it using â€œctrl+Oâ€ and close                 using â€œctrl+Xâ€\n							'),(3,'Sample Open Project','open','10,000',30,1,'2011-02-10',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget nulla odio, viverra molestie urna. Maecenas in diam nunc, id volutpat eros. Quisque ut lorem nulla, eget dignissim odio. In bibendum facilisis ipsum ac facilisis. Cras laoreet sodales arcu, ac pharetra augue faucibus sed. Morbi elit est, fringilla a adipiscing facilisis, elementum quis leo. Etiam tincidunt eleifend turpis id auctor. Curabitur elit risus, ultricies sit amet pulvinar sed, imperdiet eget dui. Donec ullamcorper sollicitudin odio lobortis tempus. Donec dignissim venenatis odio sit amet euismod. Vivamus at libero felis, at rhoncus tortor. Curabitur faucibus dapibus vulputate. Nulla vitae tortor urna, non vulputate massa. Curabitur ullamcorper ullamcorper eleifend. Nunc scelerisque tincidunt pharetra. Ut vel volutpat mi. Curabitur nec lorem non nunc pellentesque ornare at sit amet metus.\r\n</p>\r\n<p>\r\nMaecenas a massa congue erat consequat viverra. Sed ut erat nisi. Sed pellentesque, odio sed mollis pretium, erat nulla imperdiet ligula, in egestas mi lorem vel nisl. Proin nunc quam, vulputate vel suscipit id, egestas sed velit. Cras eleifend mi eu eros rutrum sed scelerisque lectus convallis. Praesent accumsan purus quis libero sodales porta vitae sit amet nulla. Vivamus id sapien est. Integer vel ante sed nisl consequat vulputate. Nulla facilisi. Vestibulum pretium, velit nec sodales viverra, mi ante vulputate risus, pharetra ornare purus mauris et nunc. Nunc ut elementum diam. Aenean pulvinar, nunc vitae iaculis semper, odio nunc elementum dui, feugiat scelerisque sem tortor nec ligula. Donec convallis rhoncus molestie. Integer et aliquet urna. Maecenas a augue et nisi posuere luctus nec nec libero. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\r\n</p><p>\r\nDonec nec nisl neque, eget ultrices tortor. Cras id ornare ante. Curabitur quis libero justo. Phasellus nec urna nisl. Aenean vel neque nulla, ac tincidunt lacus. Ut molestie eleifend mollis. Phasellus fermentum consectetur erat, at porta tortor blandit sed. Nulla molestie molestie metus eget porttitor. Sed vehicula fringilla malesuada. Donec vestibulum, ipsum at luctus congue, elit odio porttitor tellus, nec convallis libero odio eget sapien. Phasellus in arcu leo, eget sodales leo. Nulla facilisi. </p>','PHP, Perl, Linux, System Adminstrator, ROR, Javascript, CSS',NULL);
/*!40000 ALTER TABLE `Project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Project_Ninja`
--

DROP TABLE IF EXISTS `Project_Ninja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Project_Ninja` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `BidDate` date NOT NULL,
  `ProjectId` bigint(20) NOT NULL,
  `NinjaId` bigint(20) NOT NULL,
  `Bid` text NOT NULL,
  `Status` enum('open','in-progress','completed','cancelled') NOT NULL DEFAULT 'open',
  `StartupReview` text,
  `NinjaReview` text,
  `StartupRating` float(4,2) NOT NULL DEFAULT '0.00',
  `NinjaRating` float(4,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Project_Ninja`
--

LOCK TABLES `Project_Ninja` WRITE;
/*!40000 ALTER TABLE `Project_Ninja` DISABLE KEYS */;
INSERT INTO `Project_Ninja` VALUES (1,'2011-01-10',1,1,'Hi, I can do this for you. I have learned from various videos and articles of Amazon AWS(videos: http://www.youtube.com/watch?v=eZI6URU-Jak etc.) and Ubuntu UEC(https://help.ubuntu.com/community/UEC etc..).  ','completed','<p>Amit had done a good job. He did quite a bit of research & figured out the solution to the problems himself.</p>\r\n<p>There was a slight delay in completion of the project because of his placements & my sudden travel plan, but Amit covered for that.</p>\r\n<p>Amit is slightly lacking in his communication skills but his problem solving skills are great. I am sure his communication skills would improve over time.</p>','This was my first commercial server configuration project which one on Amazon EC2. I got great experience working with Mr. Ashish sharma. He is very helpful and trusted.',9.00,10.00),(2,'2011-02-07',2,1,'Hi, I Can do this for you because I have learned lots of things about Mail server and socket programming.  ','completed','<p>Amit did a good job again this time. He needed some pointers, but winded up job as expected.</p>','Excellent and trusted startuper  ',10.00,10.00);
/*!40000 ALTER TABLE `Project_Ninja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Startup`
--

DROP TABLE IF EXISTS `Startup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Startup` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Heading` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Rating` float(3,2) NOT NULL DEFAULT '0.00',
  `RegisteredOn` date NOT NULL,
  `FacebookId` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Startup`
--

LOCK TABLES `Startup` WRITE;
/*!40000 ALTER TABLE `Startup` DISABLE KEYS */;
INSERT INTO `Startup` VALUES (1,'stalkninja','','Stalk Ninja','admin@stalkninja.com','91 95 3838 4545','Yes, we do use our own platform to develop ourselves !','<p>We guys work on the most cutting edge technologies of web development like Ruby on Rails, Backbone.js, CSS3, HTML5 etc. This platform is developed using them & we continuously out-source some part of it to Ninja(s).</p>\r\n<p> To know more, may be you should read the home page :)</p> \r\n\r\n',9.00,'2010-12-18','');
/*!40000 ALTER TABLE `Startup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `startup`
--

DROP TABLE IF EXISTS `startup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `startup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `job_1` text,
  `job_2` text,
  `job_3` text,
  `job_4` text,
  `job_5` text,
  `has_job` varchar(255) DEFAULT NULL,
  `job_1_time` varchar(255) DEFAULT NULL,
  `job_2_time` varchar(255) DEFAULT NULL,
  `job_3_time` varchar(255) DEFAULT NULL,
  `job_4_time` varchar(255) DEFAULT NULL,
  `job_5_time` varchar(255) DEFAULT NULL,
  `job_1_money` varchar(255) DEFAULT NULL,
  `job_2_money` varchar(255) DEFAULT NULL,
  `job_3_money` varchar(255) DEFAULT NULL,
  `job_4_money` varchar(255) DEFAULT NULL,
  `job_5_money` varchar(255) DEFAULT NULL,
  `startup_student_ratio` varchar(255) DEFAULT NULL,
  `mentors` varchar(255) DEFAULT NULL,
  `comments` text,
  `contact` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `startup`
--

LOCK TABLES `startup` WRITE;
/*!40000 ALTER TABLE `startup` DISABLE KEYS */;
/*!40000 ALTER TABLE `startup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stud_url1` text,
  `stud_url2` text,
  `stud_experience` varchar(255) DEFAULT NULL,
  `stud_proj1` text,
  `stud_proj2` text,
  `stud_proj3` text,
  `stud_proj4` text,
  `stud_ready` varchar(255) DEFAULT NULL,
  `stud_time` varchar(255) DEFAULT NULL,
  `stud_weeks` varchar(255) DEFAULT NULL,
  `stud_comp` varchar(255) DEFAULT NULL,
  `stud_internet` varchar(255) DEFAULT NULL,
  `stud_office` varchar(255) DEFAULT NULL,
  `stud_contact` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'2011-01-31 04:06:11','demo','demo','demo','demo','demo','demo','demo','willing_to_work','demo',NULL,'tech_company','internet_not_available','any_day','demo data to test mail at aws'),(2,'2011-02-08 08:11:24','test','test','test','test','test','','','willing_to_work','1',NULL,'any_company','internet_available','only_weekends','test'),(3,'2011-02-08 08:18:20','test','test','test','test','test','','','willing_to_work','1',NULL,'any_company','internet_available','only_weekends','test');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-02-12 11:20:25
