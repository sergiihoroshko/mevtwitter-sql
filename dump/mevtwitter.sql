-- MySQL Script generated by MySQL Workbench
-- Sun Jul 29 14:53:35 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mevtwitter-sql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mevtwitter-sql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mevtwitter-sql` DEFAULT CHARACTER SET utf8 ;
USE `mevtwitter-sql` ;

-- -----------------------------------------------------
-- Table `mevtwitter-sql`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mevtwitter-sql`.`users` (
  `idusers` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `birthday` DATE NOT NULL,
  `bio` VARCHAR(45) NULL,
  `location` VARCHAR(45) NULL,
  `website` VARCHAR(45) NULL,
  `user_create` DATETIME NOT NULL,
  PRIMARY KEY (`idusers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mevtwitter-sql`.`twitter_feed`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mevtwitter-sql`.`twitter_feed` (
  `idtwitter_feed` INT NOT NULL AUTO_INCREMENT,
  `twitt` TEXT(280) NOT NULL,
  `twitt_create` DATETIME NULL,
  `users_idusers` INT NOT NULL,
  PRIMARY KEY (`idtwitter_feed`),
  INDEX `fk_twitter_feed_users_idx` (`users_idusers` ASC),
  CONSTRAINT `fk_twitter_feed_users`
    FOREIGN KEY (`users_idusers`)
    REFERENCES `mevtwitter-sql`.`users` (`idusers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mevtwitter-sql`.`comments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mevtwitter-sql`.`comments` (
  `idcomments` INT NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(280) NOT NULL,
  `comment_create` DATETIME NOT NULL,
  `users_idusers` INT NOT NULL,
  `twitter_feed_idtwitter_feed` INT NOT NULL,
  PRIMARY KEY (`idcomments`),
  INDEX `fk_comments_users1_idx` (`users_idusers` ASC),
  INDEX `fk_comments_twitter_feed1_idx` (`twitter_feed_idtwitter_feed` ASC),
  CONSTRAINT `fk_comments_users1`
    FOREIGN KEY (`users_idusers`)
    REFERENCES `mevtwitter-sql`.`users` (`idusers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comments_twitter_feed1`
    FOREIGN KEY (`twitter_feed_idtwitter_feed`)
    REFERENCES `mevtwitter-sql`.`twitter_feed` (`idtwitter_feed`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mevtwitter-sql`.`follow`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mevtwitter-sql`.`follow` (
  `idfollowed` INT NOT NULL,
  `idfollower` INT NOT NULL,
  INDEX `fk_follow_users1_idx` (`idfollowed` ASC),
  INDEX `fk_follow_users2_idx` (`idfollower` ASC),
  CONSTRAINT `fk_follow_users1`
    FOREIGN KEY (`idfollowed`)
    REFERENCES `mevtwitter-sql`.`users` (`idusers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_follow_users2`
    FOREIGN KEY (`idfollower`)
    REFERENCES `mevtwitter-sql`.`users` (`idusers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
