ALTER TABLE `pedidos` ADD CONSTRAINT `pedidos a clientes` FOREIGN KEY (`clientes_apellidos`) REFERENCES `clientes`(`Identificador`) ON DELETE RESTRICT ON UPDATE RESTRICT;
