ALTER TABLE `pedidos` ADD CONSTRAINT `pedidosaclientes` FOREIGN KEY (`clientes_apellidos`) REFERENCES `clientes`(`Identificador`) ON DELETE RESTRICT ON UPDATE RESTRICT;
