
--Llenado de las tablas de la base de datos con infotmaci�n gen�rica de ejemplo

--tabla pa�s
INSERT INTO Pais (id_pais, nombre_pais) VALUES (10, 'Estados Unidos');
INSERT INTO Pais (id_pais, nombre_pais) VALUES (20, 'Panam�');
INSERT INTO Pais (id_pais, nombre_pais) VALUES (30, 'M�xico');
INSERT INTO Pais (id_pais, nombre_pais) VALUES (40, 'Costa Rica');
INSERT INTO Pais (id_pais, nombre_pais) VALUES (50, 'Colombia');

--Tabla provincia
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (10, 'Bogot�', 10);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (20, 'Medell�n', 10);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (30, 'Cali', 10);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (40, 'San Jos�', 20);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (50, 'Alajuela', 20);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (60, 'Cartago', 20);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (70, 'Panam�', 30);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (80, 'Col�n', 30);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (90, 'Chiriqu�', 30);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (100, 'California', 40);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (110, 'Texas', 40);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (120, 'Nueva York', 40);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (130, 'Ciudad de M�xico', 50);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (140, 'Jalisco', 50);
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES (150, 'Nuevo Le�n', 50);


--Insert canton
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (200, 'Usaqu�n', 10); 
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (210, 'El Poblado', 20);
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (220, 'Jamund�', 30);

INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (230, 'San Jos�', 40);
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (240, 'Alajuela', 50); 
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (250, 'Para�so', 60); 

INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (260, 'Panam�', 70); 
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (270, 'Col�n', 80); 
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (280, 'David', 90);

INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (290, 'Los Angeles', 100);
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (300, 'Harris', 110);
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (310, 'New York', 120); 

INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (320, 'Cuauht�moc', 130);
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (330, 'Guadalajara', 140); 
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES (340, 'Monterrey', 150);


--insert distrio
INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (400, 'Usaqu�n Distrito 1', 200);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (410, 'El Poblado Distrito 1', 210);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (420, 'Jamund� Distrito 1', 220);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (430, 'San Jos� Distrito 1', 230);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (440, 'Alajuela Distrito 1', 240);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (450, 'Para�so Distrito 1', 250);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (460, 'Panam� Distrito 1', 260);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (470, 'Col�n Distrito 1', 270);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (480, 'David Distrito 1', 280);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (490, 'Los Angeles District 1', 290);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (500, 'Harris District 1', 300);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (510, 'New York District 1', 310);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (520, 'Cuauht�moc Distrito 1', 320);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (530, 'Guadalajara Distrito 1', 330);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES (540, 'Monterrey Distrito 1', 340);


--inserts direccion
INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito) VALUES (600, 'Calle 1, Usaqu�n', 400);
INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito) VALUES (601, 'Avenida 2, San Jos�', 430);
INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito) VALUES (602, 'Calle 3, Panam�', 460);
INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito) VALUES (603, 'Main Street, Los Angeles', 490);
INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito) VALUES (604, 'Avenida Reforma, Cuauht�moc', 520);


--Inserts de clientes

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1001, 'Juan', 'P�rez', 'Garc�a', '2-0333-0543', '8445-6765', '8439-4523', 30, 'Masculino', 'juan@gmail.com', 600);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1002, 'Mar�a', 'Gonz�lez', 'L�pez', '2-0344-0111', '8422-6655', '8559-3233', 25, 'Femenino', 'maria@gmail.com', 601);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1003, 'Jos�', 'Mart�nez', 'Rodr�guez', '1-0354-0545', '6544-6666', NULL, 45, 'Masculino', 'jose@gmail.com', 602);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1004, 'Ana', 'Fern�ndez', 'P�rez', '1-0456-0987', '6123-4567', '6985-1234', 35, 'Femenino', 'ana@gmail.com', 603);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1005, 'Pedro', 'L�pez', 'S�nchez', '1-0777-0567', '7834-5678', '7123-0987', 40, 'Masculino', 'pedro@gmail.com', 604);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1006, 'Laura', 'Hern�ndez', 'Garc�a', '1-0999-0111', '7799-5566', NULL, 28, 'Femenino', 'laura@gmail.com', 600);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1007, 'Carlos', 'D�az', 'Mart�nez', '1-0899-0789', '7111-8899', NULL, 33, 'Masculino', 'carlos@gmail.com', 601);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1008, 'Sof�a', 'P�rez', 'Gonz�lez', '1-0567-0456', '7222-2233', '7333-3344', 29, 'Femenino', 'sofia@gmail.com', 602);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1009, 'Miguel', 'Garc�a', 'Fern�ndez', '1-0444-0789', '7444-5555', '7555-6666', 37, 'Masculino', 'miguel@gmail.com', 603);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1010, 'Paula', 'Rodr�guez', 'Hern�ndez', '1-0656-0456', '7666-7777', '7777-8888', 31, 'Femenino', 'paula@gmail.com', 604);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1011, 'John', 'Smith', NULL, '123-45-6789', '555-123-4567', '555-987-6543', 40, 'Masculino', 'john@gmail.com', 603);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1012, 'Emily', 'Johnson', NULL, '987-65-4321', '555-222-3333', '555-444-5555', 35, 'Femenino', 'emily@gmail.com', 603);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) 
VALUES (1013, 'Michael', 'Williams', NULL, '456-78-9123', '555-666-7777', NULL, 50, 'Masculino', 'michael@gmail.com', 603);


--Inserts de categoria produco

-- Registro 1: Ropa de Hombre
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) 
VALUES (100, 'Ropa de Hombre', 'Prendas de vestir dise�adas para hombres.', 1);

-- Registro 2: Ropa de Mujer
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) 
VALUES (200, 'Ropa de Mujer', 'Prendas de vestir dise�adas para mujeres.', 1);

-- Registro 3: Ropa de Ni�os
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) 
VALUES (300, 'Ropa de Ni�os', 'Prendas de vestir dise�adas para ni�os.', 1);

-- Registro 4: Calzado
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) 
VALUES (400, 'Calzado', 'Zapatos, zapatillas y otros tipos de calzado.', 1);

-- Registro 5: Accesorios
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) 
VALUES (500, 'Accesorios', 'Bolsos, cinturones, sombreros y otros accesorios de moda.', 1);

-- Registro 6: Ropa Deportiva
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) 
VALUES (600, 'Ropa Deportiva', 'Prendas de vestir dise�adas espec�ficamente para actividades deportivas.', 1);

-- Registro 7: Ropa Interior
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) 
VALUES (700, 'Ropa Interior', 'Prendas de ropa �ntima para hombres y mujeres.', 1);

-- Registro 8: Ropa Formal
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) 
VALUES (800, 'Ropa Formal', 'Prendas de vestir formales adecuadas para eventos especiales y ocasiones elegantes.', 1);

-- Registro 9: Ropa Casual
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) 
VALUES (900, 'Ropa Casual', 'Prendas de vestir informales para uso diario.', 1);

-- Registro 10: Ropa de Beb�
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) 
VALUES (1000, 'Ropa de Beb�', 'Prendas de vestir para beb�s y reci�n nacidos.', 1);

--INSERT A EMPLEADOS--

INSERT INTO Empleado (id_empleado, nombre_empleado, apellido_1, apellido_2, numero_identificacion, telefono_1, email, edad, fecha_nacimiento, estado_civil, id_direccion, id_departamento, id_salario, fecha_inicio) 
VALUES (1, 'Carlos', 'Gonz�lez', 'L�pez', '1-2345-6789', '8888-9999', 'carlos@example.com', 35, TO_DATE('1989-05-15', 'YYYY-MM-DD'), 'Casado', 600, 1, 1, TO_DATE('2015-08-20', 'YYYY-MM-DD'));

INSERT INTO Empleado (id_empleado, nombre_empleado, apellido_1, apellido_2, numero_identificacion, telefono_1, email, edad, fecha_nacimiento, estado_civil, id_direccion, id_departamento, id_salario, fecha_inicio) 
VALUES (2, 'Ana', 'Mart�nez', 'Rodr�guez', '2-3456-7890', '7777-8888', 'ana@example.com', 28, TO_DATE('1996-10-10', 'YYYY-MM-DD'), 'Soltero', 601, 2, 2, TO_DATE('2018-03-10', 'YYYY-MM-DD'));

INSERT INTO Empleado (id_empleado, nombre_empleado, apellido_1, apellido_2, numero_identificacion, telefono_1, email, edad, fecha_nacimiento, estado_civil, id_direccion, id_departamento, id_salario, fecha_inicio) 
VALUES (3, 'Laura', 'Fern�ndez', 'P�rez', '3-4567-8901', '6666-7777', 'laura@example.com', 40, TO_DATE('1982-07-20', 'YYYY-MM-DD'), 'Casado', 602, 3, 3, TO_DATE('2010-01-05', 'YYYY-MM-DD'));

--INSERT A PROVEEDOR--

INSERT INTO Proveedor (id_proveedor, nombre_proveedor, proveedor_DNI, id_direccion, telefono, email) 
VALUES (1, 'Fashion Supplier', '123456789', 603, '555-123-4567', 'supplier@example.com');

INSERT INTO Proveedor (id_proveedor, nombre_proveedor, proveedor_DNI, id_direccion, telefono, email) 
VALUES (2, 'Shoe Company', '987654321', 602, '555-987-6543', 'shoeco@example.com');

--INSERT A CAMPA�A MARKETING--

INSERT INTO CampanaMarketing (id_campana_marketing, nombre_campana, descripcion, id_encargado, fecha_inicio, fecha_fin, objetivo_campana, presupuesto, tipo_campana, variables) 
VALUES (1, 'Venta de Verano', 'Campa�a de ventas para la temporada de verano', 1, TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2024-08-31', 'YYYY-MM-DD'), 'Incrementar las ventas en un 20%', 5000.00, 'Publicidad', 'Redes sociales, folletos, anuncios en l�nea');

--INSERT A SALARIO--

INSERT INTO Salario (id_salario, cantidad, rebajos, total_salario) 
VALUES (1, 2500.00, 300.00, 2200.00);

INSERT INTO Salario (id_salario, cantidad, rebajos, total_salario) 
VALUES (2, 2800.00, 400.00, 2400.00);

INSERT INTO Salario (id_salario, cantidad, rebajos, total_salario) 
VALUES (3, 3000.00, 500.00, 2500.00);

INSERT INTO Salario (id_salario, cantidad, rebajos, total_salario) 
VALUES (4, 3200.00, 600.00, 2600.00);

INSERT INTO Salario (id_salario, cantidad, rebajos, total_salario) 
VALUES (5, 3500.00, 700.00, 2800.00);

-- INSERT A DEPARTAMENTO--

INSERT INTO Departamento (id_departamento, nombre, detalle) 
VALUES (1, 'Departamento A', 'Departamento de Ropa de hombre');

INSERT INTO Departamento (id_departamento, nombre, detalle) 
VALUES (2, 'Departamento B', 'Departamento de Ropa de mujer');

INSERT INTO Departamento (id_departamento, nombre, detalle) 
VALUES (3, 'Departamento C', 'Departamento de Ropa de ni�os');

INSERT INTO Departamento (id_departamento, nombre, detalle) 
VALUES (4, 'Departamento D', 'Departamento de Ropa deportiva');
