ALTER TABLE `tabla clientes`
 ADD CONSTRAINT `clienteamebresia`
  FOREIGN KEY (`ID_Membresía`)
   REFERENCES `tabla membresías`(`ID_Membresía`) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;