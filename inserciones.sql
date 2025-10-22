/*Dependencias*/  
INSERT INTO Dependencia VALUES ('1','Comercio','1');
INSERT INTO Dependencia VALUES ('2','Dirección','1');
INSERT INTO Dependencia VALUES ('3','Gerencia','1');
INSERT INTO Dependencia VALUES ('4','Ventas','1');
INSERT INTO Dependencia VALUES ('5','Compras','1');

/*Cargos*/  
INSERT INTO Cargo (codCargo,codDependencia,nomCargo,estadoCargo) VALUES ('1','1','Director Comercial','1');
INSERT INTO Cargo (codCargo,codCargo_sup,codDependencia,nomCargo,estadoCargo) VALUES ('2','1','3','Gerente de ventas','1');
INSERT INTO Cargo (codCargo,codCargo_sup,codDependencia,nomCargo,estadoCargo) VALUES ('3','2','4','Representante de ventas','1');
INSERT INTO Cargo (codCargo,codCargo_sup,codDependencia,nomCargo,estadoCargo) VALUES ('4','2','4','Vendedor','1');
INSERT INTO Cargo (codCargo,codCargo_sup,codDependencia,nomCargo,estadoCargo) VALUES ('5','1','3','Gerente de compras','1');
INSERT INTO Cargo (codCargo,codCargo_sup,codDependencia,nomCargo,estadoCargo) VALUES ('6','5','5','Auxiliar de compras','1');
INSERT INTO Cargo (codCargo,codDependencia,nomCargo,estadoCargo) VALUES ('7','1','Director Comercial','0');

/*Empleados*/ 
INSERT INTO Empleado VALUES ('1','Carlos','Hernandez','carlos@gmail.com'); 
INSERT INTO Empleado VALUES ('2','Pedro','Cifuentes','pedro@gmail.com'); 
INSERT INTO Empleado VALUES ('3','Amanda','Donoso','amanda@gmail.com'); 
INSERT INTO Empleado VALUES ('4','Kevin','Diaz','kevin@gmail.com'); 
INSERT INTO Empleado VALUES ('5','Santiago','Fernandez','santi@gmail.com'); 
INSERT INTO Empleado VALUES ('6','Daniel','Lucumi','dani@gmail.com'); 
INSERT INTO Empleado VALUES ('7','Romelu','Silva','romsilva@gmail.com'); 
INSERT INTO Empleado VALUES ('8','Rosa','Gamero','rose@gmail.com'); 
INSERT INTO Empleado VALUES ('9','Carla','Llinas','carla@gmail.com'); 
INSERT INTO Empleado VALUES ('10','Laura','Vargas','lvargas@gmail.com'); 
INSERT INTO Empleado VALUES ('11','Edgar','Cataño','cracktaño@gmail.com'); 
INSERT INTO Empleado VALUES ('12','Paola','Ruiz','paoru@gmail.com'); 
INSERT INTO Empleado VALUES ('13','Cesar','Castro','avecesar@gmail.com'); 

/*Asignar cargo EmplCargo*/
INSERT INTO EmplCargo VALUES ('1','1','27/01/2020',null);
INSERT INTO EmplCargo VALUES ('1','2',TO_DATE('15-05-2010', 'DD-MM-YYYY'),TO_DATE('31-12-2019', 'DD-MM-YYYY'));
INSERT INTO EmplCargo VALUES ('2','3',TO_DATE('10-02-2019', 'DD-MM-YYYY'),null);
INSERT INTO EmplCargo VALUES ('3','4',TO_DATE('09-12-2018', 'DD-MM-YYYY'),null);
INSERT INTO EmplCargo VALUES ('3','5',TO_DATE('09-12-2018', 'DD-MM-YYYY'),null);
INSERT INTO EmplCargo VALUES ('3','6',TO_DATE('20-10-2021', 'DD-MM-YYYY'),null);
INSERT INTO EmplCargo VALUES ('4','7',TO_DATE('25-05-2021', 'DD-MM-YYYY'),null);
INSERT INTO EmplCargo VALUES ('4','8',TO_DATE('25-06-2021', 'DD-MM-YYYY'),null);
INSERT INTO EmplCargo VALUES ('4','9',TO_DATE('30-06-2021', 'DD-MM-YYYY'),null);
INSERT INTO EmplCargo VALUES ('5','10',TO_DATE('30-06-2020', 'DD-MM-YYYY'),null);
INSERT INTO EmplCargo VALUES ('6','11',TO_DATE('02-08-2018', 'DD-MM-YYYY'),null);
INSERT INTO EmplCargo VALUES ('6','12',TO_DATE('03-08-2018', 'DD-MM-YYYY'),null);
INSERT INTO EmplCargo VALUES ('6','13',TO_DATE('18-05-2018', 'DD-MM-YYYY'),null);

/*Componente Dirección*/
INSERT INTO ComponenteDirecc VALUES (1,'Tipo Via','1');
INSERT INTO ComponenteDirecc VALUES (2,'Num o Nomb ViaPrinc','0');
INSERT INTO ComponenteDirecc VALUES (3,'Letras asoc. a ViaPrinc','0');
INSERT INTO ComponenteDirecc VALUES (4,'Prefijo(BIS)','0');
INSERT INTO ComponenteDirecc VALUES (5,'Letras prefijo','0');
INSERT INTO ComponenteDirecc VALUES (6,'Cuadrante','0');
INSERT INTO ComponenteDirecc VALUES (7,'Num ViaGen','1');
INSERT INTO ComponenteDirecc VALUES (8,'Letras asoc. a ViaGen','0');
INSERT INTO ComponenteDirecc VALUES (9,'Sufijo(BIS)','0');
INSERT INTO ComponenteDirecc VALUES (10,'Letras sufijo','0');
INSERT INTO ComponenteDirecc VALUES (11,'Num placa','1');
INSERT INTO ComponenteDirecc VALUES (12,'Cuadrante','0');
INSERT INTO ComponenteDirecc VALUES (13,'Barrio(BR)','0');
INSERT INTO ComponenteDirecc VALUES (14,'Nom Barrio','1');
INSERT INTO ComponenteDirecc VALUES (15,'Manzana','0');
INSERT INTO ComponenteDirecc VALUES (16,'id manzana','0');
INSERT INTO ComponenteDirecc VALUES (17,'Urbanización','0');
INSERT INTO ComponenteDirecc VALUES (18,'Nom Urbanización','0');
INSERT INTO ComponenteDirecc VALUES (19,'Tipo predio','0');
INSERT INTO ComponenteDirecc VALUES (20,'id predio','0');
INSERT INTO ComponenteDirecc VALUES (21,'Complemento','0');

/*Abreviaturas para tipo via*/
INSERT INTO Nomenclatura VALUES ('AU',1,'Autopista');
INSERT INTO Nomenclatura VALUES ('AV',1,'Avenida');
INSERT INTO Nomenclatura VALUES ('AC',1,'Avenida Calle');
INSERT INTO Nomenclatura VALUES ('AK',1,'Avenida Carrera');
INSERT INTO Nomenclatura VALUES ('BL',1,'Bulevar');
INSERT INTO Nomenclatura VALUES ('CL',1,'Calle');
INSERT INTO Nomenclatura VALUES ('KR',1,'Carrera');
INSERT INTO Nomenclatura VALUES ('CT',1,'Carretera');
INSERT INTO Nomenclatura VALUES ('CQ',1,'Circular');
INSERT INTO Nomenclatura VALUES ('CV',1,'Circunvalar');
INSERT INTO Nomenclatura VALUES ('CC',1,'Cuentas corridas');
INSERT INTO Nomenclatura VALUES ('DG',1,'Diagonal');
INSERT INTO Nomenclatura VALUES ('PJ',1,'Pasaje');
INSERT INTO Nomenclatura VALUES ('PS',1,'Paseo');
INSERT INTO Nomenclatura VALUES ('PT',1,'Peatonal');
INSERT INTO Nomenclatura VALUES ('TV',1,'Transversal');
INSERT INTO Nomenclatura VALUES ('TC',1,'Troncal');
INSERT INTO Nomenclatura VALUES ('VT',1,'Variante');
INSERT INTO Nomenclatura VALUES ('VI',1,'Vía');

/*Abreviaturas para cuadrante*/
INSERT INTO Nomenclatura VALUES ('ESTE',6,'Este');
INSERT INTO Nomenclatura VALUES ('NORTE',6,'Norte');
INSERT INTO Nomenclatura VALUES ('OESTE',6,'Oeste');
INSERT INTO Nomenclatura VALUES ('SUR',6,'Sur');

/*Abreviaturas para el campo barrio*/
INSERT INTO Nomenclatura VALUES ('BR',13,'Barrio');
INSERT INTO Nomenclatura VALUES ('CD',13,'Ciudadela');
INSERT INTO Nomenclatura VALUES ('SM',13,'Supermanzana');

/*Abreviaturas para el campo urbanización*/
INSERT INTO Nomenclatura VALUES ('BQ',17,'Bloque');
INSERT INTO Nomenclatura VALUES ('CU',17,'Célula');
INSERT INTO Nomenclatura VALUES ('CO',17,'Conjunto Residencial');
INSERT INTO Nomenclatura VALUES ('ET',17,'Etapa');
INSERT INTO Nomenclatura VALUES ('UR',17,'Urbanización');
INSERT INTO Nomenclatura VALUES ('SC',17,'Sector');
INSERT INTO Nomenclatura VALUES ('TO',17,'Torre');
INSERT INTO Nomenclatura VALUES ('ZN',17,'Zona');

/*Abreviaturas para el campo manzana*/
INSERT INTO Nomenclatura VALUES ('MZ',15,'Manzana');
INSERT INTO Nomenclatura VALUES ('IN',15,'Interior');
INSERT INTO Nomenclatura VALUES ('ED',15,'Edificio');
INSERT INTO Nomenclatura VALUES ('MD',15,'Módulo');

/*Tipo Predio*/
INSERT INTO Nomenclatura VALUES ('AL',19,'Altillo');
INSERT INTO Nomenclatura VALUES ('AP',19,'Apartamento');
INSERT INTO Nomenclatura VALUES ('BG',19,'Bodega');
INSERT INTO Nomenclatura VALUES ('CS',19,'Casa');
INSERT INTO Nomenclatura VALUES ('CN',19,'Consultorio');
INSERT INTO Nomenclatura VALUES ('DP',19,'Deposito');
INSERT INTO Nomenclatura VALUES ('DS',19,'Deposito sótano');
INSERT INTO Nomenclatura VALUES ('GA',19,'Garaje');
INSERT INTO Nomenclatura VALUES ('GS',19,'Garaje sótano');
INSERT INTO Nomenclatura VALUES ('LC',19,'Local');
INSERT INTO Nomenclatura VALUES ('LM',19,'Local Mezzanine');
INSERT INTO Nomenclatura VALUES ('LT',19,'Lote');
INSERT INTO Nomenclatura VALUES ('MN',19,'Mezzanine');
INSERT INTO Nomenclatura VALUES ('OF',19,'Oficina');
INSERT INTO Nomenclatura VALUES ('PA',19,'Parqueadero');
INSERT INTO Nomenclatura VALUES ('PN',19,'Pent-House');
INSERT INTO Nomenclatura VALUES ('PL',19,'Planta');
INSERT INTO Nomenclatura VALUES ('PD',19,'Predio');
INSERT INTO Nomenclatura VALUES ('SS',19,'Semisótano');
INSERT INTO Nomenclatura VALUES ('SO',19,'Sótano');
INSERT INTO Nomenclatura VALUES ('ST',19,'Suite');
INSERT INTO Nomenclatura VALUES ('TZ',19,'Terraza');
INSERT INTO Nomenclatura VALUES ('UN',19,'Unidad');
INSERT INTO Nomenclatura VALUES ('UL',19,'Unidad Residencial');

/*Abreviaturas para complemento*/
INSERT INTO Nomenclatura VALUES ('AD',21,'Administración');
INSERT INTO Nomenclatura VALUES ('AG',21,'Agrupación');
INSERT INTO Nomenclatura VALUES ('CE',21,'Centro Comercial');
INSERT INTO Nomenclatura VALUES ('PQ',21,'Parque');
INSERT INTO Nomenclatura VALUES ('PI',21,'Piso');
INSERT INTO Nomenclatura VALUES ('PR',21,'Porteria');
INSERT INTO Nomenclatura VALUES ('PU',21,'Puesto');
INSERT INTO Nomenclatura VALUES ('RP',21,'Round Point');
INSERT INTO Nomenclatura VALUES ('EN',21,'Entrada');
INSERT INTO Nomenclatura VALUES ('EQ',21,'Esquina');
INSERT INTO Nomenclatura VALUES ('ES',21,'Estación');
INSERT INTO Nomenclatura VALUES ('EX',21,'Exterior');
INSERT INTO Nomenclatura VALUES ('FI',21,'Finca');
INSERT INTO Nomenclatura VALUES ('KM',21,'Kilómetro');


/*Categorias y subcategorias*/
INSERT INTO CatProducto (idCatProducto, desCatProducto) VALUES ('1','Alimentos');
INSERT INTO CatProducto VALUES ('2','1','Dulces');
INSERT INTO CatProducto VALUES ('3','1','Chocolates');
INSERT INTO CatProducto VALUES ('4','1','Chicles');
INSERT INTO CatProducto VALUES ('5','1','Snacks');
INSERT INTO CatProducto VALUES ('6','1','Cereales y Granolas');
INSERT INTO CatProducto VALUES ('7','1','Café y Té');
INSERT INTO CatProducto VALUES ('8','1','Aceites');
INSERT INTO CatProducto VALUES ('9','1','Arinas');
INSERT INTO CatProducto VALUES ('10','1','Condimentos');
INSERT INTO CatProducto VALUES ('11','1','Frutas');
INSERT INTO CatProducto VALUES ('12','1','Vegetales');
INSERT INTO CatProducto (idCatProducto, desCatProducto) VALUES ('13','Licores');
INSERT INTO CatProducto (idCatProducto, desCatProducto) VALUES ('14','Automotriz');
INSERT INTO CatProducto (idCatProducto, desCatProducto) VALUES ('15','Electrónicos');
INSERT INTO CatProducto (idCatProducto, desCatProducto) VALUES ('16','Moda y accesorios');
INSERT INTO CatProducto (idCatProducto, desCatProducto) VALUES ('17','Ferretería');
INSERT INTO CatProducto (idCatProducto, desCatProducto) VALUES ('18','Salud y Belleza');
INSERT INTO CatProducto (idCatProducto, desCatProducto) VALUES ('19','Oficina');
INSERT INTO CatProducto (idCatProducto, desCatProducto) VALUES ('20','Exteriores');
INSERT INTO CatProducto (idCatProducto, desCatProducto) VALUES ('21','Muebles');
INSERT INTO CatProducto (idCatProducto, desCatProducto) VALUES ('22','Hogar');

/*Incluir productos*/
INSERT INTO Producto VALUES ('1','2','Frunas');
INSERT INTO Producto VALUES ('2','3','Choco Break');
INSERT INTO Producto VALUES ('3','4','Tumix');
INSERT INTO Producto VALUES ('4','5','Margaritas x500g');
INSERT INTO Producto VALUES ('5','6','Zucaritas x500g');
INSERT INTO Producto VALUES ('6','7','Sun Tea x10g');
INSERT INTO Producto VALUES ('7','8','Olivo x2L');
INSERT INTO Producto VALUES ('8','9','Maizena x500g');
INSERT INTO Producto VALUES ('9','10','Color x10g');
INSERT INTO Producto VALUES ('10','11','Banano xK');
INSERT INTO Producto VALUES ('11','12','Pepino xK');
INSERT INTO Producto VALUES ('12','13','Jack Daniels x1L');
INSERT INTO Producto VALUES ('13','14','Llanta 4x4');
INSERT INTO Producto VALUES ('14','15','Tostadora');
INSERT INTO Producto VALUES ('15','16','Jeans Velez');
INSERT INTO Producto VALUES ('16','17','Tornillos xu');
INSERT INTO Producto VALUES ('17','18','Alcohol x1L');
INSERT INTO Producto VALUES ('18','19','Silla');
INSERT INTO Producto VALUES ('19','20','Pintura aceite x20L');
INSERT INTO Producto VALUES ('20','21','Sofa');
INSERT INTO Producto VALUES ('21','22','Cortinas');

/*HistoricoPrecio*/
INSERT INTO HistoricoPrecio VALUES (1,'1','2',DATE '2018-01-01',DATE '2019-01-01',2.00);
INSERT INTO HistoricoPrecio VALUES (2,'1','2',DATE '2019-01-02',DATE '2020-01-01',3.00);
INSERT INTO HistoricoPrecio VALUES (3,'1','2',DATE '2020-01-02',NULL,4.00);
INSERT INTO HistoricoPrecio VALUES (4,'2','3',DATE '2018-01-01',DATE '2019-01-01',2.00);
INSERT INTO HistoricoPrecio VALUES (5,'2','3',DATE '2019-01-02',DATE '2020-01-01',2.60);
INSERT INTO HistoricoPrecio VALUES (6,'2','3',DATE '2020-01-02',NULL,4.00);
INSERT INTO HistoricoPrecio VALUES (7,'3','4',DATE '2018-01-01',DATE '2019-01-01',0.50);
INSERT INTO HistoricoPrecio VALUES (8,'3','4',DATE '2019-01-02',DATE '2020-01-01',1.00);
INSERT INTO HistoricoPrecio VALUES (9,'3','4',DATE '2020-01-02',NULL,2.00);
INSERT INTO HistoricoPrecio VALUES (10,'4','5',DATE '2018-01-01',DATE '2019-01-01',10.00);
INSERT INTO HistoricoPrecio VALUES (11,'4','5',DATE '2019-01-02',DATE '2020-01-01',12.00);
INSERT INTO HistoricoPrecio VALUES (12,'4','5',DATE '2020-01-02',NULL,16.00);
INSERT INTO HistoricoPrecio VALUES (13,'5','6',DATE '2018-01-01',DATE '2019-01-01',100.00);
INSERT INTO HistoricoPrecio VALUES (14,'5','6',DATE '2019-01-02',DATE '2020-01-01',120.00);
INSERT INTO HistoricoPrecio VALUES (15,'5','6',DATE '2020-01-02',NULL,150.00);
INSERT INTO HistoricoPrecio VALUES (16,'6','7',DATE '2018-01-01',DATE '2019-01-01',5.00);
INSERT INTO HistoricoPrecio VALUES (17,'6','7',DATE '2019-01-02',DATE '2020-01-01',7.00);
INSERT INTO HistoricoPrecio VALUES (18,'6','7',DATE '2020-01-02',NULL,10.00);
INSERT INTO HistoricoPrecio VALUES (19,'7','8',DATE '2018-01-01',DATE '2019-01-01',100.00);
INSERT INTO HistoricoPrecio VALUES (20,'7','8',DATE '2019-01-02',DATE '2020-01-01',150.00);
INSERT INTO HistoricoPrecio VALUES (21,'7','8',DATE '2020-01-02',NULL,180.00);
INSERT INTO HistoricoPrecio VALUES (22,'8','9',DATE '2018-01-01',DATE '2019-01-01',3.00);
INSERT INTO HistoricoPrecio VALUES (23,'8','9',DATE '2019-01-02',DATE '2020-01-01',3.50);
INSERT INTO HistoricoPrecio VALUES (24,'8','9',DATE '2020-01-02',NULL,4.50);
INSERT INTO HistoricoPrecio VALUES (25,'9','10',DATE '2018-01-01',DATE '2019-01-01',5.00);
INSERT INTO HistoricoPrecio VALUES (26,'9','10',DATE '2019-01-02',DATE '2020-01-01',6.00);
INSERT INTO HistoricoPrecio VALUES (27,'9','10',DATE '2020-01-02',NULL,7.00);
INSERT INTO HistoricoPrecio VALUES (28,'10','11',DATE '2018-01-01',DATE '2019-01-01',6.00);
INSERT INTO HistoricoPrecio VALUES (29,'10','11',DATE '2019-01-02',DATE '2020-01-01',6.50);
INSERT INTO HistoricoPrecio VALUES (30,'10','11',DATE '2020-01-02',NULL,6.00);
INSERT INTO HistoricoPrecio VALUES (31,'11','12',DATE '2018-01-01',DATE '2019-01-01',7.00);
INSERT INTO HistoricoPrecio VALUES (32,'11','12',DATE '2019-01-02',DATE '2020-01-01',8.00);
INSERT INTO HistoricoPrecio VALUES (33,'11','12',DATE '2020-01-02',NULL,8.50);
INSERT INTO HistoricoPrecio VALUES (34,'12','13',DATE '2018-01-01',DATE '2019-01-01',500.00);
INSERT INTO HistoricoPrecio VALUES (35,'12','13',DATE '2019-01-02',DATE '2020-01-01',550.00);
INSERT INTO HistoricoPrecio VALUES (36,'12','13',DATE '2020-01-02',NULL,620.00);
INSERT INTO HistoricoPrecio VALUES (37,'13','14',DATE '2018-01-01',DATE '2019-01-01',1500.00);
INSERT INTO HistoricoPrecio VALUES (38,'13','14',DATE '2019-01-02',DATE '2020-01-01',1550.00);
INSERT INTO HistoricoPrecio VALUES (39,'13','14',DATE '2020-01-02',NULL,1700.00);
INSERT INTO HistoricoPrecio VALUES (40,'14','15',DATE '2018-01-01',DATE '2019-01-01',600.00);
INSERT INTO HistoricoPrecio VALUES (41,'14','15',DATE '2019-01-02',DATE '2020-01-01',800.00);
INSERT INTO HistoricoPrecio VALUES (42,'14','15',DATE '2020-01-02',NULL,750.00);
INSERT INTO HistoricoPrecio VALUES (43,'15','16',DATE '2018-01-01',DATE '2019-01-01',1800.00);
INSERT INTO HistoricoPrecio VALUES (44,'15','16',DATE '2019-01-02',DATE '2020-01-01',1700.00);
INSERT INTO HistoricoPrecio VALUES (45,'15','16',DATE '2020-01-02',NULL,1800.00);
INSERT INTO HistoricoPrecio VALUES (46,'16','17',DATE '2018-01-01',DATE '2019-01-01',0.50);
INSERT INTO HistoricoPrecio VALUES (47,'16','17',DATE '2019-01-02',DATE '2020-01-01',1.00);
INSERT INTO HistoricoPrecio VALUES (48,'16','17',DATE '2020-01-02',NULL,1.50);
INSERT INTO HistoricoPrecio VALUES (49,'17','18',DATE '2018-01-01',DATE '2019-01-01',60.00);
INSERT INTO HistoricoPrecio VALUES (50,'17','18',DATE '2019-01-02',DATE '2020-01-01',62.00);
INSERT INTO HistoricoPrecio VALUES (51,'17','18',DATE '2020-01-02',NULL,100.00);
INSERT INTO HistoricoPrecio VALUES (52,'18','19',DATE '2018-01-01',DATE '2019-01-01',800.00);
INSERT INTO HistoricoPrecio VALUES (53,'18','19',DATE '2019-01-02',DATE '2020-01-01',870.00);
INSERT INTO HistoricoPrecio VALUES (54,'18','19',DATE '2020-01-02',NULL,900.00);
INSERT INTO HistoricoPrecio VALUES (55,'19','20',DATE '2018-01-01',DATE '2019-01-01',1000.00);
INSERT INTO HistoricoPrecio VALUES (56,'19','20',DATE '2019-01-02',DATE '2020-01-01',1200.00);
INSERT INTO HistoricoPrecio VALUES (57,'19','20',DATE '2020-01-02',NULL,1150.00);
INSERT INTO HistoricoPrecio VALUES (58,'20','21',DATE '2018-01-01',DATE '2019-01-01',200.00);
INSERT INTO HistoricoPrecio VALUES (59,'20','21',DATE '2019-01-02',DATE '2020-01-01',250.00);
INSERT INTO HistoricoPrecio VALUES (60,'20','21',DATE '2020-01-02',NULL,450.00);
INSERT INTO HistoricoPrecio VALUES (61,'21','22',DATE '2018-01-01',DATE '2019-01-01',50.00);
INSERT INTO HistoricoPrecio VALUES (62,'21','22',DATE '2019-01-02',DATE '2020-01-01',30.00);
INSERT INTO HistoricoPrecio VALUES (63,'21','22',DATE '2020-01-02',NULL,45.00);

/*Incluir TipoFact*/
INSERT INTO TipoFactura VALUES ('VE','Venta');
INSERT INTO TipoFactura VALUES ('CO','Compra');
INSERT INTO TipoFactura VALUES ('DV','Devolución venta');
INSERT INTO TipoFactura VALUES ('DC','Devolución Compra');

/*TipoPersona*/
INSERT INTO TipoPersona VALUES ('1','Cliente');
INSERT INTO TipoPersona VALUES ('2','Proveedor');

/*TipoContacto*/

INSERT INTO TipoContacto VALUES ('1','Celular');
INSERT INTO TipoContacto VALUES ('2','Correo');
INSERT INTO TipoContacto VALUES ('3','Red Social');
INSERT INTO TipoContacto VALUES ('4','Otro');

/*TipoDocumento*/
insert into TipoDoc values ('1','CC');
insert into TipoDoc values ('2','TI');
insert into TipoDoc values ('3','TE');
insert into TipoDoc values ('4','CE');
insert into TipoDoc values ('5','NIT');
insert into TipoDoc values ('6','PAS');
