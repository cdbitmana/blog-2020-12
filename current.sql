/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.14-MariaDB : Database - textBoard
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`textBoard` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `textBoard`;

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `title` char(200) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  `boardId` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `article` */

insert  into `article`(`id`,`regDate`,`updateDate`,`title`,`body`,`memberId`,`boardId`,`hit`) values 
(1,'2020-12-17 13:28:21','2020-12-17 13:28:21','자바) Switch 구문','# SWITCH\r\n```java\r\nswitch (변수명) {\r\n          case 조건1:\r\n          실행코드1;\r\n\r\n          case 조건2:\r\n          실행코드2;\r\n\r\n          default:\r\n          실행코드3;\r\n}\r\n```\r\n\r\n변수가 \r\n조건1에 참이라면 실행코드1부터 실행코드3까지 순차적으로 실행\r\n조건2에 참이라면 실행코드2부터 실행코드3까지 순차적으로 실행\r\n조건 1과 조건2에 모두 맞지 않으면 실행코드3만 실행\r\n\r\n\r\n조건에 맞는 실행코드만 실행하고 싶다면 break; 를 넣어준다.\r\n# 예시\r\n```java\r\nint value = 1;\r\n\r\nswitch (value) {\r\n          case 1 :\r\n          System.out.println(\"1\");\r\n          break;\r\n\r\n          case 2 :\r\n          System.out.println(\"2\");\r\n          break;\r\n\r\n          case 3 :\r\n          System.out.println(\"3\");\r\n          break;\r\n\r\n         default :\r\n         System.out.println(\"그 외의 숫자\");\r\n}\r\n```\r\n',1,1,0),
(2,'2020-12-17 15:25:02','2020-12-17 15:25:59','자바) 배열 정렬하는 식','```java\r\nint[] arr = new int[N];\r\n\r\n  for (int i = 0 ; i < arr.length ; i++) {\r\n    for (int j = 0 ; j < arr.length-i-1 ; j++) {\r\n      if(arr[j] < arr[j+1]){\r\n          int temp = arr[j+1];\r\n          arr[j+1] = arr[j];\r\n          arr[j] = temp;\r\n      }  \r\n    }\r\n  }\r\n```\r\n\r\n배열의 앞 뒤 값을  비교해서 작은 값을 뒤로 보내고, 다시 앞 뒤로 비교한다.\r\n이 과정을 반복해서 제일 작은 값은 마지막 위치로 가게 되고 제일 마지막 값은 이미 제일 작은 값이므로 또다시 비교할 필요가 없다.\r\n이 과정을 다시 반복하면 배열은 내림차순으로 정렬된다.',1,1,0),
(3,'2020-12-17 15:25:02','2020-12-17 15:25:59','자바) 배열 정렬하는 식','```java\r\nint[] arr = new int[N];\r\n\r\n  for (int i = 0 ; i < arr.length ; i++) {\r\n    for (int j = 0 ; j < arr.length-i-1 ; j++) {\r\n      if(arr[j] < arr[j+1]){\r\n          int temp = arr[j+1];\r\n          arr[j+1] = arr[j];\r\n          arr[j] = temp;\r\n      }  \r\n    }\r\n  }\r\n```\r\n\r\n배열의 앞 뒤 값을  비교해서 작은 값을 뒤로 보내고, 다시 앞 뒤로 비교한다.\r\n이 과정을 반복해서 제일 작은 값은 마지막 위치로 가게 되고 제일 마지막 값은 이미 제일 작은 값이므로 또다시 비교할 필요가 없다.\r\n이 과정을 다시 반복하면 배열은 내림차순으로 정렬된다.',1,1,0),
(4,'2020-12-17 15:25:02','2020-12-17 15:25:59','자바) 배열 정렬하는 식','```java\r\nint[] arr = new int[N];\r\n\r\n  for (int i = 0 ; i < arr.length ; i++) {\r\n    for (int j = 0 ; j < arr.length-i-1 ; j++) {\r\n      if(arr[j] < arr[j+1]){\r\n          int temp = arr[j+1];\r\n          arr[j+1] = arr[j];\r\n          arr[j] = temp;\r\n      }  \r\n    }\r\n  }\r\n```\r\n\r\n배열의 앞 뒤 값을  비교해서 작은 값을 뒤로 보내고, 다시 앞 뒤로 비교한다.\r\n이 과정을 반복해서 제일 작은 값은 마지막 위치로 가게 되고 제일 마지막 값은 이미 제일 작은 값이므로 또다시 비교할 필요가 없다.\r\n이 과정을 다시 반복하면 배열은 내림차순으로 정렬된다.',1,1,0),
(5,'2020-12-20 09:06:01','2020-12-20 09:06:01','테스트) 테스트','123213123123',1,2,0);

/*Table structure for table `articleRecommend` */

DROP TABLE IF EXISTS `articleRecommend`;

CREATE TABLE `articleRecommend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `articleId` int(10) unsigned NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `articleRecommend` */

/*Table structure for table `articleReply` */

DROP TABLE IF EXISTS `articleReply`;

CREATE TABLE `articleReply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `articleId` int(10) unsigned NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `articleReply` */

/*Table structure for table `board` */

DROP TABLE IF EXISTS `board`;

CREATE TABLE `board` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `name` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `board` */

insert  into `board`(`id`,`regDate`,`updateDate`,`name`,`code`) values 
(1,'2020-12-18 10:17:45','2020-12-18 10:17:45','IT','it'),
(2,'2020-12-19 18:01:53','2020-12-19 18:01:53','테스트','test');

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `loginId` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `loginPw` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` char(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `member` */

insert  into `member`(`id`,`regDate`,`updateDate`,`loginId`,`loginPw`,`name`) values 
(1,'2020-12-17 13:27:07','2020-12-17 13:27:07','admin','admin','이명학');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
