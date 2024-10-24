ALTER TABLE `tabla clases` ADD CONSTRAINT `clasesaentrenador` FOREIGN KEY (`ID_Entrenador`) REFERENCES `tabla entrenadores`(`ID_Entrenador`) ON DELETE RESTRICT ON UPDATE RESTRICT;
