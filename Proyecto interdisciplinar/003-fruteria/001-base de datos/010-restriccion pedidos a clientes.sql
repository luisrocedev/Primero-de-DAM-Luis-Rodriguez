ALTER TABLE `Pedido` ADD CONSTRAINT `pedidosaclientes` FOREIGN KEY (`ID_Cliente`) REFERENCES `Cliente`(`ID_Cliente`) ON DELETE RESTRICT ON UPDATE RESTRICT;

