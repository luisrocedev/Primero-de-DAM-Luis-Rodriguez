ALTER TABLE `fichajes` ADD CONSTRAINT `jugadoresafichaje` FOREIGN KEY (`jugadores_nombre`) REFERENCES `jugadores`(`Identificador`) ON DELETE RESTRICT ON UPDATE RESTRICT;
