-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: SFCS
-- Source Schemata: SFCS
-- Created: Wed Jul  1 09:48:12 2020
-- Workbench Version: 8.0.20
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------------------------------------------------------
-- Schema SFCS
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `SFCS` ;
CREATE SCHEMA IF NOT EXISTS `SFCS` ;

-- ----------------------------------------------------------------------------
-- Table SFCS.User
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `SFCS`.`User` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(50) NULL,
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(36) NOT NULL,
  `avatar` VARCHAR(50) NULL,
  `role_id` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `UQ__User__F3DBC5720E56BA47` (`username` ASC) VISIBLE);

-- ----------------------------------------------------------------------------
-- Table SFCS.Category
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `SFCS`.`Category` (
  `cate_id` INT NOT NULL AUTO_INCREMENT,
  `cate_name` VARCHAR(255) CHARACTER SET 'utf8mb4' NOT NULL,
  PRIMARY KEY (`cate_id`));

-- ----------------------------------------------------------------------------
-- Table SFCS.Product
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `SFCS`.`Product` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) CHARACTER SET 'utf8mb4' NOT NULL,
  `price` DOUBLE NULL,
  `cate_id` INT NOT NULL,
  `des` VARCHAR(2000) NULL,
  `image` VARCHAR(50) NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK__Product__cate_id__15502E78`
    FOREIGN KEY (`cate_id`)
    REFERENCES `SFCS`.`Category` (`cate_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table SFCS.Cart
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `SFCS`.`Cart` (
  `id` VARCHAR(50) NOT NULL,
  `u_id` INT NOT NULL,
  `buyDate` DATE NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK__Cart__u_id__182C9B23`
    FOREIGN KEY (`u_id`)
    REFERENCES `SFCS`.`User` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table SFCS.CartItem
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `SFCS`.`CartItem` (
  `id` VARCHAR(50) NOT NULL,
  `quantity` INT NULL,
  `unitPrice` DOUBLE NULL,
  `pro_id` INT NOT NULL,
  `cat_id` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK__CartItem__pro_id__1B0907CE`
    FOREIGN KEY (`pro_id`)
    REFERENCES `SFCS`.`Product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK__CartItem__cat_id__1BFD2C07`
    FOREIGN KEY (`cat_id`)
    REFERENCES `SFCS`.`Cart` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- ----------------------------------------------------------------------------
-- Table SFCS.sysdiagrams
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `SFCS`.`sysdiagrams` (
  `name` VARCHAR(160) NOT NULL,
  `principal_id` INT NOT NULL,
  `diagram_id` INT NOT NULL,
  `version` INT NULL,
  `definition` LONGBLOB NULL,
  PRIMARY KEY (`diagram_id`),
  UNIQUE INDEX `UK_principal_name` (`principal_id` ASC, `name` ASC) VISIBLE);
SET FOREIGN_KEY_CHECKS = 1;

USE SFCS;

INSERT INTO User(email, username, password, avatar, role_id) VALUES ("", "admin", "123456", "", "1");
INSERT INTO User(email, username, password, avatar, role_id) VALUES ("abc@gmail.com", "abc", "123456", "", "2");
insert into category(cate_id, cate_name) values ("1", "men");
INSERT INTO Product(name, price, image, cate_id, des) VALUES ("dads", "123", "", "1", "wadad");

SELECT * FROM USER;
