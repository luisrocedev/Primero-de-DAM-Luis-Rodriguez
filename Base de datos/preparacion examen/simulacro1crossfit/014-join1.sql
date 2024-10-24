ALTER TABLE `tabla asistencias` ADD CONSTRAINT `asistenciasacliente` FOREIGN KEY (`ID_Cliente`) REFERENCES `tabla clientes`(`ID_Cliente`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `tabla asistencias` ADD CONSTRAINT `asistenciaaclase` FOREIGN KEY (`ID_Clase`) REFERENCES `tabla clases`(`ID_Clase`) ON DELETE RESTRICT ON UPDATE RESTRICT;

