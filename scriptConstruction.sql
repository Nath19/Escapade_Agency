-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema pfr
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema pfr
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pfr` DEFAULT CHARACTER SET utf8 ;
USE `pfr` ;

-- -----------------------------------------------------
-- Table `pfr`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pfr`.`Client` (
  `idClient` INT NOT NULL AUTO_INCREMENT,
  `Nom` VARCHAR(45) NOT NULL,
  `Prenom` VARCHAR(45) NOT NULL,
  `Adresse` VARCHAR(45) NOT NULL,
  `NoTel` INT NOT NULL,
  `Mail` VARCHAR(45) NOT NULL,
  `Notes` INT NOT NULL,
  `Appreciation` VARCHAR(45) NOT NULL,
  `DateDebutLocationVoiture` DATETIME NOT NULL,
  `DateFinLocationVoiture` DATETIME NOT NULL,
  PRIMARY KEY (`idClient`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pfr`.`Agence`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pfr`.`Agence` (
  `NomA` VARCHAR(45) NOT NULL,
  `AdresseA` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`NomA`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pfr`.`Sejour`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pfr`.`Sejour` (
  `idSejour` INT NOT NULL AUTO_INCREMENT,
  `Theme` VARCHAR(45) NOT NULL,
  `DateSejour` DATE NOT NULL,
  `Arrondissement` INT NOT NULL,
  `NumeroSemaine` INT NOT NULL,
  `Agence_NomA` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSejour`, `Agence_NomA`),
  INDEX `fk_Sejour_Agence1_idx` (`Agence_NomA` ASC),
  CONSTRAINT `fk_Sejour_Agence1`
    FOREIGN KEY (`Agence_NomA`)
    REFERENCES `pfr`.`Agence` (`NomA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pfr`.`Reserve`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pfr`.`Reserve` (
  `Client_idClient` INT NOT NULL,
  `Sejour_idSejour` INT NOT NULL,
  PRIMARY KEY (`Client_idClient`, `Sejour_idSejour`),
  INDEX `fk_Reserve_Sejour1_idx` (`Sejour_idSejour` ASC),
  CONSTRAINT `fk_Reserve_Client`
    FOREIGN KEY (`Client_idClient`)
    REFERENCES `pfr`.`Client` (`idClient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reserve_Sejour1`
    FOREIGN KEY (`Sejour_idSejour`)
    REFERENCES `pfr`.`Sejour` (`idSejour`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pfr`.`Parking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pfr`.`Parking` (
  `NomP` VARCHAR(45) NOT NULL,
  `Ville` VARCHAR(45) NOT NULL,
  `Adresse` VARCHAR(45) NOT NULL,
  `Arrrondissement` INT NOT NULL,
  `Agence_NomA` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`NomP`, `Agence_NomA`),
  INDEX `fk_Parking_Agence1_idx` (`Agence_NomA` ASC),
  CONSTRAINT `fk_Parking_Agence1`
    FOREIGN KEY (`Agence_NomA`)
    REFERENCES `pfr`.`Agence` (`NomA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pfr`.`Controleur`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pfr`.`Controleur` (
  `idControleur` INT NOT NULL,
  `Agence_NomA` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idControleur`, `Agence_NomA`),
  INDEX `fk_Controleur_Agence1_idx` (`Agence_NomA` ASC),
  CONSTRAINT `fk_Controleur_Agence1`
    FOREIGN KEY (`Agence_NomA`)
    REFERENCES `pfr`.`Agence` (`NomA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pfr`.`Voiture`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pfr`.`Voiture` (
  `NoImmat` VARCHAR(45) NOT NULL,
  `Marque` VARCHAR(45) NOT NULL,
  `Modele` VARCHAR(45) NOT NULL,
  `Categorie` VARCHAR(45) NOT NULL,
  `NombrePlace` INT NOT NULL,
  `Disponible` VARCHAR(45) NOT NULL,
  `NumeroPlace` VARCHAR(45) NOT NULL,
  `Motif` VARCHAR(45) NOT NULL,
  `Parking_NomP` VARCHAR(45) NOT NULL,
  `Controleur_idControleur` INT NOT NULL,
  PRIMARY KEY (`NoImmat`, `Parking_NomP`, `Controleur_idControleur`),
  INDEX `fk_Voiture_Parking1_idx` (`Parking_NomP` ASC),
  INDEX `fk_Voiture_Controleur1_idx` (`Controleur_idControleur` ASC),
  CONSTRAINT `fk_Voiture_Parking1`
    FOREIGN KEY (`Parking_NomP`)
    REFERENCES `pfr`.`Parking` (`NomP`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Voiture_Controleur1`
    FOREIGN KEY (`Controleur_idControleur`)
    REFERENCES `pfr`.`Controleur` (`idControleur`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pfr`.`MetADisposition`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pfr`.`MetADisposition` (
  `Sejour_idSejour` INT NOT NULL,
  `Voiture_NoImmat` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Sejour_idSejour`, `Voiture_NoImmat`),
  INDEX `fk_MetADisposition_Voiture1_idx` (`Voiture_NoImmat` ASC),
  CONSTRAINT `fk_MetADisposition_Sejour1`
    FOREIGN KEY (`Sejour_idSejour`)
    REFERENCES `pfr`.`Sejour` (`idSejour`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_MetADisposition_Voiture1`
    FOREIGN KEY (`Voiture_NoImmat`)
    REFERENCES `pfr`.`Voiture` (`NoImmat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pfr`.`Logement`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pfr`.`Logement` (
  `idLogement` INT NOT NULL AUTO_INCREMENT,
  `Ville` VARCHAR(45) NOT NULL,
  `Arrondissement` INT NOT NULL,
  `Disponible` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idLogement`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pfr`.`DonneAcceA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pfr`.`DonneAcceA` (
  `Sejour_idSejour` INT NOT NULL,
  `Logement_idLogement` INT NOT NULL,
  PRIMARY KEY (`Sejour_idSejour`, `Logement_idLogement`),
  INDEX `fk_DonneAcceA_Logement1_idx` (`Logement_idLogement` ASC),
  CONSTRAINT `fk_DonneAcceA_Sejour1`
    FOREIGN KEY (`Sejour_idSejour`)
    REFERENCES `pfr`.`Sejour` (`idSejour`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_DonneAcceA_Logement1`
    FOREIGN KEY (`Logement_idLogement`)
    REFERENCES `pfr`.`Logement` (`idLogement`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
