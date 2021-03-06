-- MySQL Script generated by MySQL Workbench
-- Mon Sep 29 10:54:19 2014
-- Model: New Model    Version: 1.0
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema twitter
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `twitter` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `twitter` ;

-- -----------------------------------------------------
-- Table `twitter`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `twitter`.`users` ;

CREATE TABLE IF NOT EXISTS `twitter`.`users` (
  `id` BIGINT NOT NULL,
  `name` VARCHAR(250) NULL,
  `screen_name` VARCHAR(250) NULL,
  `location` VARCHAR(250) NULL,
  `url` VARCHAR(2083) NULL,
  `description` VARCHAR(250) NULL,
  `protected` TINYINT(1) NULL,
  `verified` TINYINT(1) NULL,
  `followers_count` INT NULL,
  `friends_count` INT NULL,
  `listed_count` INT NULL,
  `favourites_count` INT NULL,
  `statuses_count` INT NULL,
  `utc_offset` VARCHAR(250) NULL,
  `time_zone` VARCHAR(45) NULL,
  `geo_enabled` TINYINT(1) NULL,
  `lang` VARCHAR(45) NULL,
  `is_translator` TINYINT(1) NULL,
  `contributors_enabled` TINYINT(1) NULL,
  `default_profile` TINYINT(1) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `twitter`.`tweets`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `twitter`.`tweets` ;

CREATE TABLE IF NOT EXISTS `twitter`.`tweets` (
  `id` BIGINT NOT NULL,
  `created_at` INT NULL,
  `text` VARCHAR(250) NULL,
  `source` VARCHAR(2083) NULL,
  `truncated` TINYINT(1) NULL,
  `geo` VARCHAR(250) NULL,
  `coordinates` VARCHAR(250) NULL,
  `place` VARCHAR(250) NULL,
  `contributors` VARCHAR(250) NULL,
  `retweet_count` INT NULL COMMENT '	',
  `favorite_count` INT NULL,
  `entities` BLOB NULL,
  `favorited` TINYINT(1) NULL,
  `retweeted` TINYINT(1) NULL,
  `possibly_sensitive` TINYINT(1) NULL,
  `filter_level` VARCHAR(250) NULL,
  `lang` VARCHAR(45) NULL,
  `userId` BIGINT NULL,
  `flag` VARCHAR(250) NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `user`
    FOREIGN KEY (`userId`)
    REFERENCES `twitter`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `user_idx` ON `twitter`.`tweets` (`userId` ASC);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
