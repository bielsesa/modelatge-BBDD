DROP SCHEMA IF EXISTS culampolla;
CREATE SCHEMA culampolla;

CREATE TABLE IF NOT EXISTS `culampolla`.`Supplier` (
  `NIF` CHAR(9) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone` INT NOT NULL,
  `fax` INT NOT NULL,
  `addrStreet` VARCHAR(100) NOT NULL,
  `addrNumber` INT NOT NULL,
  `addrFloorNum` INT NOT NULL,
  `addrDoorNum` INT NOT NULL,
  `addrCity` VARCHAR(75) NOT NULL,
  `addrZipCode` INT NOT NULL,
  `addrCountry` VARCHAR(75) NOT NULL,
  PRIMARY KEY (`NIF`),
  UNIQUE INDEX `NIF_UNIQUE` (`NIF` ASC) VISIBLE)  
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `culampolla`.`Employee` (
  `idEmployee` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`idEmployee`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `culampolla`.`Client` (
  `DNI` CHAR(9) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `address` VARCHAR(245) NOT NULL,
  `phone` INT NOT NULL,
  `email` VARCHAR(75) NOT NULL,
  `registrationDate` DATE NOT NULL,
  `Client_DNI` CHAR(9) NULL,
  PRIMARY KEY (`DNI`),
  UNIQUE INDEX `DNI_UNIQUE` (`DNI` ASC) VISIBLE,
  INDEX `fk_Client_Client1_idx` (`Client_DNI` ASC) VISIBLE,
  CONSTRAINT `fk_Client_Client1`
    FOREIGN KEY (`Client_DNI`)
    REFERENCES `culampolla`.`Client` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `culampolla`.`Glasses` (
  `idGlasses` INT NOT NULL,
  `brand` VARCHAR(75) NOT NULL,
  `prescription` DOUBLE NOT NULL,
  `frameType` ENUM('floating', 'plastic', 'metallic') NOT NULL,
  `frameColor` VARCHAR(45) NOT NULL,
  `glassColor` VARCHAR(45) NOT NULL,
  `price` DOUBLE NOT NULL,
  `Supplier_NIF` CHAR(9) NOT NULL,
  `Employee_idEmployee` INT NULL,
  `Client_DNI` CHAR(9) NULL,
  PRIMARY KEY (`idGlasses`),
  INDEX `fk_Glasses_Supplier1_idx` (`Supplier_NIF` ASC) VISIBLE,
  INDEX `fk_Glasses_Employee1_idx` (`Employee_idEmployee` ASC) VISIBLE,
  INDEX `fk_Glasses_Client1_idx` (`Client_DNI` ASC) VISIBLE,
  CONSTRAINT `fk_Glasses_Supplier1`
    FOREIGN KEY (`Supplier_NIF`)
    REFERENCES `culampolla`.`Supplier` (`NIF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Glasses_Employee1`
    FOREIGN KEY (`Employee_idEmployee`)
    REFERENCES `culampolla`.`Employee` (`idEmployee`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Glasses_Client1`
    FOREIGN KEY (`Client_DNI`)
    REFERENCES `culampolla`.`Client` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;