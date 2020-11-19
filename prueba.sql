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
VALUES (200 , 'Doritos', 'tradicional queso 320gr', 1180);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (300 , 'Ruffles', 'Mega crunch 120gr', 800);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (400 , 'Cheetos', 'Palitos sabor queso', 1000);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (500 , "Lay's", 'Original 120gr', 750);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (600 , 'Oreo', 'Galleta vainilla con relleno vanilla 126gr', 600);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (700 , 'Pepsi 3l', 'Bebida light 3lts', 2050);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (800 , 'Coca-cola 3l', 'Bebida original 3lts', 1950);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (900 , 'Mani 430g', 'Mani sin sal 430g', 1800);
