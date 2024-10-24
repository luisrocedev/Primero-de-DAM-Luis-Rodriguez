CREATE TABLE `tabla clientes`.`tabla entrenadores`
 (`ID_Entrenador` INT(255) NOT NULL AUTO_INCREMENT ,
  `Nombre` VARCHAR(255) NOT NULL , `Especialidad`
   VARCHAR(255) NOT NULL , `Correo` VARCHAR(255) NOT NULL ,
    `Teléfono` VARCHAR(255) NOT NULL , `Certificaciones`
     VARCHAR(255) NOT NULL , PRIMARY KEY (`ID_Entrenador`))
      ENGINE = InnoDB;