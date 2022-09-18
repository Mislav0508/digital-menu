CREATE TABLE `digitalmenu`.`user` (
  `IDUser2` INT NOT NULL AUTO_INCREMENT,
  `Username` VARCHAR(100) NULL,
  `Password` VARCHAR(255) NULL,
  PRIMARY KEY (`IDUser2`),
  UNIQUE INDEX `iduser2_UNIQUE` (`IDUser2` ASC) VISIBLE);