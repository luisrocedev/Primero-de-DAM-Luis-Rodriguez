CREATE TABLE `crossfit`.`tabla membresías` (
  `ID_Membresía` INT NOT NULL AUTO_INCREMENT,
  `Tipo_Membresía` VARCHAR(255) NOT NULL,
  `Costo` DECIMAL(10,2) NOT NULL,
  `Duración` INT NOT NULL,
  `Descripción` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`ID_Membresía`)
) ENGINE = InnoDB;
