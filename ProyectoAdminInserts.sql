--Llenado de las tablas de la base de datos con infotmación genérica de ejemplo

--tabla país
INSERT INTO Pais (id_pais, nombre_pais) VALUES (10, 'Estados Unidos');
INSERT INTO Pais (id_pais, nombre_pais) VALUES (20, 'Panamá');
INSERT INTO Pais (id_pais, nombre_pais) VALUES (30, 'México');
INSERT INTO Pais (id_pais, nombre_pais) VALUES (40, 'Costa Rica');
INSERT INTO Pais (id_pais, nombre_pais) VALUES (50, 'Colombia');

--Tabla provincia
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (10, 'Bogotá', 10);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (20, 'Medellín', 10);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (30, 'Cali', 10);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (40, 'San José', 20);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (50, 'Alajuela', 20);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (60, 'Cartago', 20);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (70, 'Panamá', 30);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (80, 'Colón', 30);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (90, 'Chiriquí', 30);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (100, 'California', 40);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (110, 'Texas', 40);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (120, 'Nueva York', 40);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (130, 'Ciudad de México', 50);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (140, 'Jalisco', 50);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (150, 'Nuevo León', 50);


--Insert canton
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (200, 'Usaquén', 10); 
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (210, 'El Poblado', 20);
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (220, 'Jamundí', 30);

INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (230, 'San José', 40);
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (240, 'Alajuela', 50); 
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (250, 'Paraíso', 60); 

INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (260, 'Panamá', 70); 
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (270, 'Colón', 80); 
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (280, 'David', 90);

INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (290, 'Los Angeles', 100);
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (300, 'Harris', 110);
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (310, 'New York', 120); 

INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (320, 'Cuauhtémoc', 130);
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (330, 'Guadalajara', 140); 
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (340, 'Monterrey', 150);


--insert distrio
INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (400, 'Usaquén Distrito 1', 200);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (410, 'El Poblado Distrito 1', 210);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (420, 'Jamundí Distrito 1', 220);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (430, 'San José Distrito 1', 230);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (440, 'Alajuela Distrito 1', 240);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (450, 'Paraíso Distrito 1', 250);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (460, 'Panamá Distrito 1', 260);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (470, 'Colón Distrito 1', 270);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (480, 'David Distrito 1', 280);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (490, 'Los Angeles District 1', 290);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (500, 'Harris District 1', 300);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (510, 'New York District 1', 310);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (520, 'Cuauhtémoc Distrito 1', 320);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (530, 'Guadalajara Distrito 1', 330);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (540, 'Monterrey Distrito 1', 340);


--inserts direccion
INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito) VALUES (600, 'Calle 1, Usaquén', 400);
INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito) VALUES (601, 'Avenida 2, San José', 430);
INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito) VALUES (602, 'Calle 3, Panamá', 460);
INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito) VALUES (603, 'Main Street, Los Angeles', 490);
INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito) VALUES (604, 'Avenida Reforma, Cuauhtémoc', 520);


--Inserts de clientes

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1001, 'Juan', 'Pérez', 'García', '2-0333-0543', '8445-6765', '8439-4523', 30, 'Masculino', 'juan@gmail.com', 600);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1002, 'María', 'González', 'López', '2-0344-0111', '8422-6655', '8559-3233', 25, 'Femenino', 'maria@gmail.com', 601);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1003, 'José', 'Martínez', 'Rodríguez', '1-0354-0545', '6544-6666', NULL, 45, 'Masculino', 'jose@gmail.com', 602);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1004, 'Ana', 'Fernández', 'Pérez', '1-0456-0987', '6123-4567', '6985-1234', 35, 'Femenino', 'ana@gmail.com', 603);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1005, 'Pedro', 'López', 'Sánchez', '1-0777-0567', '7834-5678', '7123-0987', 40, 'Masculino', 'pedro@gmail.com', 604);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1006, 'Laura', 'Hernández', 'García', '1-0999-0111', '7799-5566', NULL, 28, 'Femenino', 'laura@gmail.com', 600);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1007, 'Carlos', 'Díaz', 'Martínez', '1-0899-0789', '7111-8899', NULL, 33, 'Masculino', 'carlos@gmail.com', 601);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1008, 'Sofía', 'Pérez', 'González', '1-0567-0456', '7222-2233', '7333-3344', 29, 'Femenino', 'sofia@gmail.com', 602);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1009, 'Miguel', 'García', 'Fernández', '1-0444-0789', '7444-5555', '7555-6666', 37, 'Masculino', 'miguel@gmail.com', 603);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1010, 'Paula', 'Rodríguez', 'Hernández', '1-0656-0456', '7666-7777', '7777-8888', 31, 'Femenino', 'paula@gmail.com', 604);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1011, 'John', 'Smith', NULL, '123-45-6789', '555-123-4567', '555-987-6543', 40, 'Masculino', 'john@gmail.com', 603);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1012, 'Emily', 'Johnson', NULL, '987-65-4321', '555-222-3333', '555-444-5555', 35, 'Femenino', 'emily@gmail.com', 603);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1013, 'Michael', 'Williams', NULL, '456-78-9123', '555-666-7777', NULL, 50, 'Masculino', 'michael@gmail.com', 603);


--Inserts de categoria produco

-- Registro 1: Ropa de Hombre
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) 
VALUES (100, 'Ropa de Hombre', 'Prendas de vestir diseñadas para hombres.', 1);

-- Registro 2: Ropa de Mujer
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) 
VALUES (200, 'Ropa de Mujer', 'Prendas de vestir diseñadas para mujeres.', 1);

-- Registro 3: Ropa de Niños
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) 
VALUES (300, 'Ropa de Niños', 'Prendas de vestir diseñadas para niños.', 1);

-- Registro 4: Calzado
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) 
VALUES (400, 'Calzado', 'Zapatos, zapatillas y otros tipos de calzado.', 1);

-- Registro 5: Accesorios
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) 
VALUES (500, 'Accesorios', 'Bolsos, cinturones, sombreros y otros accesorios de moda.', 1);

-- Registro 6: Ropa Deportiva
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) 
VALUES (600, 'Ropa Deportiva', 'Prendas de vestir diseñadas específicamente para actividades deportivas.', 1);

-- Registro 7: Ropa Interior
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) 
VALUES (700, 'Ropa Interior', 'Prendas de ropa íntima para hombres y mujeres.', 1);

-- Registro 8: Ropa Formal
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) 
VALUES (800, 'Ropa Formal', 'Prendas de vestir formales adecuadas para eventos especiales y ocasiones elegantes.', 1);

-- Registro 9: Ropa Casual
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) 
VALUES (900, 'Ropa Casual', 'Prendas de vestir informales para uso diario.', 1);

-- Registro 10: Ropa de Bebé
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) 
VALUES (1000, 'Ropa de Bebé', 'Prendas de vestir para bebés y recién nacidos.', 1);