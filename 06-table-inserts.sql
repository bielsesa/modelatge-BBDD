INSERT INTO `culampolla`.`Supplier` VALUES ('45865971N', 'Rayo-Van', 698569871, 933654872, 'Carrer Ventura', 98, 2, 1, 'Barcelona', 08299, 'Espanya');
INSERT INTO `culampolla`.`Supplier` VALUES ('75887491R', 'Mu', 784555698, 933484882, 'Carrer Pelai', 492, 4, 2, 'Barcelona', 08210, 'Espanya');

INSERT INTO `culampolla`.`Employee` (`idEmployee`, `name`) VALUES (534, 'Pepit');
INSERT INTO `culampolla`.`Employee` (`idEmployee`, `name`) VALUES (678, 'Tetip');

INSERT INTO `culampolla`.`Client` (`DNI`, `name`, `address`, `phone`, `email`, `registrationDate`) 
VALUES ('4587446V', 'Tom', 'Carrer Concili, 64, 08238 Barcelona', 688524315, 'aaa@gmail.com', '2019-05-10');
INSERT INTO `culampolla`.`Client` (`DNI`, `name`, `address`, `phone`, `email`, `registrationDate`, `Client_DNI`) 
VALUES ('2598756L', 'Maria', 'Carrer Calaya, 344, 08217 Barcelona', 698321487, 'bbb@gmail.com', '2020-02-23', '4587446V');

INSERT INTO `culampolla`.`Glasses` (`idGlasses`, `brand`, `prescription`, `frameType`, `frameColor`, `glassColor`, `price`, `Supplier_NIF`, `Employee_idEmployee`, `Client_DNI`) 
VALUES (458874, 'Rayo-Van', 2.5, 'metallic', 'black', 'transparent', 175, '45865971N', 534, '2598756L');
INSERT INTO `culampolla`.`Glasses` (`idGlasses`, `brand`, `prescription`, `frameType`, `frameColor`, `glassColor`, `price`, `Supplier_NIF`) 
VALUES (12234, 'Rayo-Van', 4.5, 'plastic', 'red', 'black', 230, '45865971N');
INSERT INTO `culampolla`.`Glasses` (`idGlasses`, `brand`, `prescription`, `frameType`, `frameColor`, `glassColor`, `price`, `Supplier_NIF`, `Employee_idEmployee`, `Client_DNI`) 
VALUES (78845, 'Mu', 3.75, 'floating', 'silver', 'transparent', 129.99, '75887491R', 678, '4587446V');