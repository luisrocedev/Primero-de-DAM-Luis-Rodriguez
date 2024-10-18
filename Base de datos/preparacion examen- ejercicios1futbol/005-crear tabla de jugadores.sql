CREATE TABLE `futbol`.`jugadores` (`identificador` INT(255) NOT NULL AUTO_INCREMENT ,
    `nombre` VARCHAR(255) NOT NULL , `apellidos` VARCHAR(255) NOT NULL ,
    `fechadenacimiento` DATE NOT NULL ,
    `paisdenacimiento` INT(255) NOT NULL ,
    PRIMARY KEY (`identificador`)) ENGINE = InnoDB;