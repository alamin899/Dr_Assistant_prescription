/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.4.11-MariaDB : Database - doctor_patient_prescription
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`doctor_patient_prescription` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `doctor_patient_prescription`;

/*Table structure for table `abouts` */

DROP TABLE IF EXISTS `abouts`;

CREATE TABLE `abouts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `abouts` */

insert  into `abouts`(`id`,`about`,`created_at`,`updated_at`) values 
(1,'jjjjjjjjjjjjjjjjjj','2021-08-06 02:54:00','2021-08-06 02:54:00');

/*Table structure for table `advices` */

DROP TABLE IF EXISTS `advices`;

CREATE TABLE `advices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `advice` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `advices` */

/*Table structure for table `appointment_date_times` */

DROP TABLE IF EXISTS `appointment_date_times`;

CREATE TABLE `appointment_date_times` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `appointment_id` int(11) NOT NULL,
  `days` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `appointment_date_times` */

/*Table structure for table `appointments` */

DROP TABLE IF EXISTS `appointments`;

CREATE TABLE `appointments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `appointments` */

insert  into `appointments`(`id`,`name`,`address`,`phone`,`email`,`contact_person_name`,`user_id`,`created_at`,`updated_at`) values 
(1,'eeis','0vcxYqdnoc','7249737870','znddfdc5Reo@gmail.com','0327184891',1,'2021-08-05 06:39:43','2021-08-05 06:39:43'),
(2,'eeisf','EtGGq5HE5g','4903059501','znddfdc5Reo@gmail.com','2845915973',1,'2021-08-06 02:45:54','2021-08-06 02:45:54');

/*Table structure for table `drug_advices` */

DROP TABLE IF EXISTS `drug_advices`;

CREATE TABLE `drug_advices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `drug_advice` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `drug_advices` */

/*Table structure for table `drug_doses` */

DROP TABLE IF EXISTS `drug_doses`;

CREATE TABLE `drug_doses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dose` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `drug_doses` */

/*Table structure for table `drug_durations` */

DROP TABLE IF EXISTS `drug_durations`;

CREATE TABLE `drug_durations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `drug_durations` */

/*Table structure for table `drug_strengths` */

DROP TABLE IF EXISTS `drug_strengths`;

CREATE TABLE `drug_strengths` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strength` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `drug_strengths` */

/*Table structure for table `drug_types` */

DROP TABLE IF EXISTS `drug_types`;

CREATE TABLE `drug_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `drug_types` */

/*Table structure for table `drugs` */

DROP TABLE IF EXISTS `drugs`;

CREATE TABLE `drugs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `generic_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `drugs` */

insert  into `drugs`(`id`,`name`,`generic_name`,`note`,`status`,`user_id`,`created_at`,`updated_at`) values 
(1,'test drug','test generic','short note',1,1,'2021-07-29 05:55:28','2021-07-29 05:55:28'),
(2,'zc','vczx','das',1,1,'2021-07-29 08:39:21','2021-07-29 08:39:21'),
(3,'yte','9LcrHeslNZ','b9BXwJUBIl',1,1,'2021-08-04 02:38:35','2021-08-04 02:38:35'),
(4,'ytefsdf','VcseOZDzn3','FTE97BggGK',1,1,'2021-08-04 10:25:30','2021-08-04 10:25:30'),
(5,'ytefsdffdsf','cvgo3uLbkE',NULL,1,1,'2021-08-05 04:16:47','2021-08-05 04:16:47'),
(6,'ytefsdffdsffds','4YaGWEsgcO',NULL,1,1,'2021-08-05 04:21:32','2021-08-05 04:21:32'),
(7,'ee','7DtxYR3iEo',NULL,1,1,'2021-08-05 04:29:27','2021-08-05 04:29:27'),
(8,'eei','M9DBYnfr0r',NULL,1,1,'2021-08-05 04:54:18','2021-08-05 04:54:18'),
(9,'eeis','aNLEjkpzGi',NULL,1,1,'2021-08-05 04:55:42','2021-08-05 04:55:42'),
(10,'eeisf','Om7My7sk0Z',NULL,1,1,'2021-08-05 06:58:41','2021-08-05 06:58:41');

/*Table structure for table `fee_details` */

DROP TABLE IF EXISTS `fee_details`;

CREATE TABLE `fee_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fee_id` int(11) NOT NULL,
  `fee` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `fee_details` */

/*Table structure for table `fees` */

DROP TABLE IF EXISTS `fees`;

CREATE TABLE `fees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` double NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `fees` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2017_10_01_121933_create_drug_types_table',1),
(4,'2017_10_01_121955_create_drug_strengths_table',1),
(5,'2017_10_01_122008_create_drugs_table',1),
(6,'2017_10_01_122039_create_patients_table',1),
(7,'2017_10_01_122207_create_prescription_templates_table',1),
(8,'2017_10_01_122257_create_prescription_template_drugs_table',1),
(9,'2017_10_01_123254_create_prescription_template_lefts_table',1),
(10,'2017_10_01_123309_create_prescriptions_table',1),
(11,'2017_10_01_123315_create_prescription_drugs_table',1),
(12,'2017_10_01_123323_create_prescription_lefts_table',1),
(13,'2017_10_01_123407_create_advices_table',1),
(14,'2017_10_01_123533_create_patient_documents_table',1),
(15,'2017_10_01_123708_create_appointments_table',1),
(16,'2017_10_01_123801_create_fees_table',1),
(17,'2017_10_01_131228_create_appointment_date_times_table',1),
(18,'2017_10_01_131558_create_fee_details_table',1),
(19,'2017_10_10_143448_create_patient_appointments_table',1),
(20,'2017_10_10_230447_create_patient_payments_table',1),
(21,'2017_10_13_020835_create_drug_doses_table',1),
(22,'2017_10_13_021029_create_drug_durations_table',1),
(23,'2017_10_13_021041_create_drug_advices_table',1),
(24,'2017_10_17_135311_create_abouts_table',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `patient_appointments` */

DROP TABLE IF EXISTS `patient_appointments`;

CREATE TABLE `patient_appointments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `patient_appointments` */

insert  into `patient_appointments`(`id`,`patient_id`,`date`,`time`,`note`,`status`,`user_id`,`created_at`,`updated_at`) values 
(1,5,'2021-08-12','14:37:00','g2Lzu8qOsZ',0,1,'2021-08-07 04:47:15','2021-08-07 04:47:15'),
(2,1,'2021-08-12','14:37:00','n1ls7VXMiA',0,1,'2021-08-07 05:08:30','2021-08-07 05:08:30'),
(3,4,'2021-08-09','14:37:00','yp8I3mKVzf',0,1,'2021-08-09 01:12:10','2021-08-09 01:12:10'),
(4,18,'2021-08-09','10:12:00','code at 10 pm',0,1,'2021-08-09 01:12:45','2021-08-09 01:12:45');

/*Table structure for table `patient_documents` */

DROP TABLE IF EXISTS `patient_documents`;

CREATE TABLE `patient_documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `prescription_id` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `patient_documents` */

insert  into `patient_documents`(`id`,`patient_id`,`prescription_id`,`type`,`path`,`user_id`,`created_at`,`updated_at`) values 
(1,1,0,1,'uploads/medical_files\\854329.png',1,'2021-07-29 04:53:40','2021-07-29 04:53:40');

/*Table structure for table `patient_payments` */

DROP TABLE IF EXISTS `patient_payments`;

CREATE TABLE `patient_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `patient_appointment_id` int(11) DEFAULT NULL,
  `payment` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `patient_payments` */

/*Table structure for table `patients` */

DROP TABLE IF EXISTS `patients`;

CREATE TABLE `patients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` int(11) NOT NULL,
  `age` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `patient_unique_id` int(11) NOT NULL,
  `primary_investigation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `patients` */

insert  into `patients`(`id`,`name`,`gender`,`age`,`image`,`email`,`address`,`phone`,`status`,`user_id`,`created_at`,`updated_at`,`patient_unique_id`,`primary_investigation`) values 
(1,'fkljklj',1,'25','uploads/patient\\287431.png','alamain@yopmail.com','kf;lsa;','01932123456',1,1,'2021-07-29 04:51:06','2021-07-29 04:51:06',0,NULL),
(3,'P9MHzRJflO',1,'20',NULL,'6fzhix335y','5vrxXxScMT','4783963192',1,2,'2021-08-01 04:26:19','2021-08-01 04:26:19',0,NULL),
(4,'alamin',1,'20',NULL,'znddfc5Reo@gmail.com','qH974ux5lX','3787758215',1,1,'2021-08-02 14:18:00','2021-08-02 14:18:00',0,NULL),
(5,'asif',1,'20',NULL,'znddfc5Reo@gmail.com','GHVjDUwGbF','7116275381',1,1,'2021-08-02 14:18:16','2021-08-02 14:18:16',20210001,NULL),
(6,'maria',1,'20',NULL,'znddfc5Reo@gmail.com','niPs9bc7fa','0321443571',1,1,'2021-08-02 14:18:28','2021-08-02 14:18:28',20210002,NULL),
(14,'yte',1,'20',NULL,'znddfc5Reo@gmail.com','yZsV646DJ6','4536879552',1,1,'2021-08-03 02:35:23','2021-08-04 03:12:55',20210003,'hedfs'),
(7,'maria',1,'20',NULL,'znddfc5Reo@gmail.com','ttWFQKAaqM','3068729257',1,1,'2021-08-03 01:05:56','2021-08-03 01:05:56',20210004,NULL),
(8,'mariax',1,'20',NULL,'znddfc5Reo@gmail.com','LYzxA7OMNS','6711220859',1,1,'2021-08-03 01:06:49','2021-08-03 01:06:49',20210005,NULL),
(9,'mariaxss',1,'20',NULL,'znddfc5Reo@gmail.com','DvpS5QBd7l','6130040503',1,1,'2021-08-03 01:37:08','2021-08-03 01:37:08',20210006,NULL),
(10,'rrr',1,'20',NULL,'znddfc5Reo@gmail.com','rVe0SsRYd7','7707817920',1,1,'2021-08-03 01:37:17','2021-08-03 01:37:17',20210007,NULL),
(11,'rrr111',1,'20',NULL,'znddfc5Reo@gmail.com','hzKcnbCfJC','1225102960',1,1,'2021-08-03 01:37:29','2021-08-03 01:37:29',20210008,NULL),
(12,'rew',1,'20',NULL,'znddfc5Reo@gmail.com','e1qI8uswdH','9272076999',1,1,'2021-08-03 01:37:38','2021-08-03 01:37:38',20210009,NULL),
(13,'yte',1,'20',NULL,'znddfc5Reo@gmail.com','ETl6mL5gJF','7610928762',1,1,'2021-08-03 01:37:46','2021-08-03 01:37:46',20210011,NULL),
(15,'yte',1,'20',NULL,'znddfc5Reo@gmail.com','UWaNlLjTmY','9264697520',1,1,'2021-08-03 02:41:26','2021-08-07 03:54:32',20210012,'there is no'),
(16,'yte',1,'20',NULL,'znddfc5Reo@gmail.com','QOiWoPxMof','2206456560',1,1,'2021-08-04 10:19:04','2021-08-04 10:19:04',20210013,NULL),
(17,'yte',1,'20',NULL,'znddfdc5Reo@gmail.com','QOiWoPxMof','2206456560',1,1,'2021-08-04 10:19:24','2021-08-07 03:54:59',20210014,'BP– 160/80 ,Weight– 25kg,Blood Sugar–'),
(18,'ytefsdf',1,'20',NULL,'znddfdc5Reo@gmail.com','vxMuqj4xrR','5111868697',1,1,'2021-08-05 03:39:53','2021-08-06 13:52:43',20210015,'kljkl');

/*Table structure for table `prescription_drugs` */

DROP TABLE IF EXISTS `prescription_drugs`;

CREATE TABLE `prescription_drugs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prescription_id` int(11) NOT NULL,
  `drug` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dose` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `strength` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `prescription_drugs` */

insert  into `prescription_drugs`(`id`,`prescription_id`,`drug`,`type`,`dose`,`duration`,`strength`,`advice`,`created_at`,`updated_at`) values 
(1,1,'3','type','k6yb4UwOio','Nr6zvlF19L','stength','FZCl0R4plC','2021-08-05 04:21:43','2021-08-05 04:21:43'),
(2,2,'1',NULL,'1',NULL,NULL,NULL,'2021-08-05 04:47:27','2021-08-05 04:47:27');

/*Table structure for table `prescription_lefts` */

DROP TABLE IF EXISTS `prescription_lefts`;

CREATE TABLE `prescription_lefts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prescription_id` int(11) NOT NULL,
  `cc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pd` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dd` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lab_workup` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advice` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `prescription_lefts` */

insert  into `prescription_lefts`(`id`,`prescription_id`,`cc`,`oe`,`pd`,`dd`,`lab_workup`,`advice`,`created_at`,`updated_at`) values 
(1,1,'d8otAqo03Z','D9gb7zXSQD','kNg0xhLvMT','i8xGDUY7rt','clug8rJPOM','GhrCC91gWg','2021-08-05 04:21:43','2021-08-05 04:21:43'),
(2,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-08-05 04:47:27','2021-08-05 04:47:27'),
(3,3,'tmFjByppdxafsd','MKhhqH7Jyh','S1rupU3L7S','IpW3iOOYDs','hzdoj6MGaI','XnfRclyTEq','2021-08-05 06:55:37','2021-08-05 06:55:37'),
(4,4,'tmFjByppdxafsd','MKhhqH7Jyh','S1rupU3L7S','IpW3iOOYDs','hzdoj6MGaI','XnfRclyTEq','2021-08-05 06:55:47','2021-08-05 06:55:47'),
(5,5,'tmFjByppdxafsd','xZuOwYtXuF','y3wtO0LWCL','H8zi4rFOT0','K0GmNxs9en','Mizm4imrwc','2021-08-07 05:08:47','2021-08-07 05:08:47');

/*Table structure for table `prescription_template_drugs` */

DROP TABLE IF EXISTS `prescription_template_drugs`;

CREATE TABLE `prescription_template_drugs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prescription_template_id` int(11) NOT NULL,
  `drug` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dose` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `strength` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `prescription_template_drugs` */

insert  into `prescription_template_drugs`(`id`,`prescription_template_id`,`drug`,`type`,`dose`,`duration`,`strength`,`advice`,`created_at`,`updated_at`) values 
(1,1,'test drug','type','oimGqBA4Jr','6IgG3hN03o','stength','bQkOyyDf3z','2021-08-05 04:24:36','2021-08-05 04:24:36'),
(2,11,'medicine namekl',NULL,'gMrddaUTyj','JtjMjvNRHt',NULL,'QD8qaKUwDt','2021-08-05 08:19:56','2021-08-05 08:19:56'),
(3,12,'medicine namekl',NULL,'yeAbHBdc0L','5FOF7Rki3j',NULL,'ad','2021-08-07 01:25:35','2021-08-07 01:25:35'),
(4,13,'medicine namekl',NULL,'tF5KC2Q2vH','POKGggCt1R',NULL,'ad','2021-08-07 05:08:56','2021-08-07 05:08:56');

/*Table structure for table `prescription_template_lefts` */

DROP TABLE IF EXISTS `prescription_template_lefts`;

CREATE TABLE `prescription_template_lefts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prescription_template_id` int(11) NOT NULL,
  `cc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pd` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dd` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lab_workup` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advice` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `prescription_template_lefts` */

insert  into `prescription_template_lefts`(`id`,`prescription_template_id`,`cc`,`oe`,`pd`,`dd`,`lab_workup`,`advice`,`created_at`,`updated_at`) values 
(1,1,'eLoFTvNcWh','lDTqI1KHkZ','epnjASK7Po','fWX2KNv3xP','a5ZwRBFnTp','sOHMXi6nZF','2021-08-05 04:24:36','2021-08-05 04:24:36'),
(2,2,'tmFjByppdxafsd','jzeobZv9Tp','aQLKJB01hH','bLfzTeIJZd','82QC36HBDf','y4qmqKWtuN','2021-08-05 07:03:09','2021-08-05 07:03:09'),
(3,3,'tmFjByppdxafsd','jzeobZv9Tp','aQLKJB01hH','bLfzTeIJZd','82QC36HBDf','y4qmqKWtuN','2021-08-05 07:03:17','2021-08-05 07:03:17'),
(4,4,'tmFjByppdxafsd','uXwcsOKHlQ','PYseJQ1noG','nsaskdmqkb','GcvRHlukFM','NmH6pdYzZT','2021-08-05 08:00:35','2021-08-05 08:00:35'),
(5,5,'tmFjByppdxafsd','uXwcsOKHlQ','PYseJQ1noG','nsaskdmqkb','GcvRHlukFM','NmH6pdYzZT','2021-08-05 08:00:43','2021-08-05 08:00:43'),
(6,6,'tmFjByppdxafsd','guWtusAMHM','tD9NwHTzDX','wo89c0w2b5','KLC3NMTfIk','qqm3kZaOxy','2021-08-05 08:09:26','2021-08-05 08:09:26'),
(7,7,'tmFjByppdxafsd','9mrNXqlaOa','tfeDJ82Q5h','eAyQuciUwW','188yAfQnVw','IpJvH92TZ9','2021-08-05 08:11:24','2021-08-05 08:11:24'),
(8,8,'tmFjByppdxafsd','Lb7hPYh2Kt','NrxIT3CXAb','cDzZyFIrcv','RBkc0XmcEP','ntLMkW2gGm','2021-08-05 08:12:45','2021-08-05 08:12:45'),
(9,9,'tmFjByppdxafsd','Lb7hPYh2Kt','NrxIT3CXAb','cDzZyFIrcv','RBkc0XmcEP','ntLMkW2gGm','2021-08-05 08:13:54','2021-08-05 08:13:54'),
(10,10,'tmFjByppdxafsd','YHUsybyMWK','mTll90yYwx','vinneBF8G1','l7famrVxMU','jJW70k8Mrg','2021-08-05 08:18:10','2021-08-05 08:18:10'),
(11,11,'tmFjByppdxafsd','YHUsybyMWK','mTll90yYwx','vinneBF8G1','l7famrVxMU','jJW70k8Mrg','2021-08-05 08:19:56','2021-08-05 08:19:56'),
(12,12,'tmFjByppdxafsd','RXGkIHgU22','RwfPrR0SRJ','HqNcRcStsY','xlJ57Ny0Ne','fNf79cuUVX','2021-08-07 01:25:35','2021-08-07 01:25:35'),
(13,13,'tmFjByppdxafsd','xZuOwYtXuF','y3wtO0LWCL','H8zi4rFOT0','K0GmNxs9en','Mizm4imrwc','2021-08-07 05:08:56','2021-08-07 05:08:56');

/*Table structure for table `prescription_templates` */

DROP TABLE IF EXISTS `prescription_templates`;

CREATE TABLE `prescription_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advice` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `prescription_templates` */

insert  into `prescription_templates`(`id`,`name`,`status`,`user_id`,`note`,`advice`,`created_at`,`updated_at`) values 
(1,'MeKXT1PSGh',1,1,'Fp9YjVeOOr','sOHMXi6nZF','2021-08-05 04:24:36','2021-08-05 04:24:36'),
(2,'OM5phWVjaG',1,1,'W96ELareHD','y4qmqKWtuN','2021-08-05 07:03:09','2021-08-05 07:03:09'),
(3,'OM5phWVjaG',1,1,'W96ELareHD','y4qmqKWtuN','2021-08-05 07:03:17','2021-08-05 07:03:17'),
(4,'Prescription Template31628150435',1,1,NULL,'NmH6pdYzZT','2021-08-05 08:00:35','2021-08-05 08:00:35'),
(5,'Prescription Template41628150443',1,1,NULL,'NmH6pdYzZT','2021-08-05 08:00:43','2021-08-05 08:00:43'),
(6,'Prescription Template51628150966',1,1,NULL,'qqm3kZaOxy','2021-08-05 08:09:26','2021-08-05 08:09:26'),
(7,'Prescription Template61628151084',1,1,NULL,'IpJvH92TZ9','2021-08-05 08:11:24','2021-08-05 08:11:24'),
(8,'Prescription Template71628151165',1,1,NULL,'ntLMkW2gGm','2021-08-05 08:12:45','2021-08-05 08:12:45'),
(9,'Prescription Template81628151234',1,1,NULL,'ntLMkW2gGm','2021-08-05 08:13:54','2021-08-05 08:13:54'),
(10,'Prescription Template91628151490',1,1,NULL,'jJW70k8Mrg','2021-08-05 08:18:10','2021-08-05 08:18:10'),
(11,'Prescription Template101628151596',1,1,NULL,'jJW70k8Mrg','2021-08-05 08:19:56','2021-08-05 08:19:56'),
(12,'Prescription Template111628299535',1,1,NULL,'fNf79cuUVX','2021-08-07 01:25:35','2021-08-07 01:25:35'),
(13,'Prescription Template121628312936',1,1,NULL,'Mizm4imrwc','2021-08-07 05:08:56','2021-08-07 05:08:56');

/*Table structure for table `prescriptions` */

DROP TABLE IF EXISTS `prescriptions`;

CREATE TABLE `prescriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `prescription_template_id` int(11) DEFAULT NULL,
  `prescription_date` date NOT NULL,
  `next_visit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `prescriptions` */

insert  into `prescriptions`(`id`,`patient_id`,`prescription_template_id`,`prescription_date`,`next_visit`,`comment`,`user_id`,`created_at`,`updated_at`) values 
(1,5,NULL,'2021-08-05','M5CsF2isD5',NULL,1,'2021-08-05 04:21:43','2021-08-05 04:21:43'),
(2,5,NULL,'2021-08-05',NULL,NULL,1,'2021-08-05 04:47:27','2021-08-05 04:47:27'),
(3,5,NULL,'2021-08-05','3d5aDDoQ0F',NULL,1,'2021-08-05 06:55:37','2021-08-05 06:55:37'),
(4,5,NULL,'2021-08-05','3d5aDDoQ0F',NULL,1,'2021-08-05 06:55:47','2021-08-05 06:55:47'),
(5,1,NULL,'2021-08-07','JQwVGLAB99',NULL,1,'2021-08-07 05:08:47','2021-08-07 05:08:47');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`image`,`info`,`phone`,`address`,`role`,`status`,`remember_token`,`created_at`,`updated_at`) values 
(1,'MD. AL-AMIN','alamin@yopmail.com','$2y$10$eOXDNeGs00XJlDIp.ZR.Z.4JXePPpSE07CNjCMAXCD3jZcKO4UQTu','uploads/assistant\\661484.jpeg','no','01738882323','no',1,1,'ogvX2ONxtt7lsuC1LjZxwymTdr83YdzEeJn9KjYZgtRrRquoQYFqCYvQ4Ikt','2021-07-29 04:50:23','2021-07-29 04:58:08'),
(2,'fkljklj','assistant@yopmail.com','$2y$10$LosrsnIzBCHOcO8rI1zeQu6PMBydUO6MoAA9tzVQc9Y7sJO1LqLdO',NULL,NULL,'01323456786','fsz',2,1,'FlfB3ALgCtuYljtTszN1EO4Fby9eqm1Cc3MFuhUcx3AIjeeJf8dzZ9LA03Am','2021-07-29 05:02:29','2021-07-29 05:02:29');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
