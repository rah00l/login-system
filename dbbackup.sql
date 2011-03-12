/*
SQLyog Enterprise - MySQL GUI v6.13
MySQL - 5.1.53-community : Database - authologic_development
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `authologic_development`;

USE `authologic_development`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `schema_migrations` */

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `schema_migrations` */

insert  into `schema_migrations`(`version`) values ('20081103171327'),('20081106072031'),('20110302173829');

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) NOT NULL,
  `data` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sessions_on_session_id` (`session_id`),
  KEY `index_sessions_on_updated_at` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `sessions` */

insert  into `sessions`(`id`,`session_id`,`data`,`created_at`,`updated_at`) values (1,'f2ace211c28f59cf9e68d5f229713a5c','BAh7BiIKZmxhc2hJQzonQWN0aW9uQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNo\nSGFzaHsGOgtub3RpY2UiW0luc3RydWN0aW9ucyB0byByZXNldCB5b3VyIHBh\nc3N3b3JkIGhhdmUgYmVlbiBlbWFpbGVkIHRvIHlvdS4gUGxlYXNlIGNoZWNr\nIHlvdXIgZW1haWwuBjoKQHVzZWR7BjsGVA==\n','2011-03-02 17:36:31','2011-03-02 18:18:25');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `login` varchar(255) NOT NULL,
  `crypted_password` varchar(255) NOT NULL,
  `password_salt` varchar(255) NOT NULL,
  `persistence_token` varchar(255) NOT NULL,
  `login_count` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `current_login_at` datetime DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `current_login_ip` varchar(255) DEFAULT NULL,
  `perishable_token` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `index_users_on_login` (`login`),
  KEY `index_users_on_persistence_token` (`persistence_token`),
  KEY `index_users_on_last_request_at` (`last_request_at`),
  KEY `index_users_on_perishable_token` (`perishable_token`),
  KEY `index_users_on_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`created_at`,`updated_at`,`login`,`crypted_password`,`password_salt`,`persistence_token`,`login_count`,`last_request_at`,`last_login_at`,`current_login_at`,`last_login_ip`,`current_login_ip`,`perishable_token`,`email`) values (1,'2011-03-02 17:37:19','2011-03-02 18:18:10','rah00l','c0213b750a850e8a32eeb5db9cfe3e34c1a0ddc88a2baad79ca720d9bad3724d1ba2a4bfe2baff8b3917a99dd49c9e9153b7b49b203b37ebdde94bf22a036d4b','LNx93bbdrF4NrkO2Vb0b','439605a18dc40feee5bc713b07d706f8de3f6cb8d71bf9a447a060698b92bf7e095683a7f10fe3f85137ae2abbc6e374cef055e7d7e8736d223a038bdf104add',2,'2011-03-02 18:06:28','2011-03-02 17:37:19','2011-03-02 18:03:47','127.0.0.1','127.0.0.1','znVQXoVbcwsFJTmHrO14','rahulpatil2387@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
