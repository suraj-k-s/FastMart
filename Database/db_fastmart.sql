# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     db_fastmart
# Server version:               5.0.51b-community-nt
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2021-12-22 02:39:24
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'db_fastmart'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "db_fastmart" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "db_fastmart";


#
# Table structure for table 'tbl_admin'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_admin" (
  "admin_name" varchar(100) NOT NULL,
  "admin_id" int(10) unsigned NOT NULL auto_increment,
  "admin_username" varchar(50) NOT NULL,
  "admin_password" varchar(50) NOT NULL,
  PRIMARY KEY  ("admin_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_admin'
#

LOCK TABLES "tbl_admin" WRITE;
/*!40000 ALTER TABLE "tbl_admin" DISABLE KEYS;*/
REPLACE INTO "tbl_admin" ("admin_name", "admin_id", "admin_username", "admin_password") VALUES
	('Ajula','1','abc@gmail.com','123456');
REPLACE INTO "tbl_admin" ("admin_name", "admin_id", "admin_username", "admin_password") VALUES
	('Asha','2','abcd@gmail.com','12345');
/*!40000 ALTER TABLE "tbl_admin" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_booking'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_booking" (
  "booking_id" int(50) unsigned NOT NULL auto_increment,
  "booking_date" varchar(50) NOT NULL default '0',
  "booking_amnt" int(100) unsigned NOT NULL default '0',
  "cust_id" int(10) unsigned NOT NULL,
  "booking_status" int(50) unsigned default '0',
  "dlvryby_id" int(50) unsigned default '0',
  "payment_status" int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  ("booking_id")
) AUTO_INCREMENT=47;



#
# Dumping data for table 'tbl_booking'
#

LOCK TABLES "tbl_booking" WRITE;
/*!40000 ALTER TABLE "tbl_booking" DISABLE KEYS;*/
REPLACE INTO "tbl_booking" ("booking_id", "booking_date", "booking_amnt", "cust_id", "booking_status", "dlvryby_id", "payment_status") VALUES
	('46','2021-12-22','2500','1','3','1','0');
/*!40000 ALTER TABLE "tbl_booking" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_cart'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_cart" (
  "cart_id" int(50) unsigned NOT NULL auto_increment,
  "booking_id" int(50) unsigned NOT NULL,
  "drs_id" int(50) unsigned NOT NULL default '0',
  "utsl_id" int(10) unsigned NOT NULL default '0',
  "ftwr_id" int(10) unsigned NOT NULL default '0',
  "grcry_id" int(10) unsigned NOT NULL default '0',
  "gd_id" int(10) unsigned NOT NULL default '0',
  "cart_status" int(10) unsigned NOT NULL default '0',
  "cart_qty" int(10) NOT NULL default '1',
  PRIMARY KEY  ("cart_id")
) AUTO_INCREMENT=58;



#
# Dumping data for table 'tbl_cart'
#

LOCK TABLES "tbl_cart" WRITE;
/*!40000 ALTER TABLE "tbl_cart" DISABLE KEYS;*/
REPLACE INTO "tbl_cart" ("cart_id", "booking_id", "drs_id", "utsl_id", "ftwr_id", "grcry_id", "gd_id", "cart_status", "cart_qty") VALUES
	('57','46','7','0','0','0','0','3',1);
/*!40000 ALTER TABLE "tbl_cart" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_complaint'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_complaint" (
  "cmpl_id" int(10) unsigned NOT NULL auto_increment,
  "cmpltyp_id" int(10) unsigned NOT NULL,
  "cmpl_cntnt" varchar(50) NOT NULL,
  "cmpl_date" datetime NOT NULL,
  "cmpl_rply" varchar(50) NOT NULL,
  "cmpl_sts" int(10) unsigned NOT NULL,
  "cust_id" int(10) unsigned NOT NULL,
  "sh_id" int(10) unsigned NOT NULL,
  "dlvryby_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("cmpl_id")
);



#
# Dumping data for table 'tbl_complaint'
#

# No data found.



#
# Table structure for table 'tbl_complainttype'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_complainttype" (
  "cmpltyp_id" int(10) unsigned NOT NULL auto_increment,
  "cmpltyp_nme" varchar(50) NOT NULL,
  PRIMARY KEY  ("cmpltyp_id")
);



#
# Dumping data for table 'tbl_complainttype'
#

# No data found.



#
# Table structure for table 'tbl_customer'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_customer" (
  "cust_id" int(10) unsigned NOT NULL auto_increment,
  "cust_nme" varchar(50) NOT NULL,
  "cust_contct" varchar(10) NOT NULL,
  "cust_email" varchar(50) NOT NULL,
  "cust_addr" varchar(1000) NOT NULL,
  "cust_pass" varchar(50) NOT NULL,
  "dist_id" int(10) unsigned NOT NULL,
  "cust_doj" datetime NOT NULL,
  "cust_pin" int(10) unsigned NOT NULL,
  "cust_sts" int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  ("cust_id"),
  UNIQUE KEY "cust_email" ("cust_email")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_customer'
#

LOCK TABLES "tbl_customer" WRITE;
/*!40000 ALTER TABLE "tbl_customer" DISABLE KEYS;*/
REPLACE INTO "tbl_customer" ("cust_id", "cust_nme", "cust_contct", "cust_email", "cust_addr", "cust_pass", "dist_id", "cust_doj", "cust_pin", "cust_sts") VALUES
	('1','Ajula P Raju','9895396309','ajulapraju10@gmail.com','PEEDIKAPARAMBIL HOUSE
ONAKKOOR','12345678','34','2021-11-09 00:00:00','686667','0');
REPLACE INTO "tbl_customer" ("cust_id", "cust_nme", "cust_contct", "cust_email", "cust_addr", "cust_pass", "dist_id", "cust_doj", "cust_pin", "cust_sts") VALUES
	('2','Asha Maria Saji','9074321985','ashamariasaji@gmail.com','Kottarakunnel House,Mulakulam north','12345678','34','2021-11-09 00:00:00','686664','0');
/*!40000 ALTER TABLE "tbl_customer" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_deliveryboy'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_deliveryboy" (
  "dlvryby_id" int(10) unsigned NOT NULL auto_increment,
  "dlvryby_nme" varchar(50) NOT NULL,
  "dlvryby_addr" varchar(100) NOT NULL,
  "dlvryby_contct" varchar(20) NOT NULL,
  "dlvryby_adhrno" varchar(20) NOT NULL,
  "dlvryby_email" varchar(50) NOT NULL,
  "dlvryby_prf" varchar(50) NOT NULL,
  "dlvryby_pass" varchar(50) NOT NULL,
  "plc_id" int(10) unsigned NOT NULL,
  "dist_id" int(10) unsigned NOT NULL,
  "dlvryby_regfee" int(10) unsigned NOT NULL default '0',
  "dlvryby_sts" int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  ("dlvryby_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_deliveryboy'
#

LOCK TABLES "tbl_deliveryboy" WRITE;
/*!40000 ALTER TABLE "tbl_deliveryboy" DISABLE KEYS;*/
REPLACE INTO "tbl_deliveryboy" ("dlvryby_id", "dlvryby_nme", "dlvryby_addr", "dlvryby_contct", "dlvryby_adhrno", "dlvryby_email", "dlvryby_prf", "dlvryby_pass", "plc_id", "dist_id", "dlvryby_regfee", "dlvryby_sts") VALUES
	('1','Mathew P. E','Elanjimattathil 
Mannanom P.O.
Kottayam','9073261735','140021001210','mathewpe@gmail.com','proof_1595.png','123456789','38','36','0','1');
/*!40000 ALTER TABLE "tbl_deliveryboy" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_deliveryboy_deliverypincode'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_deliveryboy_deliverypincode" (
  "dlvryby_dlvrypin_id" int(10) unsigned NOT NULL auto_increment,
  "dlvryby_id" int(10) unsigned NOT NULL,
  "dlvryby_dlvrypin" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("dlvryby_dlvrypin_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_deliveryboy_deliverypincode'
#

LOCK TABLES "tbl_deliveryboy_deliverypincode" WRITE;
/*!40000 ALTER TABLE "tbl_deliveryboy_deliverypincode" DISABLE KEYS;*/
REPLACE INTO "tbl_deliveryboy_deliverypincode" ("dlvryby_dlvrypin_id", "dlvryby_id", "dlvryby_dlvrypin") VALUES
	('1','1','686667');
/*!40000 ALTER TABLE "tbl_deliveryboy_deliverypincode" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_district'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_district" (
  "dist_id" int(10) unsigned NOT NULL auto_increment,
  "dist_nme" varchar(50) NOT NULL,
  PRIMARY KEY  ("dist_id")
) AUTO_INCREMENT=41;



#
# Dumping data for table 'tbl_district'
#

LOCK TABLES "tbl_district" WRITE;
/*!40000 ALTER TABLE "tbl_district" DISABLE KEYS;*/
REPLACE INTO "tbl_district" ("dist_id", "dist_nme") VALUES
	('27','Kasaragod');
REPLACE INTO "tbl_district" ("dist_id", "dist_nme") VALUES
	('28','Kannur');
REPLACE INTO "tbl_district" ("dist_id", "dist_nme") VALUES
	('29','Wayanad');
REPLACE INTO "tbl_district" ("dist_id", "dist_nme") VALUES
	('30','Kozhikode');
REPLACE INTO "tbl_district" ("dist_id", "dist_nme") VALUES
	('31','Malappuram');
REPLACE INTO "tbl_district" ("dist_id", "dist_nme") VALUES
	('32','Palakkad');
REPLACE INTO "tbl_district" ("dist_id", "dist_nme") VALUES
	('33','Thrissur');
REPLACE INTO "tbl_district" ("dist_id", "dist_nme") VALUES
	('34','Ernakulam');
REPLACE INTO "tbl_district" ("dist_id", "dist_nme") VALUES
	('35','Idukki');
REPLACE INTO "tbl_district" ("dist_id", "dist_nme") VALUES
	('36','Kottayam');
REPLACE INTO "tbl_district" ("dist_id", "dist_nme") VALUES
	('37','Alappuzha');
REPLACE INTO "tbl_district" ("dist_id", "dist_nme") VALUES
	('38','Pathanamthitta');
REPLACE INTO "tbl_district" ("dist_id", "dist_nme") VALUES
	('39','Kollam');
REPLACE INTO "tbl_district" ("dist_id", "dist_nme") VALUES
	('40','Trivandram');
/*!40000 ALTER TABLE "tbl_district" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_dress'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_dress" (
  "drs_id" int(10) unsigned NOT NULL auto_increment,
  "drs_gndr" varchar(50) NOT NULL,
  "drs_ctgry" varchar(50) NOT NULL,
  "drsbrnd_id" int(50) NOT NULL,
  "drs_size" varchar(50) NOT NULL,
  "drs_pr" int(10) unsigned NOT NULL,
  "drs_mtrl" varchar(50) NOT NULL,
  "drs_colr" varchar(50) NOT NULL,
  "drs_desc" varchar(50) NOT NULL,
  "drs_cndn" varchar(50) NOT NULL,
  "sh_id" int(10) unsigned NOT NULL,
  "drs_img" varchar(50) NOT NULL,
  "drs_rtn" int(50) unsigned NOT NULL,
  "drs_isfrml" varchar(50) NOT NULL,
  "drs_multi" varchar(100) default NULL,
  PRIMARY KEY  ("drs_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_dress'
#

LOCK TABLES "tbl_dress" WRITE;
/*!40000 ALTER TABLE "tbl_dress" DISABLE KEYS;*/
REPLACE INTO "tbl_dress" ("drs_id", "drs_gndr", "drs_ctgry", "drsbrnd_id", "drs_size", "drs_pr", "drs_mtrl", "drs_colr", "drs_desc", "drs_cndn", "sh_id", "drs_img", "drs_rtn", "drs_isfrml", "drs_multi") VALUES
	('4','Male','Shorts',11,'XL','2345','Denim','Green','men Short','new','14','proof_1479.png','6','casual','');
REPLACE INTO "tbl_dress" ("drs_id", "drs_gndr", "drs_ctgry", "drsbrnd_id", "drs_size", "drs_pr", "drs_mtrl", "drs_colr", "drs_desc", "drs_cndn", "sh_id", "drs_img", "drs_rtn", "drs_isfrml", "drs_multi") VALUES
	('7','Female','Churidar',12,'XL','2500','Crepe','Brown','Womens Churidar','new','1','proof_1943.jpg','6','casual','');
REPLACE INTO "tbl_dress" ("drs_id", "drs_gndr", "drs_ctgry", "drsbrnd_id", "drs_size", "drs_pr", "drs_mtrl", "drs_colr", "drs_desc", "drs_cndn", "sh_id", "drs_img", "drs_rtn", "drs_isfrml", "drs_multi") VALUES
	('8','Female','Churidar',19,'XXL','2000','Jute','Pink','Womens  Churidar','new','1','proof_1910.jpg','8','formal','');
/*!40000 ALTER TABLE "tbl_dress" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_dressbrand'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_dressbrand" (
  "drsbrnd_id" int(10) unsigned NOT NULL auto_increment,
  "drsbrnd_nme" varchar(50) NOT NULL,
  PRIMARY KEY  ("drsbrnd_id")
) AUTO_INCREMENT=21;



#
# Dumping data for table 'tbl_dressbrand'
#

LOCK TABLES "tbl_dressbrand" WRITE;
/*!40000 ALTER TABLE "tbl_dressbrand" DISABLE KEYS;*/
REPLACE INTO "tbl_dressbrand" ("drsbrnd_id", "drsbrnd_nme") VALUES
	('11','Puma');
REPLACE INTO "tbl_dressbrand" ("drsbrnd_id", "drsbrnd_nme") VALUES
	('12','W');
REPLACE INTO "tbl_dressbrand" ("drsbrnd_id", "drsbrnd_nme") VALUES
	('13','Adidas');
REPLACE INTO "tbl_dressbrand" ("drsbrnd_id", "drsbrnd_nme") VALUES
	('14','Nike');
REPLACE INTO "tbl_dressbrand" ("drsbrnd_id", "drsbrnd_nme") VALUES
	('15','Louis Vuitton');
REPLACE INTO "tbl_dressbrand" ("drsbrnd_id", "drsbrnd_nme") VALUES
	('16','Gucci');
REPLACE INTO "tbl_dressbrand" ("drsbrnd_id", "drsbrnd_nme") VALUES
	('17','Allen Solly');
REPLACE INTO "tbl_dressbrand" ("drsbrnd_id", "drsbrnd_nme") VALUES
	('18','Levis');
REPLACE INTO "tbl_dressbrand" ("drsbrnd_id", "drsbrnd_nme") VALUES
	('19','Westside');
REPLACE INTO "tbl_dressbrand" ("drsbrnd_id", "drsbrnd_nme") VALUES
	('20','Zara');
/*!40000 ALTER TABLE "tbl_dressbrand" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_dressgallery'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_dressgallery" (
  "drsglry_id" int(10) unsigned NOT NULL auto_increment,
  "drsglry_cptn" varchar(50) NOT NULL,
  "drsglry_img" varchar(50) NOT NULL,
  "drs_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("drsglry_id")
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_dressgallery'
#

LOCK TABLES "tbl_dressgallery" WRITE;
/*!40000 ALTER TABLE "tbl_dressgallery" DISABLE KEYS;*/
REPLACE INTO "tbl_dressgallery" ("drsglry_id", "drsglry_cptn", "drsglry_img", "drs_id") VALUES
	('1','Women top','Dress_1107.jpg','7');
REPLACE INTO "tbl_dressgallery" ("drsglry_id", "drsglry_cptn", "drsglry_img", "drs_id") VALUES
	('3','westside dress','Dress_1768.jpg','8');
/*!40000 ALTER TABLE "tbl_dressgallery" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_dressstock'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_dressstock" (
  "dressstock_id" int(10) unsigned NOT NULL auto_increment,
  "dressstock_date" date NOT NULL,
  "dressstock_quantity" int(11) NOT NULL,
  "drs_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("dressstock_id")
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_dressstock'
#

LOCK TABLES "tbl_dressstock" WRITE;
/*!40000 ALTER TABLE "tbl_dressstock" DISABLE KEYS;*/
REPLACE INTO "tbl_dressstock" ("dressstock_id", "dressstock_date", "dressstock_quantity", "drs_id") VALUES
	('1','2021-11-12',13,'7');
REPLACE INTO "tbl_dressstock" ("dressstock_id", "dressstock_date", "dressstock_quantity", "drs_id") VALUES
	('2','2021-11-12',8,'7');
REPLACE INTO "tbl_dressstock" ("dressstock_id", "dressstock_date", "dressstock_quantity", "drs_id") VALUES
	('3','2021-11-10',10,'8');
/*!40000 ALTER TABLE "tbl_dressstock" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_feedback'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_feedback" (
  "fb_id" int(50) NOT NULL auto_increment,
  "fb" varchar(50) NOT NULL,
  "cust_id" int(10) unsigned NOT NULL,
  "fb_date" datetime NOT NULL,
  PRIMARY KEY  ("fb_id")
);



#
# Dumping data for table 'tbl_feedback'
#

# No data found.



#
# Table structure for table 'tbl_footwear'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_footwear" (
  "ftwr_id" int(11) NOT NULL auto_increment,
  "ftwr_ctgry" varchar(50) NOT NULL,
  "ftwrbrnd_id" int(10) unsigned NOT NULL,
  "ftwr_pr" int(10) unsigned NOT NULL,
  "ftwr_img" varchar(50) NOT NULL,
  "sh_id" int(10) unsigned NOT NULL,
  "ftwr_rtn" int(10) unsigned NOT NULL,
  "ftwr_size" float unsigned NOT NULL,
  "ftwr_mtrl" varchar(50) NOT NULL,
  "ftwr_colr" varchar(50) NOT NULL,
  "ftwr_gndr" varchar(50) NOT NULL,
  "ftwr_isfrml" varchar(50) NOT NULL,
  PRIMARY KEY  ("ftwr_id")
) AUTO_INCREMENT=8;



#
# Dumping data for table 'tbl_footwear'
#

LOCK TABLES "tbl_footwear" WRITE;
/*!40000 ALTER TABLE "tbl_footwear" DISABLE KEYS;*/
REPLACE INTO "tbl_footwear" ("ftwr_id", "ftwr_ctgry", "ftwrbrnd_id", "ftwr_pr", "ftwr_img", "sh_id", "ftwr_rtn", "ftwr_size", "ftwr_mtrl", "ftwr_colr", "ftwr_gndr", "ftwr_isfrml") VALUES
	(4,'Shoe','1','3599','proof_1759.jpg','13','6','8','leather','White','female','Casual');
REPLACE INTO "tbl_footwear" ("ftwr_id", "ftwr_ctgry", "ftwrbrnd_id", "ftwr_pr", "ftwr_img", "sh_id", "ftwr_rtn", "ftwr_size", "ftwr_mtrl", "ftwr_colr", "ftwr_gndr", "ftwr_isfrml") VALUES
	(5,'Shoe','1','1000','proof_1071.jpg','8','3','7','leather','Black','male','Casual');
REPLACE INTO "tbl_footwear" ("ftwr_id", "ftwr_ctgry", "ftwrbrnd_id", "ftwr_pr", "ftwr_img", "sh_id", "ftwr_rtn", "ftwr_size", "ftwr_mtrl", "ftwr_colr", "ftwr_gndr", "ftwr_isfrml") VALUES
	(6,'Flats','5','540','proof_1018.jpg','8','6','7','synthetics','Peach','female','Casual');
REPLACE INTO "tbl_footwear" ("ftwr_id", "ftwr_ctgry", "ftwrbrnd_id", "ftwr_pr", "ftwr_img", "sh_id", "ftwr_rtn", "ftwr_size", "ftwr_mtrl", "ftwr_colr", "ftwr_gndr", "ftwr_isfrml") VALUES
	(7,'Heels','4','1500','proof_1042.jpg','8','5','6','canvas','Brown','female','Casual');
/*!40000 ALTER TABLE "tbl_footwear" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_footwearbrand'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_footwearbrand" (
  "ftwrbrnd_id" int(10) unsigned NOT NULL auto_increment,
  "ftwrbrnd_nme" varchar(50) NOT NULL,
  PRIMARY KEY  ("ftwrbrnd_id")
) AUTO_INCREMENT=11;



#
# Dumping data for table 'tbl_footwearbrand'
#

LOCK TABLES "tbl_footwearbrand" WRITE;
/*!40000 ALTER TABLE "tbl_footwearbrand" DISABLE KEYS;*/
REPLACE INTO "tbl_footwearbrand" ("ftwrbrnd_id", "ftwrbrnd_nme") VALUES
	('1','Adidas');
REPLACE INTO "tbl_footwearbrand" ("ftwrbrnd_id", "ftwrbrnd_nme") VALUES
	('2','Nike');
REPLACE INTO "tbl_footwearbrand" ("ftwrbrnd_id", "ftwrbrnd_nme") VALUES
	('3','Puma');
REPLACE INTO "tbl_footwearbrand" ("ftwrbrnd_id", "ftwrbrnd_nme") VALUES
	('4','Woodland');
REPLACE INTO "tbl_footwearbrand" ("ftwrbrnd_id", "ftwrbrnd_nme") VALUES
	('5','Bata');
REPLACE INTO "tbl_footwearbrand" ("ftwrbrnd_id", "ftwrbrnd_nme") VALUES
	('6','Crocs');
REPLACE INTO "tbl_footwearbrand" ("ftwrbrnd_id", "ftwrbrnd_nme") VALUES
	('7','Lee Cooper');
REPLACE INTO "tbl_footwearbrand" ("ftwrbrnd_id", "ftwrbrnd_nme") VALUES
	('8','Fila');
REPLACE INTO "tbl_footwearbrand" ("ftwrbrnd_id", "ftwrbrnd_nme") VALUES
	('9','Van Heusen');
REPLACE INTO "tbl_footwearbrand" ("ftwrbrnd_id", "ftwrbrnd_nme") VALUES
	('10','Reebok');
/*!40000 ALTER TABLE "tbl_footwearbrand" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_footweargallery'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_footweargallery" (
  "ftwrglry_id" int(10) unsigned NOT NULL auto_increment,
  "ftwrglry_cptn" varchar(50) NOT NULL,
  "ftwrglry_img" varchar(50) NOT NULL,
  "ftwr_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("ftwrglry_id")
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_footweargallery'
#

LOCK TABLES "tbl_footweargallery" WRITE;
/*!40000 ALTER TABLE "tbl_footweargallery" DISABLE KEYS;*/
REPLACE INTO "tbl_footweargallery" ("ftwrglry_id", "ftwrglry_cptn", "ftwrglry_img", "ftwr_id") VALUES
	('1','Men Shoe
','Footwear_1826.jpg','5');
REPLACE INTO "tbl_footweargallery" ("ftwrglry_id", "ftwrglry_cptn", "ftwrglry_img", "ftwr_id") VALUES
	('2','Women Bata Sandals','Footwear_2006.jpg','5');
REPLACE INTO "tbl_footweargallery" ("ftwrglry_id", "ftwrglry_cptn", "ftwrglry_img", "ftwr_id") VALUES
	('3','Woodland heels women
','Footwear_1861.jpg','5');
/*!40000 ALTER TABLE "tbl_footweargallery" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_footwearstock'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_footwearstock" (
  "footwearstock_id" int(10) unsigned NOT NULL auto_increment,
  "footwearstock_date" date NOT NULL,
  "footwearstock_quantity" int(10) unsigned NOT NULL,
  "ftwr_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("footwearstock_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_footwearstock'
#

LOCK TABLES "tbl_footwearstock" WRITE;
/*!40000 ALTER TABLE "tbl_footwearstock" DISABLE KEYS;*/
REPLACE INTO "tbl_footwearstock" ("footwearstock_id", "footwearstock_date", "footwearstock_quantity", "ftwr_id") VALUES
	('1','2021-11-11','6','5');
/*!40000 ALTER TABLE "tbl_footwearstock" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_gadget'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_gadget" (
  "gd_id" int(10) unsigned NOT NULL auto_increment,
  "gd_ctgry" varchar(50) NOT NULL,
  "gdbrnd_id" int(50) NOT NULL,
  "gd_ram" varchar(20) default NULL,
  "gd_mmem" varchar(50) default NULL,
  "gd_fcam" varchar(50) default NULL,
  "gd_mcam" varchar(50) default NULL,
  "gd_ssd" varchar(50) default NULL,
  "gd_img" varchar(50) NOT NULL,
  "gd_pr" varchar(50) NOT NULL,
  "gd_othrftrs" varchar(50) NOT NULL,
  "sh_id" int(10) unsigned NOT NULL,
  "gd_rtn" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("gd_id")
) AUTO_INCREMENT=15;



#
# Dumping data for table 'tbl_gadget'
#

LOCK TABLES "tbl_gadget" WRITE;
/*!40000 ALTER TABLE "tbl_gadget" DISABLE KEYS;*/
REPLACE INTO "tbl_gadget" ("gd_id", "gd_ctgry", "gdbrnd_id", "gd_ram", "gd_mmem", "gd_fcam", "gd_mcam", "gd_ssd", "gd_img", "gd_pr", "gd_othrftrs", "sh_id", "gd_rtn") VALUES
	('10','Laptop',2,'8GB','SSD','','','1TB','Gadget_1452.png','20000','Feature_1958.pdf','13','6');
REPLACE INTO "tbl_gadget" ("gd_id", "gd_ctgry", "gdbrnd_id", "gd_ram", "gd_mmem", "gd_fcam", "gd_mcam", "gd_ssd", "gd_img", "gd_pr", "gd_othrftrs", "sh_id", "gd_rtn") VALUES
	('11','Mobile',5,'3GB','HDD','5.5MP','8MP','128GB','Gadget_2101.jpg','16000','Feature_1933.pdf','13','10');
REPLACE INTO "tbl_gadget" ("gd_id", "gd_ctgry", "gdbrnd_id", "gd_ram", "gd_mmem", "gd_fcam", "gd_mcam", "gd_ssd", "gd_img", "gd_pr", "gd_othrftrs", "sh_id", "gd_rtn") VALUES
	('12','Laptop',3,'8GB','SSD','','','512GB','Gadget_1265.jpg','600000','Feature_1453.pdf','4','15');
REPLACE INTO "tbl_gadget" ("gd_id", "gd_ctgry", "gdbrnd_id", "gd_ram", "gd_mmem", "gd_fcam", "gd_mcam", "gd_ssd", "gd_img", "gd_pr", "gd_othrftrs", "sh_id", "gd_rtn") VALUES
	('13','Headset',5,'','','','','','Gadget_1334.jpeg','650','Feature_1583.pdf','4','5');
REPLACE INTO "tbl_gadget" ("gd_id", "gd_ctgry", "gdbrnd_id", "gd_ram", "gd_mmem", "gd_fcam", "gd_mcam", "gd_ssd", "gd_img", "gd_pr", "gd_othrftrs", "sh_id", "gd_rtn") VALUES
	('14','Mobile',7,'4GB','HDD','5.5MP','7MP','128GB','Gadget_1240.jpeg','16000','Feature_1236.pdf','4','10');
/*!40000 ALTER TABLE "tbl_gadget" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_gadgetbrand'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_gadgetbrand" (
  "gdbrnd_id" int(10) unsigned NOT NULL auto_increment,
  "gdbrnd_nme" varchar(50) NOT NULL,
  PRIMARY KEY  ("gdbrnd_id")
) AUTO_INCREMENT=14;



#
# Dumping data for table 'tbl_gadgetbrand'
#

LOCK TABLES "tbl_gadgetbrand" WRITE;
/*!40000 ALTER TABLE "tbl_gadgetbrand" DISABLE KEYS;*/
REPLACE INTO "tbl_gadgetbrand" ("gdbrnd_id", "gdbrnd_nme") VALUES
	('2','HP');
REPLACE INTO "tbl_gadgetbrand" ("gdbrnd_id", "gdbrnd_nme") VALUES
	('3','Sumsung');
REPLACE INTO "tbl_gadgetbrand" ("gdbrnd_id", "gdbrnd_nme") VALUES
	('5','Mi');
REPLACE INTO "tbl_gadgetbrand" ("gdbrnd_id", "gdbrnd_nme") VALUES
	('6','Huwaei');
REPLACE INTO "tbl_gadgetbrand" ("gdbrnd_id", "gdbrnd_nme") VALUES
	('7','Honor');
REPLACE INTO "tbl_gadgetbrand" ("gdbrnd_id", "gdbrnd_nme") VALUES
	('8','Apple');
REPLACE INTO "tbl_gadgetbrand" ("gdbrnd_id", "gdbrnd_nme") VALUES
	('9','Blackberry');
REPLACE INTO "tbl_gadgetbrand" ("gdbrnd_id", "gdbrnd_nme") VALUES
	('10','LG');
REPLACE INTO "tbl_gadgetbrand" ("gdbrnd_id", "gdbrnd_nme") VALUES
	('11','Sony');
REPLACE INTO "tbl_gadgetbrand" ("gdbrnd_id", "gdbrnd_nme") VALUES
	('12','Onida');
REPLACE INTO "tbl_gadgetbrand" ("gdbrnd_id", "gdbrnd_nme") VALUES
	('13','Philips');
/*!40000 ALTER TABLE "tbl_gadgetbrand" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_gadgetgallery'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_gadgetgallery" (
  "gdglry_id" int(10) unsigned NOT NULL auto_increment,
  "gdglry_cptn" varchar(50) NOT NULL,
  "gdglry_img" varchar(50) NOT NULL,
  "gd_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("gdglry_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_gadgetgallery'
#

LOCK TABLES "tbl_gadgetgallery" WRITE;
/*!40000 ALTER TABLE "tbl_gadgetgallery" DISABLE KEYS;*/
REPLACE INTO "tbl_gadgetgallery" ("gdglry_id", "gdglry_cptn", "gdglry_img", "gd_id") VALUES
	('1','Mi mobiles','Gadget_1210.jpg','11');
REPLACE INTO "tbl_gadgetgallery" ("gdglry_id", "gdglry_cptn", "gdglry_img", "gd_id") VALUES
	('2','samsung laptop','Gadget_2052.jpg','12');
REPLACE INTO "tbl_gadgetgallery" ("gdglry_id", "gdglry_cptn", "gdglry_img", "gd_id") VALUES
	('3','Mi headset','Gadget_1670.jpeg','13');
REPLACE INTO "tbl_gadgetgallery" ("gdglry_id", "gdglry_cptn", "gdglry_img", "gd_id") VALUES
	('4','Honor Mobiles
','Gadget_1061.jpeg','14');
/*!40000 ALTER TABLE "tbl_gadgetgallery" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_gadgetstock'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_gadgetstock" (
  "gadgetstock_id" int(10) unsigned NOT NULL auto_increment,
  "gadgetstock_date" date NOT NULL,
  "gadgetstock_quantity" int(10) unsigned NOT NULL,
  "gd_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("gadgetstock_id")
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_gadgetstock'
#

LOCK TABLES "tbl_gadgetstock" WRITE;
/*!40000 ALTER TABLE "tbl_gadgetstock" DISABLE KEYS;*/
REPLACE INTO "tbl_gadgetstock" ("gadgetstock_id", "gadgetstock_date", "gadgetstock_quantity", "gd_id") VALUES
	('1','2021-11-04','23','12');
REPLACE INTO "tbl_gadgetstock" ("gadgetstock_id", "gadgetstock_date", "gadgetstock_quantity", "gd_id") VALUES
	('2','2021-11-11','12','12');
REPLACE INTO "tbl_gadgetstock" ("gadgetstock_id", "gadgetstock_date", "gadgetstock_quantity", "gd_id") VALUES
	('3','2021-11-09','23','12');
/*!40000 ALTER TABLE "tbl_gadgetstock" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_grocery'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_grocery" (
  "grcry_id" int(10) unsigned NOT NULL auto_increment,
  "grcry_subctgry_id" int(50) NOT NULL,
  "grcry_unit" varchar(50) NOT NULL,
  "grcry_rate" int(10) unsigned NOT NULL,
  "grcry_img" varchar(50) NOT NULL,
  "grcry_rtn" int(50) NOT NULL,
  "grcry_rlvl" int(10) unsigned NOT NULL,
  "sh_id" int(50) unsigned NOT NULL,
  PRIMARY KEY  ("grcry_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_grocery'
#

LOCK TABLES "tbl_grocery" WRITE;
/*!40000 ALTER TABLE "tbl_grocery" DISABLE KEYS;*/
REPLACE INTO "tbl_grocery" ("grcry_id", "grcry_subctgry_id", "grcry_unit", "grcry_rate", "grcry_img", "grcry_rtn", "grcry_rlvl", "sh_id") VALUES
	('1',5,'1 kg','30','proof_1943.jpg',0,'10','16');
REPLACE INTO "tbl_grocery" ("grcry_id", "grcry_subctgry_id", "grcry_unit", "grcry_rate", "grcry_img", "grcry_rtn", "grcry_rlvl", "sh_id") VALUES
	('2',3,'1 kg','30','proof_2047.jpg',1,'20','9');
REPLACE INTO "tbl_grocery" ("grcry_id", "grcry_subctgry_id", "grcry_unit", "grcry_rate", "grcry_img", "grcry_rtn", "grcry_rlvl", "sh_id") VALUES
	('3',23,'2 kg','80','proof_1071.jpg',1,'30','9');
REPLACE INTO "tbl_grocery" ("grcry_id", "grcry_subctgry_id", "grcry_unit", "grcry_rate", "grcry_img", "grcry_rtn", "grcry_rlvl", "sh_id") VALUES
	('4',83,'500 gm','250','proof_1141.jpg',1,'20','9');
/*!40000 ALTER TABLE "tbl_grocery" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_grocerycategory'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_grocerycategory" (
  "grcryctgry_id" int(10) unsigned NOT NULL auto_increment,
  "grcryctgry_nme" varchar(50) NOT NULL,
  PRIMARY KEY  ("grcryctgry_id")
) AUTO_INCREMENT=17;



#
# Dumping data for table 'tbl_grocerycategory'
#

LOCK TABLES "tbl_grocerycategory" WRITE;
/*!40000 ALTER TABLE "tbl_grocerycategory" DISABLE KEYS;*/
REPLACE INTO "tbl_grocerycategory" ("grcryctgry_id", "grcryctgry_nme") VALUES
	('5','Cereals');
REPLACE INTO "tbl_grocerycategory" ("grcryctgry_id", "grcryctgry_nme") VALUES
	('6','Vegetables');
REPLACE INTO "tbl_grocerycategory" ("grcryctgry_id", "grcryctgry_nme") VALUES
	('7','Fruits');
REPLACE INTO "tbl_grocerycategory" ("grcryctgry_id", "grcryctgry_nme") VALUES
	('8','Pulses');
REPLACE INTO "tbl_grocerycategory" ("grcryctgry_id", "grcryctgry_nme") VALUES
	('9','Oil');
REPLACE INTO "tbl_grocerycategory" ("grcryctgry_id", "grcryctgry_nme") VALUES
	('10','Curry Powders');
REPLACE INTO "tbl_grocerycategory" ("grcryctgry_id", "grcryctgry_nme") VALUES
	('11','Spices');
REPLACE INTO "tbl_grocerycategory" ("grcryctgry_id", "grcryctgry_nme") VALUES
	('12','Tea Powder');
REPLACE INTO "tbl_grocerycategory" ("grcryctgry_id", "grcryctgry_nme") VALUES
	('13','Coffee Powder');
REPLACE INTO "tbl_grocerycategory" ("grcryctgry_id", "grcryctgry_nme") VALUES
	('14','Sugar');
REPLACE INTO "tbl_grocerycategory" ("grcryctgry_id", "grcryctgry_nme") VALUES
	('15','Salt');
REPLACE INTO "tbl_grocerycategory" ("grcryctgry_id", "grcryctgry_nme") VALUES
	('16','Masala Powders');
/*!40000 ALTER TABLE "tbl_grocerycategory" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_grocerygallery'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_grocerygallery" (
  "grcryglry_id" int(50) unsigned NOT NULL auto_increment,
  "grcryglry_img" varchar(100) NOT NULL,
  "grcry_id" int(10) unsigned NOT NULL,
  "grcryglry_desc" varchar(500) NOT NULL,
  PRIMARY KEY  ("grcryglry_id")
);



#
# Dumping data for table 'tbl_grocerygallery'
#

# No data found.



#
# Table structure for table 'tbl_grocerystock'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_grocerystock" (
  "grocerystock_id" int(10) unsigned NOT NULL auto_increment,
  "grocerystock_date" date NOT NULL,
  "grocerystock_quantity" int(10) unsigned NOT NULL,
  "grcry_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("grocerystock_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_grocerystock'
#

LOCK TABLES "tbl_grocerystock" WRITE;
/*!40000 ALTER TABLE "tbl_grocerystock" DISABLE KEYS;*/
REPLACE INTO "tbl_grocerystock" ("grocerystock_id", "grocerystock_date", "grocerystock_quantity", "grcry_id") VALUES
	('1','2021-11-11','56','2');
REPLACE INTO "tbl_grocerystock" ("grocerystock_id", "grocerystock_date", "grocerystock_quantity", "grcry_id") VALUES
	('2','2021-11-10','45','2');
/*!40000 ALTER TABLE "tbl_grocerystock" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_grocerysubcategory'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_grocerysubcategory" (
  "grcrysubctgry_id" int(10) unsigned NOT NULL auto_increment,
  "grcryctgry_id" int(10) unsigned NOT NULL,
  "grcrysubctgry_nme" varchar(50) NOT NULL,
  PRIMARY KEY  ("grcrysubctgry_id")
) AUTO_INCREMENT=91;



#
# Dumping data for table 'tbl_grocerysubcategory'
#

LOCK TABLES "tbl_grocerysubcategory" WRITE;
/*!40000 ALTER TABLE "tbl_grocerysubcategory" DISABLE KEYS;*/
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('3','6','Potato');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('5','6','Tomato');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('6','6','Beetroot');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('7','6','Cabbage');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('8','6','Cauliflower');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('9','6','Ladiesfinger');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('10','6','Pumpkin');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('11','6','Cucumber');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('12','6','Onion');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('13','6','Shallot');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('14','6','Garlic');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('15','6','Ginger');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('16','6','Brinjal');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('18','6','Elephant Yam');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('19','6','Bitter Gourd');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('20','6','Snake Gourd');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('21','6','Mango');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('22','7','Pomegranate');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('23','7','Apple');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('24','7','Orange');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('25','7','Watermelon');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('26','7','Avacado');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('27','7','Kiwi');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('28','7','Litchi');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('29','7','Grapes');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('30','7','Banana');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('31','7','Papaya');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('32','7','Dragon Fruit');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('33','7','Pineapple');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('34','7','Dates');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('35','7','Guava');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('37','7','Passion Fruit');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('38','9','Cocunut Oil');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('39','9','Sunflower Oil');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('40','9','Mustard Oil');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('41','9','Palm Oil');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('42','9','Olive Oil');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('43','9','Sesame Oil');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('44','5','Barley');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('45','5','Broken Wheat');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('46','5','Cornflakes');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('47','5','Wheat');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('48','5','Macroni');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('49','5','Maize');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('50','5','Milllet');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('51','5','Oats');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('52','5','Ragi');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('53','5','Rice');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('54','6','Coconut');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('55','6','Chilli');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('56','8','Mung Beans');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('57','8','Dhal');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('58','8','Channa');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('59','8','Urad Dhal');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('60','10','Chilli Powder');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('61','10','Turmeric Powder');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('62','10','Coriander Powder');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('64','10','Pepper Powder');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('65','11','Black Sesame');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('66','11','Saffron');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('67','11','Cloves');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('68','11','Fenugreek ');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('69','11','Star Anise');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('70','11','Cinnamon');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('71','11','Cardamom');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('72','11','Asafoetida');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('73','11','Cumin Seeds');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('74','16','Chicken Masala');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('75','16','Meat Masala');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('76','16','Fish Masala');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('77','10','Sambar Powder');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('78','10','Pickle Powder');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('79','12','Masala Tea Powder');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('80','12','Green Tea Powder');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('81','12','Herbal Tea Powder');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('82','12','Dust Tea Powder');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('83','12','Leaf Tea Powder');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('84','14','Granulated Sugar');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('85','14','Cane Sugar');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('86','14','Sanding Sugar');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('87','14','Light Brown Sugar');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('88','14','Dark Brown Sugar');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('89','15','Table Salt');
REPLACE INTO "tbl_grocerysubcategory" ("grcrysubctgry_id", "grcryctgry_id", "grcrysubctgry_nme") VALUES
	('90','15','Rock Salt');
/*!40000 ALTER TABLE "tbl_grocerysubcategory" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_place'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_place" (
  "plc_id" int(10) unsigned NOT NULL auto_increment,
  "plc_nme" varchar(50) NOT NULL,
  "dist_id" int(10) unsigned NOT NULL,
  "plc_pin" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("plc_id")
) AUTO_INCREMENT=39;



#
# Dumping data for table 'tbl_place'
#

LOCK TABLES "tbl_place" WRITE;
/*!40000 ALTER TABLE "tbl_place" DISABLE KEYS;*/
REPLACE INTO "tbl_place" ("plc_id", "plc_nme", "dist_id", "plc_pin") VALUES
	('21','Piravom','34','686664');
REPLACE INTO "tbl_place" ("plc_id", "plc_nme", "dist_id", "plc_pin") VALUES
	('22','Thrippunithra','34','682301');
REPLACE INTO "tbl_place" ("plc_id", "plc_nme", "dist_id", "plc_pin") VALUES
	('23','Eroor','34','682303');
REPLACE INTO "tbl_place" ("plc_id", "plc_nme", "dist_id", "plc_pin") VALUES
	('24','Bekel','27','671318');
REPLACE INTO "tbl_place" ("plc_id", "plc_nme", "dist_id", "plc_pin") VALUES
	('25','Kamballur','27','670511');
REPLACE INTO "tbl_place" ("plc_id", "plc_nme", "dist_id", "plc_pin") VALUES
	('26','Iritty','28','670703');
REPLACE INTO "tbl_place" ("plc_id", "plc_nme", "dist_id", "plc_pin") VALUES
	('27','Payyanur','28','670307');
REPLACE INTO "tbl_place" ("plc_id", "plc_nme", "dist_id", "plc_pin") VALUES
	('29','Mananthavady','29','670645');
REPLACE INTO "tbl_place" ("plc_id", "plc_nme", "dist_id", "plc_pin") VALUES
	('30','Sulthan Bathery','29','673592');
REPLACE INTO "tbl_place" ("plc_id", "plc_nme", "dist_id", "plc_pin") VALUES
	('31','Alli','30','673602');
REPLACE INTO "tbl_place" ("plc_id", "plc_nme", "dist_id", "plc_pin") VALUES
	('32','Beypore','30','673015');
REPLACE INTO "tbl_place" ("plc_id", "plc_nme", "dist_id", "plc_pin") VALUES
	('33','Kuzhimanna','31','673641');
REPLACE INTO "tbl_place" ("plc_id", "plc_nme", "dist_id", "plc_pin") VALUES
	('34','Maithra','31','673639');
REPLACE INTO "tbl_place" ("plc_id", "plc_nme", "dist_id", "plc_pin") VALUES
	('35','Malampuzha','32','678651');
REPLACE INTO "tbl_place" ("plc_id", "plc_nme", "dist_id", "plc_pin") VALUES
	('36','Alathur','33','680741');
REPLACE INTO "tbl_place" ("plc_id", "plc_nme", "dist_id", "plc_pin") VALUES
	('37','Thodupuzha','35','685581');
REPLACE INTO "tbl_place" ("plc_id", "plc_nme", "dist_id", "plc_pin") VALUES
	('38','Mannanam','36','686561');
/*!40000 ALTER TABLE "tbl_place" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_shop'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_shop" (
  "sh_id" int(10) unsigned NOT NULL auto_increment,
  "sh_nme" varchar(50) NOT NULL,
  "plc_id" int(10) unsigned NOT NULL,
  "sh_email" varchar(50) NOT NULL,
  "sh_siteaddr" varchar(1000) NOT NULL,
  "sh_prf" varchar(50) NOT NULL,
  "sh_adhrno" varchar(50) NOT NULL,
  "sh_photo" varchar(50) NOT NULL,
  "sh_licsnno" int(50) unsigned NOT NULL,
  "sh_ownrpass" varchar(50) NOT NULL,
  "sh_sts" int(10) unsigned NOT NULL default '0',
  "dist_id" int(10) unsigned NOT NULL,
  "sh_pin" int(10) unsigned NOT NULL,
  "sh_typ" varchar(50) NOT NULL,
  "sh_contct" varchar(100) NOT NULL,
  "sh_ownrnme" varchar(100) NOT NULL,
  PRIMARY KEY  ("sh_id")
) AUTO_INCREMENT=16;



#
# Dumping data for table 'tbl_shop'
#

LOCK TABLES "tbl_shop" WRITE;
/*!40000 ALTER TABLE "tbl_shop" DISABLE KEYS;*/
REPLACE INTO "tbl_shop" ("sh_id", "sh_nme", "plc_id", "sh_email", "sh_siteaddr", "sh_prf", "sh_adhrno", "sh_photo", "sh_licsnno", "sh_ownrpass", "sh_sts", "dist_id", "sh_pin", "sh_typ", "sh_contct", "sh_ownrnme") VALUES
	('1','NStyle','21','nstyle@gmail.com','opp.private bus stand,Private Bus Stand, Piravom, Kerala 686664','proof_1172.jpg','140021001200','proof_1062.jpg','14786','12345678','1','34','686664','5','75107 79198','N A Benny');
REPLACE INTO "tbl_shop" ("sh_id", "sh_nme", "plc_id", "sh_email", "sh_siteaddr", "sh_prf", "sh_adhrno", "sh_photo", "sh_licsnno", "sh_ownrpass", "sh_sts", "dist_id", "sh_pin", "sh_typ", "sh_contct", "sh_ownrnme") VALUES
	('2','Padikkan Wedding Centre','21','padikkan@gmail.com','Old Market Rd, Private Bus Stand, Pallikavala, Piravom, Kerala 686664','proof_1133.jpg','140021001201','proof_1603.jpg','14787','12345678','1','34','686664','5','98951 48951','Sajumon Alex');
REPLACE INTO "tbl_shop" ("sh_id", "sh_nme", "plc_id", "sh_email", "sh_siteaddr", "sh_prf", "sh_adhrno", "sh_photo", "sh_licsnno", "sh_ownrpass", "sh_sts", "dist_id", "sh_pin", "sh_typ", "sh_contct", "sh_ownrnme") VALUES
	('3','Seemas Wedding Collections','22','seemas@gmail.com','Hill Palace Rd, East Fort Gate, Kannankulangara, Thrippunithura, Kochi, Kerala 682301','proof_1440.jpg','140021001202','proof_1022.jpg','14788','12345678','1','34','682301','5','914842774535','K A Pradeep');
REPLACE INTO "tbl_shop" ("sh_id", "sh_nme", "plc_id", "sh_email", "sh_siteaddr", "sh_prf", "sh_adhrno", "sh_photo", "sh_licsnno", "sh_ownrpass", "sh_sts", "dist_id", "sh_pin", "sh_typ", "sh_contct", "sh_ownrnme") VALUES
	('4','myG','21','myg@gmail.com','Near, Door no:25/54 A,B, Ground Floor, Pallipattu Temple Rd, Piravom, Kerala 686664','proof_1266.jpg','140021001203','proof_1931.jpg','14789','12345678','1','34','686664','2','95679 92277','A K Shaji');
REPLACE INTO "tbl_shop" ("sh_id", "sh_nme", "plc_id", "sh_email", "sh_siteaddr", "sh_prf", "sh_adhrno", "sh_photo", "sh_licsnno", "sh_ownrpass", "sh_sts", "dist_id", "sh_pin", "sh_typ", "sh_contct", "sh_ownrnme") VALUES
	('5','Manakattu Shopping Centre','21','manakattu@gmail.com','Bus Stand Building, Old Market Rd, Private Bus Stand, Piravom, Kerala 686664','proof_2011.jpg','140021001204','proof_1404.jpg','14790','12345678','1','34','686664','2','98953 32800','K Thankappan');
REPLACE INTO "tbl_shop" ("sh_id", "sh_nme", "plc_id", "sh_email", "sh_siteaddr", "sh_prf", "sh_adhrno", "sh_photo", "sh_licsnno", "sh_ownrpass", "sh_sts", "dist_id", "sh_pin", "sh_typ", "sh_contct", "sh_ownrnme") VALUES
	('6','We Mart Supermarket','22','wemart@gmail.com','S.N Junction, opposite Varma Hospital, Vadakkekotta, Thrippunithura, Ernakulam, Kerala 682301','proof_1806.jpg','140021001205','proof_1149.jpg','14791','12345678','1','34','682301','4','9526108886','Rijo Scaria');
REPLACE INTO "tbl_shop" ("sh_id", "sh_nme", "plc_id", "sh_email", "sh_siteaddr", "sh_prf", "sh_adhrno", "sh_photo", "sh_licsnno", "sh_ownrpass", "sh_sts", "dist_id", "sh_pin", "sh_typ", "sh_contct", "sh_ownrnme") VALUES
	('7','Omana Stores','21','omana@gmail.com','Bus Stand Building, 1st Floor, Old Market Rd ','proof_2063.jpg','140021001205','proof_1286.jpg','14792','12345678','1','34','686664','4','98955 66908','Omana Sivaraman');
REPLACE INTO "tbl_shop" ("sh_id", "sh_nme", "plc_id", "sh_email", "sh_siteaddr", "sh_prf", "sh_adhrno", "sh_photo", "sh_licsnno", "sh_ownrpass", "sh_sts", "dist_id", "sh_pin", "sh_typ", "sh_contct", "sh_ownrnme") VALUES
	('8','Left Right Shoe Mart','21','leftright@gmail.com','opp.Private Bus Stand, Piravom, Kerala 686664','proof_1624.jpg','14002100120','proof_1150.png','14792','12345678','1','34','68664','3','8714108828','Joy Mathew');
REPLACE INTO "tbl_shop" ("sh_id", "sh_nme", "plc_id", "sh_email", "sh_siteaddr", "sh_prf", "sh_adhrno", "sh_photo", "sh_licsnno", "sh_ownrpass", "sh_sts", "dist_id", "sh_pin", "sh_typ", "sh_contct", "sh_ownrnme") VALUES
	('9','Pulimalayil Stores','21','pulimalayil@gmail.com','near private bus stand,piravom,686664','proof_1943.jpg','140021001205','proof_2011.jpg','14793','12345678','1','34','686664','7','9825321011','P M Thankachan');
REPLACE INTO "tbl_shop" ("sh_id", "sh_nme", "plc_id", "sh_email", "sh_siteaddr", "sh_prf", "sh_adhrno", "sh_photo", "sh_licsnno", "sh_ownrpass", "sh_sts", "dist_id", "sh_pin", "sh_typ", "sh_contct", "sh_ownrnme") VALUES
	('15','Level3','21','level3@gmail.com','Private Bus Stand, Pallikavala, Piravom, Kerala 686664, India','proof_1551.png','140021001209','proof_1737.jpg','14794','12345678','1','34','686664','5','9023261735','Suma ');
/*!40000 ALTER TABLE "tbl_shop" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_shoptype'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_shoptype" (
  "shtyp_id" int(10) unsigned NOT NULL auto_increment,
  "shtyp_typ" varchar(50) NOT NULL,
  PRIMARY KEY  ("shtyp_id")
) AUTO_INCREMENT=8;



#
# Dumping data for table 'tbl_shoptype'
#

LOCK TABLES "tbl_shoptype" WRITE;
/*!40000 ALTER TABLE "tbl_shoptype" DISABLE KEYS;*/
REPLACE INTO "tbl_shoptype" ("shtyp_id", "shtyp_typ") VALUES
	('2','Gadget');
REPLACE INTO "tbl_shoptype" ("shtyp_id", "shtyp_typ") VALUES
	('3','Footwear');
REPLACE INTO "tbl_shoptype" ("shtyp_id", "shtyp_typ") VALUES
	('4','Utensil');
REPLACE INTO "tbl_shoptype" ("shtyp_id", "shtyp_typ") VALUES
	('5','Dress');
REPLACE INTO "tbl_shoptype" ("shtyp_id", "shtyp_typ") VALUES
	('7','Grocery');
/*!40000 ALTER TABLE "tbl_shoptype" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_utensil'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_utensil" (
  "utsl_id" int(10) unsigned NOT NULL auto_increment,
  "sh_id" int(100) unsigned NOT NULL,
  "utsl_ctgry" varchar(50) NOT NULL,
  "utslbrnd_id" int(11) NOT NULL,
  "utsl_size" varchar(5000) default NULL,
  "utsl_nme" varchar(300) NOT NULL,
  "utsl_pr" int(10) unsigned NOT NULL,
  "utsl_mtrl" varchar(50) NOT NULL,
  "utsl_rtn" int(10) unsigned NOT NULL,
  "utsl_img" varchar(50) NOT NULL,
  PRIMARY KEY  ("utsl_id")
) AUTO_INCREMENT=8;



#
# Dumping data for table 'tbl_utensil'
#

LOCK TABLES "tbl_utensil" WRITE;
/*!40000 ALTER TABLE "tbl_utensil" DISABLE KEYS;*/
REPLACE INTO "tbl_utensil" ("utsl_id", "sh_id", "utsl_ctgry", "utslbrnd_id", "utsl_size", "utsl_nme", "utsl_pr", "utsl_mtrl", "utsl_rtn", "utsl_img") VALUES
	('2','11','Frying Pan',1,'20 cm','Prestige Omega Select Plus Non Stick Aluminum Fry Pan','620','Aluminium','12','proof_1586.jpeg');
REPLACE INTO "tbl_utensil" ("utsl_id", "sh_id", "utsl_ctgry", "utslbrnd_id", "utsl_size", "utsl_nme", "utsl_pr", "utsl_mtrl", "utsl_rtn", "utsl_img") VALUES
	('3','11','Plate',5,'16 mm','Jackson China Hummingbird restaurant plates','900','Fiber','6','proof_1446.jpg');
REPLACE INTO "tbl_utensil" ("utsl_id", "sh_id", "utsl_ctgry", "utslbrnd_id", "utsl_size", "utsl_nme", "utsl_pr", "utsl_mtrl", "utsl_rtn", "utsl_img") VALUES
	('4','7','Peeler',1,'','Aluminium Peeler','50','Aluminium','10','proof_1098.jpeg');
REPLACE INTO "tbl_utensil" ("utsl_id", "sh_id", "utsl_ctgry", "utslbrnd_id", "utsl_size", "utsl_nme", "utsl_pr", "utsl_mtrl", "utsl_rtn", "utsl_img") VALUES
	('5','7','Cooker',4,'2L','Anna Aluminium Pressure Cooker','600','Aluminium','10','proof_1577.jpg');
REPLACE INTO "tbl_utensil" ("utsl_id", "sh_id", "utsl_ctgry", "utslbrnd_id", "utsl_size", "utsl_nme", "utsl_pr", "utsl_mtrl", "utsl_rtn", "utsl_img") VALUES
	('6','7','Frying Pan',5,'20 cm','Jackson Frying pan','700','Ceramic','5','proof_1430.jpg');
REPLACE INTO "tbl_utensil" ("utsl_id", "sh_id", "utsl_ctgry", "utslbrnd_id", "utsl_size", "utsl_nme", "utsl_pr", "utsl_mtrl", "utsl_rtn", "utsl_img") VALUES
	('7','7','Grater',5,'','Stainless Steel Grater ','150','Stainless Steel','10','proof_1657.jpg');
/*!40000 ALTER TABLE "tbl_utensil" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_utensilbrand'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_utensilbrand" (
  "utslbrnd_id" int(10) unsigned NOT NULL auto_increment,
  "utslbrnd_nme" varchar(50) NOT NULL,
  PRIMARY KEY  ("utslbrnd_id")
) AUTO_INCREMENT=13;



#
# Dumping data for table 'tbl_utensilbrand'
#

LOCK TABLES "tbl_utensilbrand" WRITE;
/*!40000 ALTER TABLE "tbl_utensilbrand" DISABLE KEYS;*/
REPLACE INTO "tbl_utensilbrand" ("utslbrnd_id", "utslbrnd_nme") VALUES
	('1','Prestige');
REPLACE INTO "tbl_utensilbrand" ("utslbrnd_id", "utslbrnd_nme") VALUES
	('4','Anna Aluminium');
REPLACE INTO "tbl_utensilbrand" ("utslbrnd_id", "utslbrnd_nme") VALUES
	('5','Jackson');
REPLACE INTO "tbl_utensilbrand" ("utslbrnd_id", "utslbrnd_nme") VALUES
	('6','Philips');
REPLACE INTO "tbl_utensilbrand" ("utslbrnd_id", "utslbrnd_nme") VALUES
	('7','Sujatha');
REPLACE INTO "tbl_utensilbrand" ("utslbrnd_id", "utslbrnd_nme") VALUES
	('8','Butterfly');
REPLACE INTO "tbl_utensilbrand" ("utslbrnd_id", "utslbrnd_nme") VALUES
	('9','Laopala');
REPLACE INTO "tbl_utensilbrand" ("utslbrnd_id", "utslbrnd_nme") VALUES
	('10','Hawkins');
REPLACE INTO "tbl_utensilbrand" ("utslbrnd_id", "utslbrnd_nme") VALUES
	('11','Pigeon');
REPLACE INTO "tbl_utensilbrand" ("utslbrnd_id", "utslbrnd_nme") VALUES
	('12','Wonderchef');
/*!40000 ALTER TABLE "tbl_utensilbrand" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_utensilgallery'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_utensilgallery" (
  "utslglry_id" int(10) unsigned NOT NULL auto_increment,
  "utslglry_img" varchar(50) NOT NULL,
  "utsl_id" int(10) unsigned NOT NULL,
  "utslglry_desc" varchar(100) NOT NULL,
  PRIMARY KEY  ("utslglry_id")
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_utensilgallery'
#

LOCK TABLES "tbl_utensilgallery" WRITE;
/*!40000 ALTER TABLE "tbl_utensilgallery" DISABLE KEYS;*/
REPLACE INTO "tbl_utensilgallery" ("utslglry_id", "utslglry_img", "utsl_id", "utslglry_desc") VALUES
	('1','','4','Aluminium Peeler');
REPLACE INTO "tbl_utensilgallery" ("utslglry_id", "utslglry_img", "utsl_id", "utslglry_desc") VALUES
	('2','','5','Aluminium Cooker');
REPLACE INTO "tbl_utensilgallery" ("utslglry_id", "utslglry_img", "utsl_id", "utslglry_desc") VALUES
	('3','','6','  ceramic Frying Pan');
/*!40000 ALTER TABLE "tbl_utensilgallery" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_utensilstock'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_utensilstock" (
  "utensilstock_id" int(10) unsigned NOT NULL auto_increment,
  "utensilstock_date" date NOT NULL,
  "utensilstock_quantity" int(10) unsigned NOT NULL,
  "utsl_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("utensilstock_id")
) AUTO_INCREMENT=6;



#
# Dumping data for table 'tbl_utensilstock'
#

LOCK TABLES "tbl_utensilstock" WRITE;
/*!40000 ALTER TABLE "tbl_utensilstock" DISABLE KEYS;*/
REPLACE INTO "tbl_utensilstock" ("utensilstock_id", "utensilstock_date", "utensilstock_quantity", "utsl_id") VALUES
	('1','2021-11-03','23','4');
REPLACE INTO "tbl_utensilstock" ("utensilstock_id", "utensilstock_date", "utensilstock_quantity", "utsl_id") VALUES
	('2','2021-11-11','56','4');
REPLACE INTO "tbl_utensilstock" ("utensilstock_id", "utensilstock_date", "utensilstock_quantity", "utsl_id") VALUES
	('3','2021-12-17','12','5');
REPLACE INTO "tbl_utensilstock" ("utensilstock_id", "utensilstock_date", "utensilstock_quantity", "utsl_id") VALUES
	('4','2021-12-16','17','6');
REPLACE INTO "tbl_utensilstock" ("utensilstock_id", "utensilstock_date", "utensilstock_quantity", "utsl_id") VALUES
	('5','2021-12-18','20','7');
/*!40000 ALTER TABLE "tbl_utensilstock" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
