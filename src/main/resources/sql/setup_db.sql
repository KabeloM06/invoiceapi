-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema invoiceapp
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema invoiceapp
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `invoiceapp` DEFAULT CHARACTER SET utf8 ;
USE `invoiceapp` ;

-- -----------------------------------------------------
-- Table `invoiceapp`.`Users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `invoiceapp`.`Users` (
  `id` BIGINT(50) NOT NULL,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(20) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `invoiceapp`.`Roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `invoiceapp`.`Roles` (
  `id` BIGINT(50) NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `permissions` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `invoiceapp`.`UserRoles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `invoiceapp`.`UserRoles` (
  `id` BIGINT(50) NOT NULL,
  `user_id` BIGINT(50) NOT NULL,
  `role_id` BIGINT(50) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_UserRoles_Users_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_UserRoles_Roles1_idx` (`role_id` ASC) VISIBLE,
  CONSTRAINT `fk_UserRoles_Users`
    FOREIGN KEY (`user_id`)
    REFERENCES `invoiceapp`.`Users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_UserRoles_Roles1`
    FOREIGN KEY (`role_id`)
    REFERENCES `invoiceapp`.`Roles` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
