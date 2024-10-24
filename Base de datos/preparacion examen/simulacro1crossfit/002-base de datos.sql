CREATE TABLE `tabla clientes`.`tabla clientes`
    (`ID_Cliente` INT(255) NOT NULL AUTO_INCREMENT ,
    `Nombre` VARCHAR(255) NOT NULL , `Correo` VARCHAR(255) NOT NULL , `Teléfono` VARCHAR(255) NOT NULL 
    , `Fecha_Registro` DATE NOT NULL ,
    `ID_Membresía` INT(255) NOT NULL ,
        PRIMARY KEY (`ID_Cliente`))
ENGINE = InnoDB;