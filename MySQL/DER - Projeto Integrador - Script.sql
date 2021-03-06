-- MySQL Script generated by MySQL Workbench
-- Wed Feb 16 16:28:56 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema projeto_integrador
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema projeto_integrador
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `projeto_integrador` DEFAULT CHARACTER SET utf8 ;
USE `projeto_integrador` ;

-- -----------------------------------------------------
-- Table `projeto_integrador`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projeto_integrador`.`tb_categoria` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `area_de_estudo` VARCHAR(255) NOT NULL,
  `materia` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `projeto_integrador`.`tb_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projeto_integrador`.`tb_usuario` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `Usuario` VARCHAR(255) NOT NULL,
  `Senha` VARCHAR(255) NOT NULL,
  `Perfil_Usuario` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `projeto_integrador`.`tb_produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projeto_integrador`.`tb_produtos` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `produto` VARCHAR(255) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  `agenda_dia_horario` DATETIME NOT NULL,
  `valor` DECIMAL(8,2) NOT NULL,
  `tb_categoria_id` BIGINT NOT NULL,
  `tb_usuario_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tb_produtos_tb_categoria1_idx` (`tb_categoria_id` ASC) VISIBLE,
  INDEX `fk_tb_produtos_tb_usuario1_idx` (`tb_usuario_id` ASC) VISIBLE,
  CONSTRAINT `fk_tb_produtos_tb_categoria1`
    FOREIGN KEY (`tb_categoria_id`)
    REFERENCES `projeto_integrador`.`tb_categoria` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_produtos_tb_usuario1`
    FOREIGN KEY (`tb_usuario_id`)
    REFERENCES `projeto_integrador`.`tb_usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
