SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER TABLE `users` 
CHANGE COLUMN `user` `user` VARCHAR(45) NOT NULL ,
CHANGE COLUMN `name` `name` VARCHAR(45) NULL DEFAULT NULL ,
CHANGE COLUMN `email` `email` VARCHAR(45) NULL DEFAULT NULL ,
CHANGE COLUMN `password` `password` VARCHAR(45) NOT NULL ;

ALTER TABLE `videos` 
CHANGE COLUMN `title` `title` VARCHAR(255) NOT NULL ,
CHANGE COLUMN `clean_title` `clean_title` VARCHAR(255) NOT NULL ,
CHANGE COLUMN `description` `description` VARCHAR(255) NULL DEFAULT NULL ,
CHANGE COLUMN `filename` `filename` VARCHAR(255) NOT NULL ,
CHANGE COLUMN `duration` `duration` VARCHAR(15) NOT NULL ;

ALTER TABLE `categories` 
CHANGE COLUMN `name` `name` VARCHAR(45) NOT NULL ,
CHANGE COLUMN `clean_name` `clean_name` VARCHAR(45) NOT NULL ,
CHANGE COLUMN `created` `created` DATETIME NOT NULL DEFAULT now() ,
CHANGE COLUMN `modified` `modified` DATETIME NOT NULL DEFAULT now() ;

ALTER TABLE `configurations` 
CHANGE COLUMN `modified` `modified` DATETIME NOT NULL DEFAULT now() ,
CHANGE COLUMN `created` `created` DATETIME NOT NULL DEFAULT now() ;

UPDATE configurations SET  version = '1.2', modified = now() WHERE id = 1;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
