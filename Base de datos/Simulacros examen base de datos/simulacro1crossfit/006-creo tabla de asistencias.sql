CREATE TABLE `crossfit`.`tabla asistencias` (`ID_Asistencia`
 INT(255) NOT NULL AUTO_INCREMENT , `ID_Cliente` INT(255) NOT
  NULL , `ID_Clase` INT(255) NOT NULL , `Fecha_Asistencia` DATE
   NOT NULL , `Estado_Asistencia` INT(255) NOT NULL , PRIMARY KEY
    (`ID_Asistencia`)) ENGINE = InnoDB;