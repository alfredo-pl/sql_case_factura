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
    valor REAL
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
