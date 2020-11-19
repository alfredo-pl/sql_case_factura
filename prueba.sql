--se crea la db
CREATE DATABASE prueba;
--ingresamos a la db \c prueba

--creamos la tabla Cliente
CREATE TABLE cliente(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    rut VARCHAR(10),
    direccion VARCHAR (200)
);

--creamos la tabla producto
CREATE TABLE producto(
    id INT PRIMARY KEY,
    nombre VARCHAR (150),
    descripcion VARCHAR (200),
    valor INT
);

--creamos la tabla Factura
CREATE TABLE factura(
    numero_factura INT PRIMARY KEY,
    cliente INT,
    subtotal INT,
    fecha DATE,
    FOREIGN KEY (cliente) REFERENCES cliente(id)
);

--creamos la tabla categoria
CREATE TABLE categoria(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR (150),
    descripcion VARCHAR (200)
);


--creamos la tabla relacion factura_producto
CREATE TABLE factura_producto (
    id SERIAL PRIMARY KEY,
    id_factura INT,
    id_producto INT,
    cantidad INT,
    FOREIGN KEY (id_factura) REFERENCES factura(numero_factura), 
    FOREIGN KEY (id_producto) REFERENCES producto(id)
);

--creamos la tabla relacion producto_categoria
CREATE TABLE producto_categoria(
    id SERIAL PRIMARY KEY,
    id_producto INT,
    id_categoria INT,
    FOREIGN KEY (id_producto) REFERENCES producto(id), 
    FOREIGN KEY (id_categoria) REFERENCES categoria(id)
);


--insertamos 5 clientes en la tabla cliente
INSERT INTO cliente (nombre, rut, direccion)
VALUES ('Alejandro Lopez', '25465654-2', 'Independecia calle montau');
INSERT INTO cliente (nombre, rut, direccion)
VALUES ('Marla Oropeza', '20554433-6', 'Santiago Centro calle portugal');
INSERT INTO cliente (nombre, rut, direccion)
VALUES ('Leonel Andrade', '22445354-3', 'Providencia');
INSERT INTO cliente (nombre, rut, direccion)
VALUES ('Maria Perez', '26442334-5', 'San Miguel');
INSERT INTO cliente (nombre, rut, direccion)
VALUES ('Lucia Rojas', '21341334-1', 'Estacion Central');

--insertamos 8 productos en la tabla producto
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (100 , 'Doritos', 'tradicional queso 320gr', 1180);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (200 , 'Ruffles', 'Mega crunch 120gr', 800);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (300 , 'Cheetos', 'Palitos sabor queso', 1000);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (400 , "Lay's", 'Original 120gr', 750);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (500 , 'Oreo', 'Galleta vainilla con relleno vanilla 126gr', 600);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (600 , 'Pepsi 3l', 'Bebida light 3lts', 2050);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (700 , 'Coca-cola 3l', 'Bebida original 3lts', 1950);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (800 , 'Mani 430g', 'Mani sin sal 430g', 1800);


--insertamos 4 categorias en la tabla categoria
INSERT INTO categoria (nombre, descripcion)
VALUES ('snak' , 'papas, galletas ');
INSERT INTO categoria (nombre, descripcion)
VALUES ('galleta' , 'dulces, saladas');
INSERT INTO categoria (nombre, descripcion)
VALUES ('bebida' , 'liquidos');
INSERT INTO categoria (nombre, descripcion)
VALUES ('gaseosa' , 'Que contine gas ');


--insertamos 10 facturas en la tabla factura
INSERT INTO factura (numero_factura , cliente, subtotal, fecha)
VALUES (1001 ,1, 2550,'2020-10-01');
INSERT INTO factura (numero_factura , cliente, subtotal, fecha)
VALUES (1002 ,1, 5550,'2020-10-02');
INSERT INTO factura (numero_factura , cliente, subtotal, fecha)
VALUES (1003 ,2, 7950,'2020-10-03');
INSERT INTO factura (numero_factura , cliente, subtotal, fecha)
VALUES (1004 ,2, 4410,'2020-10-04');
INSERT INTO factura (numero_factura , cliente, subtotal, fecha)
VALUES (1005 ,2, 4850,'2020-10-05');
INSERT INTO factura (numero_factura , cliente, subtotal, fecha)
VALUES (1006 ,3, 3000,'2020-10-06');
INSERT INTO factura (numero_factura , cliente, subtotal, fecha)
VALUES (1007 ,4, 4000,'2020-10-07');
INSERT INTO factura (numero_factura , cliente, subtotal, fecha)
VALUES (1008 ,4, 5740,'2020-10-08');
INSERT INTO factura (numero_factura , cliente, subtotal, fecha)
VALUES (1009 ,4, 8810,'2020-10-09');
INSERT INTO factura (numero_factura , cliente, subtotal, fecha)
VALUES (1010 ,4, 3000,'2020-10-10');

--insertamos valores en la tabla relacion  factura_producto
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1001,200,2);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1001,700,1);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1002,300,3);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1002,500,1);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1002,700,1);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1003,100,2);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1003,600,1);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1004,800,1);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1004,700,2);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1004,400,3);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1005,200,2);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1005,500,2);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1005,600,1);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1006,500,5);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1007,700,1);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1007,600,1);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1008,500,1);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1008,100,3);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1008,200,2);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1009,800,1);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1009,400,1);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1009,100,2);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1009,700,2);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (1010,300,3);
