CREATE TABLE `tabla clientes`.`tabla clases` (`ID_Clase`
 INT(255) NOT NULL AUTO_INCREMENT , `Nombre_Clase` VARCHAR(255)
  NOT NULL , `Horario` VARCHAR(255) NOT NULL ,
   `Capacidad_Maxima` INT(255) NOT NULL , `ID_Entrenador`
    INT(255) NOT NULL , PRIMARY KEY (`ID_Clase`)) ENGINE = InnoDB;