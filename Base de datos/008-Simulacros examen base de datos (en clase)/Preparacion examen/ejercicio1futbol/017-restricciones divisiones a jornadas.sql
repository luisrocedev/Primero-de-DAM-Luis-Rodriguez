ALTER TABLE `jornadas` ADD CONSTRAINT `divisionesajornadas` FOREIGN KEY (`divisiones_nombre`) REFERENCES `divisiones`(`Identificador`) ON DELETE RESTRICT ON UPDATE RESTRICT;
