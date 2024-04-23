--Inserts para la DB
-- Inserts para la tabla Pais
INSERT INTO Pais (id_pais, nombre_pais) VALUES
(1, 'Costa Rica');

INSERT INTO Pais (id_pais, nombre_pais) VALUES
(2, 'España');

INSERT INTO Pais (id_pais, nombre_pais) VALUES
(3, 'Estados Unidos');

INSERT INTO Pais (id_pais, nombre_pais) VALUES
(4, 'México');

INSERT INTO Pais (id_pais, nombre_pais) VALUES
(5, 'Argentina');

INSERT INTO Pais (id_pais, nombre_pais) VALUES
(6, 'Brasil');

INSERT INTO Pais (id_pais, nombre_pais) VALUES
(7, 'Colombia');

INSERT INTO Pais (id_pais, nombre_pais) VALUES
(8, 'Chile');

INSERT INTO Pais (id_pais, nombre_pais) VALUES
(9, 'Perú');

-- Inserts para la tabla Provincia
INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES
(1, 'San José', 1);

INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES
(2, 'Alajuela', 1);

INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES
(3, 'Cartago', 1);

INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES
(4, 'Heredia', 1);

INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES
(5, 'Guanacaste', 1);

INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES
(6, 'Puntarenas', 1);

INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES
(7, 'Limón', 1);

INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES
(8, 'Madrid', 2);

INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES
(9, 'Barcelona', 2);

INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais) VALUES
(10, 'Valencia', 2);


-- Inserts para la tabla Canton
INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES
(1, 'San José', 1);

INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES
(2, 'Escazú', 1);

INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES
(3, 'Alajuela', 2);

INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES
(4, 'Cartago', 3);

INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES
(5, 'Heredia', 4);

INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES
(6, 'Liberia', 5);

INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES
(7, 'Puntarenas', 6);

INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES
(8, 'Limón', 7);

INSERT INTO Canton (id_canton, nombre_canton, id_provincia) VALUES
(9, 'Madrid', 8);



-- Inserts para la tabla Distrito
-- Inserts para la tabla Distrito
INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES
(1, 'Carmen', 1);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES
(2, 'San Antonio', 2);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES
(3, 'La Guácima', 3);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES
(4, 'Oriental', 4);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES
(5, 'Flores', 5);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES
(6, 'Cañas', 6);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES
(7, 'El Roble', 7);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES
(8, 'Matina', 8);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES
(9, 'Centro', 9);

INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton) VALUES
(10, 'Eixample', 10);

-- Inserts para la tabla DetalleDireccion
INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito) VALUES
(1, '100 metros norte de la iglesia', 1);

INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito) VALUES
(2, '200 metros oeste del parque', 2);

INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito) VALUES
(3, '50 metros sur del supermercado', 3);

INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito) VALUES
(4, '150 metros este de la plaza', 4);

INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito) VALUES
(5, '300 metros norte de la escuela', 5);

INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito) VALUES
(6, '400 metros sur del hospital', 6);

INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito) VALUES
(7, '250 metros oeste del banco', 7);

INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito) VALUES
(8, '50 metros norte del campo de fútbol', 8);

INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito) VALUES
(9, '100 metros este del mercado', 9);

INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito) VALUES
(10, '500 metros sur de la estación de tren', 10);


INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) VALUES
(1, 'Juan', 'González', 'López', '123456789A', '123456789', '987654321', 30, 'Masculino', 'juan@example.com', 1);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) VALUES
(2, 'María', 'Martínez', 'Sánchez', '987654321B', '987654321', '123456789', 28, 'Femenino', 'maria@example.com', 2);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) VALUES
(3, 'Pedro', 'Rodríguez', 'García', '654321987C', '654321987', '789456123', 35, 'Masculino', 'pedro@example.com', 3);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) VALUES
(4, 'Laura', 'López', 'Fernández', '321654987D', '321654987', '741852963', 32, 'Femenino', 'laura@example.com', 4);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) VALUES
(5, 'Carlos', 'Pérez', 'Martínez', '789456123E', '789456123', '159263487', 27, 'Masculino', 'carlos@example.com', 5);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) VALUES
(6, 'Ana', 'Sánchez', 'González', '456789123F', '456789123', '369258147', 29, 'Femenino', 'ana@example.com', 6);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) VALUES
(7, 'David', 'García', 'Rodríguez', '987123654G', '987123654', '852369741', 33, 'Masculino', 'david@example.com', 7);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) VALUES
(8, 'Sara', 'Fernández', 'López', '741852963H', '741852963', '654987321', 31, 'Femenino', 'sara@example.com', 8);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) VALUES
(9, 'Javier', 'Martínez', 'Pérez', '369258147I', '369258147', '456123789', 34, 'Masculino', 'javier@example.com', 9);

INSERT INTO Cliente (id_cliente, nombre_cliente, apellido_1, apellido_2, numero_identificacion, telefono_1, telefono_2, edad, genero, email, id_direccion) VALUES
(10, 'Elena', 'López', 'Sánchez', '159263487J', '159263487', '123789456', 26, 'Femenino', 'elena@example.com', 9);


-- Inserts para la tabla CategoriaProductoServicio
-- Insert para 'Electrónicos'
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) VALUES (1, 'Electrónicos', 'Productos electrónicos de consumo', 1);

-- Insert para 'Periféricos'
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) VALUES (2, 'Periféricos', 'Accesorios de computadora y dispositivos de entrada', 1);

-- Insert para 'Servicios Domésticos'
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) VALUES (3, 'Servicios Domésticos', 'Servicios de limpieza y mantenimiento para el hogar', 1);

-- Insert para 'Servicios Profesionales'
INSERT INTO CategoriaProductoServicio (id_categoria_producto_servicio, nombre, descripcion, activo) VALUES (4, 'Servicios Profesionales', 'Servicios de consultoría y diseño para empresas', 1);

-- Inserts para la tabla ProductoServicio
-- Insert para 'Laptop'
INSERT INTO ProductoServicio (id_producto_servicio, nombre, descripcion, id_categoria, precio, activo) VALUES (1, 'Laptop', 'Laptop de última generación', 1, 1500.00, 1);

-- Insert para 'Teléfono móvil'
INSERT INTO ProductoServicio (id_producto_servicio, nombre, descripcion, id_categoria, precio, activo) VALUES (2, 'Teléfono móvil', 'Teléfono inteligente de alta gama', 1, 800.00, 1);

-- Insert para 'Tablet'
INSERT INTO ProductoServicio (id_producto_servicio, nombre, descripcion, id_categoria, precio, activo) VALUES (3, 'Tablet', 'Tableta con pantalla táctil', 1, 400.00, 1);

-- Insert para 'Impresora'
INSERT INTO ProductoServicio (id_producto_servicio, nombre, descripcion, id_categoria, precio, activo) VALUES (4, 'Impresora', 'Impresora láser multifuncional', 2, 300.00, 1);

-- Insert para 'Monitor'
INSERT INTO ProductoServicio (id_producto_servicio, nombre, descripcion, id_categoria, precio, activo) VALUES (5, 'Monitor', 'Monitor de pantalla plana', 2, 200.00, 1);

-- Insert para 'Teclado y ratón'
INSERT INTO ProductoServicio (id_producto_servicio, nombre, descripcion, id_categoria, precio, activo) VALUES (6, 'Teclado y ratón', 'Combo de teclado y ratón inalámbricos', 2, 50.00, 1);

-- Insert para 'Servicio de limpieza'
INSERT INTO ProductoServicio (id_producto_servicio, nombre, descripcion, id_categoria, precio, activo) VALUES (7, 'Servicio de limpieza', 'Servicio de limpieza profesional', 3, 80.00, 1);

-- Insert para 'Servicio de reparación'
INSERT INTO ProductoServicio (id_producto_servicio, nombre, descripcion, id_categoria, precio, activo) VALUES (8, 'Servicio de reparación', 'Reparación de dispositivos electrónicos', 3, 100.00, 1);

-- Insert para 'Consultoría empresarial'
INSERT INTO ProductoServicio (id_producto_servicio, nombre, descripcion, id_categoria, precio, activo) VALUES (9, 'Consultoría empresarial', 'Servicio de consultoría para empresas', 4, 200.00, 1);

-- Insert para 'Diseño gráfico'
INSERT INTO ProductoServicio (id_producto_servicio, nombre, descripcion, id_categoria, precio, activo) VALUES (10, 'Diseño gráfico', 'Servicio de diseño gráfico creativo', 4, 150.00, 1);




-- Inserts para la tabla Proveedor
-- Insert para 'ElectroMundo'
INSERT INTO Proveedor (id_proveedor, nombre_proveedor, proveedor_DNI, id_direccion, telefono, email) VALUES (1, 'ElectroMundo', '123456789A', 1, '123456789', 'info@electromundo.com');

-- Insert para 'TecnoShop'
INSERT INTO Proveedor (id_proveedor, nombre_proveedor, proveedor_DNI, id_direccion, telefono, email) VALUES (2, 'TecnoShop', '987654321B', 2, '987654321', 'info@tecno-shop.com');

-- Insert para 'ServiLimpio'
INSERT INTO Proveedor (id_proveedor, nombre_proveedor, proveedor_DNI, id_direccion, telefono, email) VALUES (3, 'ServiLimpio', '654321987C', 3, '654321987', 'info@servilimpio.com');

-- Insert para 'TechRepair'
INSERT INTO Proveedor (id_proveedor, nombre_proveedor, proveedor_DNI, id_direccion, telefono, email) VALUES (4, 'TechRepair', '321654987D', 4, '321654987', 'info@techrepair.com');

-- Insert para 'ConsultoraPro'
INSERT INTO Proveedor (id_proveedor, nombre_proveedor, proveedor_DNI, id_direccion, telefono, email) VALUES (5, 'ConsultoraPro', '789456123E', 5, '789456123', 'info@consultorapro.com');

-- Insert para 'DiseñoCreativo'
INSERT INTO Proveedor (id_proveedor, nombre_proveedor, proveedor_DNI, id_direccion, telefono, email) VALUES (6, 'DiseñoCreativo', '456789123F', 6, '456789123', 'info@disenocreativo.com');

-- Insert para 'ElectroSolutions'
INSERT INTO Proveedor (id_proveedor, nombre_proveedor, proveedor_DNI, id_direccion, telefono, email) VALUES (7, 'ElectroSolutions', '987123654G', 7, '987123654', 'info@electrosolutions.com');

-- Insert para 'LimpiezaExpress'
INSERT INTO Proveedor (id_proveedor, nombre_proveedor, proveedor_DNI, id_direccion, telefono, email) VALUES (8, 'LimpiezaExpress', '741852963H', 8, '741852963', 'info@limpiezaexpress.com');

-- Insert para 'ConsultingExperts'
INSERT INTO Proveedor (id_proveedor, nombre_proveedor, proveedor_DNI, id_direccion, telefono, email) VALUES (9, 'ConsultingExperts', '369258147I', 9, '369258147', 'info@consultingexperts.com');

-- Insert para 'GraphicDesign'
INSERT INTO Proveedor (id_proveedor, nombre_proveedor, proveedor_DNI, id_direccion, telefono, email) VALUES (10, 'GraphicDesign', '159263487J', 9, '159263487', 'info@graphicdesign.com');


-- Inserts para la tabla Departamento
-- Insert para 'Ventas'
INSERT INTO Departamento (id_departamento, nombre, detalle) VALUES (1, 'Ventas', 'Departamento de ventas y atención al cliente');

-- Insert para 'Tecnología'
INSERT INTO Departamento (id_departamento, nombre, detalle) VALUES (2, 'Tecnología', 'Departamento de tecnología y desarrollo');

-- Insert para 'Recursos Humanos'
INSERT INTO Departamento (id_departamento, nombre, detalle) VALUES (3, 'Recursos Humanos', 'Departamento de recursos humanos y administración');

-- Insert para 'Servicios Profesionales'
INSERT INTO Departamento (id_departamento, nombre, detalle) VALUES (4, 'Servicios Profesionales', 'Departamento de servicios profesionales y consultoría');

-- Insert para id_salario = 1
INSERT INTO Salario (id_salario, cantidad, rebajos, total_salario) VALUES (1, 2000.00, 200.00, 1800.00);

-- Insert para id_salario = 2
INSERT INTO Salario (id_salario, cantidad, rebajos, total_salario) VALUES (2, 2200.00, 220.00, 1980.00);

-- Insert para id_salario = 3
INSERT INTO Salario (id_salario, cantidad, rebajos, total_salario) VALUES (3, 2500.00, 250.00, 2250.00);

-- Insert para id_salario = 4
INSERT INTO Salario (id_salario, cantidad, rebajos, total_salario) VALUES (4, 1800.00, 180.00, 1620.00);

-- Insert para id_salario = 5
INSERT INTO Salario (id_salario, cantidad, rebajos, total_salario) VALUES (5, 2100.00, 210.00, 1890.00);

-- Insert para id_salario = 6
INSERT INTO Salario (id_salario, cantidad, rebajos, total_salario) VALUES (6, 2400.00, 240.00, 2160.00);

-- Insert para id_salario = 7
INSERT INTO Salario (id_salario, cantidad, rebajos, total_salario) VALUES (7, 1900.00, 190.00, 1710.00);

-- Insert para id_salario = 8
INSERT INTO Salario (id_salario, cantidad, rebajos, total_salario) VALUES (8, 2300.00, 230.00, 2070.00);

-- Insert para id_salario = 9
INSERT INTO Salario (id_salario, cantidad, rebajos, total_salario) VALUES (9, 2600.00, 260.00, 2340.00);

-- Insert para id_salario = 10
INSERT INTO Salario (id_salario, cantidad, rebajos, total_salario) VALUES (10, 2700.00, 270.00, 2430.00);


-- Inserts para la tabla Empleado
-- Insert para Carlos
INSERT INTO Empleado (id_empleado, nombre_empleado, apellido_1, apellido_2, numero_identificacion, telefono_1, email, edad, fecha_nacimiento, estado_civil, id_direccion, id_departamento, id_salario, fecha_inicio) VALUES
(1, 'Carlos', 'Sánchez', 'Pérez', '123456789A', '123456789', 'carlos@example.com', 30, DATE '1994-05-15', 'Soltero', 1, 1, 1, DATE '2020-01-01');

-- Insert para Laura
INSERT INTO Empleado (id_empleado, nombre_empleado, apellido_1, apellido_2, numero_identificacion, telefono_1, email, edad, fecha_nacimiento, estado_civil, id_direccion, id_departamento, id_salario, fecha_inicio) VALUES
(2, 'Laura', 'González', 'Martínez', '987654321B', '987654321', 'laura@example.com', 28, DATE '1996-08-20', 'Casado', 2, 2, 2, DATE '2019-06-15');

-- Insert para Pedro
INSERT INTO Empleado (id_empleado, nombre_empleado, apellido_1, apellido_2, numero_identificacion, telefono_1, email, edad, fecha_nacimiento, estado_civil, id_direccion, id_departamento, id_salario, fecha_inicio) VALUES
(3, 'Pedro', 'Rodríguez', 'García', '654321987C', '654321987', 'pedro@example.com', 35, DATE '1989-12-10', 'Soltero', 3, 3, 3, DATE '2018-03-10');

-- Insert para María
INSERT INTO Empleado (id_empleado, nombre_empleado, apellido_1, apellido_2, numero_identificacion, telefono_1, email, edad, fecha_nacimiento, estado_civil, id_direccion, id_departamento, id_salario, fecha_inicio) VALUES
(4, 'María', 'Fernández', 'López', '321654987D', '321654987', 'maria@example.com', 32, DATE '1992-04-25', 'Casado', 4, 1, 4, DATE '2017-09-05');

-- Insert para Juan
INSERT INTO Empleado (id_empleado, nombre_empleado, apellido_1, apellido_2, numero_identificacion, telefono_1, email, edad, fecha_nacimiento, estado_civil, id_direccion, id_departamento, id_salario, fecha_inicio) VALUES
(5, 'Juan', 'Martínez', 'Sánchez', '789456123E', '789456123', 'juan@example.com', 27, DATE '1997-10-30', 'Soltero', 5, 2, 5, DATE '2016-12-20');

-- Insert para Ana
INSERT INTO Empleado (id_empleado, nombre_empleado, apellido_1, apellido_2, numero_identificacion, telefono_1, email, edad, fecha_nacimiento, estado_civil, id_direccion, id_departamento, id_salario, fecha_inicio) VALUES
(6, 'Ana', 'Pérez', 'González', '456789123F', '456789123', 'ana@example.com', 29, DATE '1995-07-05', 'Casado', 6, 3, 6, DATE '2015-08-10');

-- Insert para David
INSERT INTO Empleado (id_empleado, nombre_empleado, apellido_1, apellido_2, numero_identificacion, telefono_1, email, edad, fecha_nacimiento, estado_civil, id_direccion, id_departamento, id_salario, fecha_inicio) VALUES
(7, 'David', 'Sánchez', 'Rodríguez', '987123654G', '987123654', 'david@example.com', 33, DATE '1989-02-18', 'Soltero', 7, 1, 7, DATE '2014-05-25');

-- Insert para Sara
INSERT INTO Empleado (id_empleado, nombre_empleado, apellido_1, apellido_2, numero_identificacion, telefono_1, email, edad, fecha_nacimiento, estado_civil, id_direccion, id_departamento, id_salario, fecha_inicio) VALUES
(8, 'Sara', 'González', 'Martínez', '741852963H', '741852963', 'sara@example.com', 31, DATE '1991-09-12', 'Casado', 8, 2, 8, DATE '2013-02-15');

-- Insert para Javier
INSERT INTO Empleado (id_empleado, nombre_empleado, apellido_1, apellido_2, numero_identificacion, telefono_1, email, edad, fecha_nacimiento, estado_civil, id_direccion, id_departamento, id_salario, fecha_inicio) VALUES
(9, 'Javier', 'Martínez', 'López', '369258147I', '369258147', 'javier@example.com', 34, DATE '1988-06-28', 'Soltero', 9, 3, 9, DATE '2012-07-01');

-- Insert para Elena
INSERT INTO Empleado (id_empleado, nombre_empleado, apellido_1, apellido_2, numero_identificacion, telefono_1, email, edad, fecha_nacimiento, estado_civil, id_direccion, id_departamento, id_salario, fecha_inicio) VALUES
(10, 'Elena', 'Sánchez', 'Pérez', '159263487J', '159263487', 'elena@example.com', 26, DATE '1998-03-08', 'Casado', 9, 1, 10, DATE '2011-04-05');

-- Inserts para la tabla Inventario
-- Insert para id_inventario = 1
INSERT INTO Inventario (id_inventario, cantidad_productos, detalle, id_producto) VALUES (1, 50, 'Laptops en stock', 1);

-- Insert para id_inventario = 2
INSERT INTO Inventario (id_inventario, cantidad_productos, detalle, id_producto) VALUES (2, 100, 'Teléfonos móviles disponibles', 2);

-- Insert para id_inventario = 3
INSERT INTO Inventario (id_inventario, cantidad_productos, detalle, id_producto) VALUES (3, 30, 'Impresoras en almacén', 3);

-- Insert para id_inventario = 4
INSERT INTO Inventario (id_inventario, cantidad_productos, detalle, id_producto) VALUES (4, 80, 'Monitores listos para la venta', 4);

-- Insert para id_inventario = 5
INSERT INTO Inventario (id_inventario, cantidad_productos, detalle, id_producto) VALUES (5, 20, 'Tabletas disponibles', 5);

-- Insert para id_inventario = 6
INSERT INTO Inventario (id_inventario, cantidad_productos, detalle, id_producto) VALUES (6, 40, 'Teclados y ratones disponibles', 6);

-- Insert para id_inventario = 7
INSERT INTO Inventario (id_inventario, cantidad_productos, detalle, id_producto) VALUES (7, 60, 'Servicios de limpieza en agenda', 7);

-- Insert para id_inventario = 8
INSERT INTO Inventario (id_inventario, cantidad_productos, detalle, id_producto) VALUES (8, 70, 'Servicios de reparación en curso', 8);

-- Insert para id_inventario = 9
INSERT INTO Inventario (id_inventario, cantidad_productos, detalle, id_producto) VALUES (9, 10, 'Consultorías empresariales disponibles', 9);

-- Insert para id_inventario = 10
INSERT INTO Inventario (id_inventario, cantidad_productos, detalle, id_producto) VALUES (10, 15, 'Diseños gráficos pendientes de entrega', 10);


-- Insert para MetodoPago 1
INSERT INTO MetodoPago (id_metodo_pago, nombre_metodo, banco) VALUES
(1, 'Tarjeta de crédito', 'Banco Nacional');

-- Insert para MetodoPago 2
INSERT INTO MetodoPago (id_metodo_pago, nombre_metodo, banco) VALUES
(2, 'Transferencia bancaria', 'Banco Popular');

-- Insert para MetodoPago 3
INSERT INTO MetodoPago (id_metodo_pago, nombre_metodo, banco) VALUES
(3, 'Efectivo', 'Sin banco');


-- Inserts para la tabla Facturas
-- Insert para Factura 1
INSERT INTO Facturas (id_factura, fecha_emision, fecha_vencimiento, numero_fiscal, id_empleado, id_cliente, cantidad_total, iva_total, descuentos_bonificaciones_total, id_metodo_pago, total) VALUES
(1, DATE '2022-01-15', DATE '2022-02-15', '123ABC', 1, 1, 1500.00, 150.00, 0.00, 1, 1650.00);

-- Insert para Factura 2
INSERT INTO Facturas (id_factura, fecha_emision, fecha_vencimiento, numero_fiscal, id_empleado, id_cliente, cantidad_total, iva_total, descuentos_bonificaciones_total, id_metodo_pago, total) VALUES
(2, DATE '2022-02-20', DATE '2022-03-20', '456DEF', 2, 2, 800.00, 80.00, 0.00, 2, 880.00);

-- Insert para Factura 3
INSERT INTO Facturas (id_factura, fecha_emision, fecha_vencimiento, numero_fiscal, id_empleado, id_cliente, cantidad_total, iva_total, descuentos_bonificaciones_total, id_metodo_pago, total) VALUES
(3, DATE '2022-03-25', DATE '2022-04-25', '789GHI', 3, 3, 400.00, 40.00, 0.00, 1, 440.00);

-- Insert para Factura 4
INSERT INTO Facturas (id_factura, fecha_emision, fecha_vencimiento, numero_fiscal, id_empleado, id_cliente, cantidad_total, iva_total, descuentos_bonificaciones_total, id_metodo_pago, total) VALUES
(4, DATE '2022-04-10', DATE '2022-05-10', '123JKL', 4, 4, 300.00, 30.00, 0.00, 3, 330.00);

-- Insert para Factura 5
INSERT INTO Facturas (id_factura, fecha_emision, fecha_vencimiento, numero_fiscal, id_empleado, id_cliente, cantidad_total, iva_total, descuentos_bonificaciones_total, id_metodo_pago, total) VALUES
(5, DATE '2022-05-05', DATE '2022-06-05', '456MNO', 5, 5, 200.00, 20.00, 0.00, 2, 220.00);

-- Insert para Factura 6
INSERT INTO Facturas (id_factura, fecha_emision, fecha_vencimiento, numero_fiscal, id_empleado, id_cliente, cantidad_total, iva_total, descuentos_bonificaciones_total, id_metodo_pago, total) VALUES
(6, DATE '2022-06-20', DATE '2022-07-20', '789PQR', 6, 6, 50.00, 5.00, 0.00, 1, 55.00);

-- Insert para Factura 7
INSERT INTO Facturas (id_factura, fecha_emision, fecha_vencimiento, numero_fiscal, id_empleado, id_cliente, cantidad_total, iva_total, descuentos_bonificaciones_total, id_metodo_pago, total) VALUES
(7, DATE '2022-07-15', DATE '2022-08-15', '123STU', 7, 7, 100.00, 10.00, 0.00, 2, 110.00);

-- Insert para Factura 8
INSERT INTO Facturas (id_factura, fecha_emision, fecha_vencimiento, numero_fiscal, id_empleado, id_cliente, cantidad_total, iva_total, descuentos_bonificaciones_total, id_metodo_pago, total) VALUES
(8, DATE '2022-08-30', DATE '2022-09-30', '456VWX', 8, 8, 150.00, 15.00, 0.00, 3, 165.00);

-- Insert para Factura 9
INSERT INTO Facturas (id_factura, fecha_emision, fecha_vencimiento, numero_fiscal, id_empleado, id_cliente, cantidad_total, iva_total, descuentos_bonificaciones_total, id_metodo_pago, total) VALUES
(9, DATE '2022-09-05', DATE '2022-10-05', '789YZA', 9, 9, 180.00, 18.00, 0.00, 1, 198.00);

-- Insert para Factura 10
INSERT INTO Facturas (id_factura, fecha_emision, fecha_vencimiento, numero_fiscal, id_empleado, id_cliente, cantidad_total, iva_total, descuentos_bonificaciones_total, id_metodo_pago, total) VALUES
(10, DATE '2022-10-10', DATE '2022-11-10', '123BCD', 10, 10, 250.00, 25.00, 0.00, 2, 275.00);


-- Insert para Detalle_Factura 1
INSERT INTO Detalle_Factura (id_detalle_factura, id_producto, id_factura, cantidad, total_linea, descripcion_productos_servicios, descuentos_bonificaciones, iva) VALUES
(1, 1, 1, 1, 1500.00, 'Laptop de última generación', 0.00, 150.00);

-- Insert para Detalle_Factura 2
INSERT INTO Detalle_Factura (id_detalle_factura, id_producto, id_factura, cantidad, total_linea, descripcion_productos_servicios, descuentos_bonificaciones, iva) VALUES
(2, 2, 2, 1, 800.00, 'Teléfono inteligente de alta gama', 0.00, 80.00);

-- Insert para Detalle_Factura 3
INSERT INTO Detalle_Factura (id_detalle_factura, id_producto, id_factura, cantidad, total_linea, descripcion_productos_servicios, descuentos_bonificaciones, iva) VALUES
(3, 3, 3, 1, 400.00, 'Tableta con pantalla táctil', 0.00, 40.00);

-- Insert para Detalle_Factura 4
INSERT INTO Detalle_Factura (id_detalle_factura, id_producto, id_factura, cantidad, total_linea, descripcion_productos_servicios, descuentos_bonificaciones, iva) VALUES
(4, 4, 4, 1, 300.00, 'Impresora láser multifuncional', 0.00, 30.00);

-- Insert para Detalle_Factura 5
INSERT INTO Detalle_Factura (id_detalle_factura, id_producto, id_factura, cantidad, total_linea, descripcion_productos_servicios, descuentos_bonificaciones, iva) VALUES
(5, 5, 5, 1, 200.00, 'Monitor de pantalla plana', 0.00, 20.00);

-- Insert para Detalle_Factura 6
INSERT INTO Detalle_Factura (id_detalle_factura, id_producto, id_factura, cantidad, total_linea, descripcion_productos_servicios, descuentos_bonificaciones, iva) VALUES
(6, 6, 6, 1, 50.00, 'Combo de teclado y ratón inalámbricos', 0.00, 5.00);

-- Insert para Detalle_Factura 7
INSERT INTO Detalle_Factura (id_detalle_factura, id_producto, id_factura, cantidad, total_linea, descripcion_productos_servicios, descuentos_bonificaciones, iva) VALUES
(7, 7, 7, 1, 100.00, 'Servicio de limpieza profesional', 0.00, 10.00);

-- Insert para Detalle_Factura 8
INSERT INTO Detalle_Factura (id_detalle_factura, id_producto, id_factura, cantidad, total_linea, descripcion_productos_servicios, descuentos_bonificaciones, iva) VALUES
(8, 8, 8, 1, 150.00, 'Reparación de dispositivos electrónicos', 0.00, 15.00);

-- Insert para Detalle_Factura 9
INSERT INTO Detalle_Factura (id_detalle_factura, id_producto, id_factura, cantidad, total_linea, descripcion_productos_servicios, descuentos_bonificaciones, iva) VALUES
(9, 9, 9, 1, 180.00, 'Servicio de consultoría para empresas', 0.00, 18.00);

-- Insert para Detalle_Factura 10
INSERT INTO Detalle_Factura (id_detalle_factura, id_producto, id_factura, cantidad, total_linea, descripcion_productos_servicios, descuentos_bonificaciones, iva) VALUES
(10, 10, 10, 1, 250.00, 'Servicio de diseño gráfico creativo', 0.00, 25.00);


-- Inserts para la tabla Venta
-- Insert para Venta 1
INSERT INTO Venta (id_venta, id_empleado, id_factura, fecha_venta, detalle_venta) VALUES
(1, 1, 1, DATE '2022-01-15', 'Venta de laptop');

-- Insert para Venta 2
INSERT INTO Venta (id_venta, id_empleado, id_factura, fecha_venta, detalle_venta) VALUES
(2, 2, 2, DATE '2022-02-20', 'Venta de teléfono móvil');

-- Insert para Venta 3
INSERT INTO Venta (id_venta, id_empleado, id_factura, fecha_venta, detalle_venta) VALUES
(3, 3, 3, DATE '2022-03-25', 'Venta de tablet');

-- Insert para Venta 4
INSERT INTO Venta (id_venta, id_empleado, id_factura, fecha_venta, detalle_venta) VALUES
(4, 4, 4, DATE '2022-04-10', 'Venta de impresora');

-- Insert para Venta 5
INSERT INTO Venta (id_venta, id_empleado, id_factura, fecha_venta, detalle_venta) VALUES
(5, 5, 5, DATE '2022-05-05', 'Venta de monitor');

-- Insert para Venta 6
INSERT INTO Venta (id_venta, id_empleado, id_factura, fecha_venta, detalle_venta) VALUES
(6, 6, 6, DATE '2022-06-20', 'Venta de teclado y ratón');

-- Insert para Venta 7
INSERT INTO Venta (id_venta, id_empleado, id_factura, fecha_venta, detalle_venta) VALUES
(7, 7, 7, DATE '2022-07-15', 'Venta de servicio de limpieza');

-- Insert para Venta 8
INSERT INTO Venta (id_venta, id_empleado, id_factura, fecha_venta, detalle_venta) VALUES
(8, 8, 8, DATE '2022-08-30', 'Venta de servicio de reparación');

-- Insert para Venta 9
INSERT INTO Venta (id_venta, id_empleado, id_factura, fecha_venta, detalle_venta) VALUES
(9, 9, 9, DATE '2022-09-05', 'Venta de consultoría empresarial');

-- Insert para Venta 10
INSERT INTO Venta (id_venta, id_empleado, id_factura, fecha_venta, detalle_venta) VALUES
(10, 10, 10, DATE '2022-10-10', 'Venta de diseño gráfico');


-- Inserts para la tabla Pedido
-- Insert para Pedido 1
INSERT INTO Pedido (id_pedido, detalle_pedido, dinero_total, id_cliente, fecha_pedido) VALUES
(1, 'Pedido de laptops', 15000.00, 1, DATE '2022-01-15');

-- Insert para Pedido 2
INSERT INTO Pedido (id_pedido, detalle_pedido, dinero_total, id_cliente, fecha_pedido) VALUES
(2, 'Pedido de teléfonos móviles', 8000.00, 2, DATE '2022-02-20');

-- Insert para Pedido 3
INSERT INTO Pedido (id_pedido, detalle_pedido, dinero_total, id_cliente, fecha_pedido) VALUES
(3, 'Pedido de tablets', 4000.00, 3, DATE '2022-03-25');

-- Insert para Pedido 4
INSERT INTO Pedido (id_pedido, detalle_pedido, dinero_total, id_cliente, fecha_pedido) VALUES
(4, 'Pedido de impresoras', 3000.00, 4, DATE '2022-04-10');

-- Insert para Pedido 5
INSERT INTO Pedido (id_pedido, detalle_pedido, dinero_total, id_cliente, fecha_pedido) VALUES
(5, 'Pedido de monitores', 2000.00, 5, DATE '2022-05-05');

-- Insert para Pedido 6
INSERT INTO Pedido (id_pedido, detalle_pedido, dinero_total, id_cliente, fecha_pedido) VALUES
(6, 'Pedido de teclados y ratones', 500.00, 6, DATE '2022-06-20');

-- Insert para Pedido 7
INSERT INTO Pedido (id_pedido, detalle_pedido, dinero_total, id_cliente, fecha_pedido) VALUES
(7, 'Pedido de servicios de limpieza', 1000.00, 7, DATE '2022-07-15');

-- Insert para Pedido 8
INSERT INTO Pedido (id_pedido, detalle_pedido, dinero_total, id_cliente, fecha_pedido) VALUES
(8, 'Pedido de servicios de reparación', 1500.00, 8, DATE '2022-08-30');

-- Insert para Pedido 9
INSERT INTO Pedido (id_pedido, detalle_pedido, dinero_total, id_cliente, fecha_pedido) VALUES
(9, 'Pedido de consultorías empresariales', 1800.00, 9, DATE '2022-09-05');

-- Insert para Pedido 10
INSERT INTO Pedido (id_pedido, detalle_pedido, dinero_total, id_cliente, fecha_pedido) VALUES
(10, 'Pedido de diseños gráficos', 2500.00, 10, DATE '2022-10-10');

-- Inserts para la tabla DetallePedido
-- Insert para DetallePedido 1
INSERT INTO DetallePedido (id_detalle_pedido, cantidad_productos, id_producto, id_pedido) VALUES
(1, 10, 1, 1);

-- Insert para DetallePedido 2
INSERT INTO DetallePedido (id_detalle_pedido, cantidad_productos, id_producto, id_pedido) VALUES
(2, 20, 2, 2);

-- Insert para DetallePedido 3
INSERT INTO DetallePedido (id_detalle_pedido, cantidad_productos, id_producto, id_pedido) VALUES
(3, 5, 3, 3);

-- Insert para DetallePedido 4
INSERT INTO DetallePedido (id_detalle_pedido, cantidad_productos, id_producto, id_pedido) VALUES
(4, 4, 4, 4);

-- Insert para DetallePedido 5
INSERT INTO DetallePedido (id_detalle_pedido, cantidad_productos, id_producto, id_pedido) VALUES
(5, 8, 5, 5);

-- Insert para DetallePedido 6
INSERT INTO DetallePedido (id_detalle_pedido, cantidad_productos, id_producto, id_pedido) VALUES
(6, 2, 6, 6);

-- Insert para DetallePedido 7
INSERT INTO DetallePedido (id_detalle_pedido, cantidad_productos, id_producto, id_pedido) VALUES
(7, 3, 7, 7);

-- Insert para DetallePedido 8
INSERT INTO DetallePedido (id_detalle_pedido, cantidad_productos, id_producto, id_pedido) VALUES
(8, 6, 8, 8);

-- Insert para DetallePedido 9
INSERT INTO DetallePedido (id_detalle_pedido, cantidad_productos, id_producto, id_pedido) VALUES
(9, 9, 9, 9);

-- Insert para DetallePedido 10
INSERT INTO DetallePedido (id_detalle_pedido, cantidad_productos, id_producto, id_pedido) VALUES
(10, 12, 10, 10);

-- Inserts para la tabla Cotizacion
-- Insert para Cotizacion 1
INSERT INTO Cotizacion (id_cotizacion, id_proveedor, detalle_cotizacion, nombre_producto, cantidad_productos, total_cotizacion) VALUES
(1, 1, 'Cotización para laptops', 'Laptop', 10, 15000.00);

-- Insert para Cotizacion 2
INSERT INTO Cotizacion (id_cotizacion, id_proveedor, detalle_cotizacion, nombre_producto, cantidad_productos, total_cotizacion) VALUES
(2, 2, 'Cotización para teléfonos móviles', 'Teléfono móvil', 20, 8000.00);

-- Insert para Cotizacion 3
INSERT INTO Cotizacion (id_cotizacion, id_proveedor, detalle_cotizacion, nombre_producto, cantidad_productos, total_cotizacion) VALUES
(3, 3, 'Cotización para tablets', 'Tablet', 5, 4000.00);

-- Insert para Cotizacion 4
INSERT INTO Cotizacion (id_cotizacion, id_proveedor, detalle_cotizacion, nombre_producto, cantidad_productos, total_cotizacion) VALUES
(4, 4, 'Cotización para impresoras', 'Impresora', 4, 3000.00);

-- Insert para Cotizacion 5
INSERT INTO Cotizacion (id_cotizacion, id_proveedor, detalle_cotizacion, nombre_producto, cantidad_productos, total_cotizacion) VALUES
(5, 5, 'Cotización para monitores', 'Monitor', 8, 2000.00);

-- Insert para Cotizacion 6
INSERT INTO Cotizacion (id_cotizacion, id_proveedor, detalle_cotizacion, nombre_producto, cantidad_productos, total_cotizacion) VALUES
(6, 6, 'Cotización para teclados y ratones', 'Teclado y ratón', 2, 500.00);

-- Insert para Cotizacion 7
INSERT INTO Cotizacion (id_cotizacion, id_proveedor, detalle_cotizacion, nombre_producto, cantidad_productos, total_cotizacion) VALUES
(7, 7, 'Cotización para servicios de limpieza', 'Servicio de limpieza', 3, 1000.00);

-- Insert para Cotizacion 8
INSERT INTO Cotizacion (id_cotizacion, id_proveedor, detalle_cotizacion, nombre_producto, cantidad_productos, total_cotizacion) VALUES
(8, 8, 'Cotización para servicios de reparación', 'Servicio de reparación', 6, 1500.00);

-- Insert para Cotizacion 9
INSERT INTO Cotizacion (id_cotizacion, id_proveedor, detalle_cotizacion, nombre_producto, cantidad_productos, total_cotizacion) VALUES
(9, 9, 'Cotización para consultorías empresariales', 'Consultoría empresarial', 9, 1800.00);

-- Insert para Cotizacion 10
INSERT INTO Cotizacion (id_cotizacion, id_proveedor, detalle_cotizacion, nombre_producto, cantidad_productos, total_cotizacion) VALUES
(10, 10, 'Cotización para diseños gráficos', 'Diseño gráfico', 12, 2500.00);

-- Inserts para la tabla Compra
-- Insert para Compra 1
INSERT INTO Compra (id_compra, id_encargado, id_cotizacion, detalle, fecha_compra) VALUES
(1, 1, 1, 'Compra de laptops',DATE '2022-01-15');

-- Insert para Compra 2
INSERT INTO Compra (id_compra, id_encargado, id_cotizacion, detalle, fecha_compra) VALUES
(2, 2, 2, 'Compra de teléfonos móviles',DATE '2022-02-20');

-- Insert para Compra 3
INSERT INTO Compra (id_compra, id_encargado, id_cotizacion, detalle, fecha_compra) VALUES
(3, 3, 3, 'Compra de tablets',DATE '2022-03-25');

-- Insert para Compra 4
INSERT INTO Compra (id_compra, id_encargado, id_cotizacion, detalle, fecha_compra) VALUES
(4, 4, 4, 'Compra de impresoras',DATE '2022-04-10');

-- Insert para Compra 5
INSERT INTO Compra (id_compra, id_encargado, id_cotizacion, detalle, fecha_compra) VALUES
(5, 5, 5, 'Compra de monitores',DATE '2022-05-05');

-- Insert para Compra 6
INSERT INTO Compra (id_compra, id_encargado, id_cotizacion, detalle, fecha_compra) VALUES
(6, 6, 6, 'Compra de teclados y ratones',DATE '2022-06-20');

-- Insert para Compra 7
INSERT INTO Compra (id_compra, id_encargado, id_cotizacion, detalle, fecha_compra) VALUES
(7, 7, 7, 'Compra de servicios de limpieza', '2022-07-15');

-- Insert para Compra 8
INSERT INTO Compra (id_compra, id_encargado, id_cotizacion, detalle, fecha_compra) VALUES
(8, 8, 8, 'Compra de servicios de reparación',DATE '2022-08-30');

-- Insert para Compra 9
INSERT INTO Compra (id_compra, id_encargado, id_cotizacion, detalle, fecha_compra) VALUES
(9, 9, 9, 'Compra de consultorías empresariales', DATE '2022-09-05');

-- Insert para Compra 10
INSERT INTO Compra (id_compra, id_encargado, id_cotizacion, detalle, fecha_compra) VALUES
(10, 10, 10, 'Compra de diseños gráficos', DATE '2022-10-10');
-- Inserts para la tabla CuentasPorCobrar
-- Insert para CuentaPorCobrar 1
INSERT INTO CuentasPorCobrar (id_cuenta_pendiente, id_cliente, id_encargado, monto_debido, id_factura, fecha_ultimo_abono, fecha_vencimiento, detalle) VALUES
(1, 1, 1, 1650.00, 1,DATE '2022-01-31',DATE '2022-02-15', 'Pago de factura de laptop');

-- Insert para CuentaPorCobrar 2
INSERT INTO CuentasPorCobrar (id_cuenta_pendiente, id_cliente, id_encargado, monto_debido, id_factura, fecha_ultimo_abono, fecha_vencimiento, detalle) VALUES
(2, 2, 2, 880.00, 2,DATE '2022-02-28',DATE '2022-03-20', 'Pago de factura de teléfono móvil');

-- Insert para CuentaPorCobrar 3
INSERT INTO CuentasPorCobrar (id_cuenta_pendiente, id_cliente, id_encargado, monto_debido, id_factura, fecha_ultimo_abono, fecha_vencimiento, detalle) VALUES
(3, 3, 3, 440.00, 3,DATE '2022-03-31',DATE '2022-04-25', 'Pago de factura de tablet');

-- Insert para CuentaPorCobrar 4
INSERT INTO CuentasPorCobrar (id_cuenta_pendiente, id_cliente, id_encargado, monto_debido, id_factura, fecha_ultimo_abono, fecha_vencimiento, detalle) VALUES
(4, 4, 4, 330.00, 4,DATE '2022-04-30',DATE '2022-05-10', 'Pago de factura de impresora');

-- Insert para CuentaPorCobrar 5
INSERT INTO CuentasPorCobrar (id_cuenta_pendiente, id_cliente, id_encargado, monto_debido, id_factura, fecha_ultimo_abono, fecha_vencimiento, detalle) VALUES
(5, 5, 5, 220.00, 5,DATE '2022-05-31',DATE '2022-06-05', 'Pago de factura de monitor');

-- Insert para CuentaPorCobrar 6
INSERT INTO CuentasPorCobrar (id_cuenta_pendiente, id_cliente, id_encargado, monto_debido, id_factura, fecha_ultimo_abono, fecha_vencimiento, detalle) VALUES
(6, 6, 6, 55.00, 6,DATE '2022-06-30',DATE '2022-07-20', 'Pago de factura de teclado y ratón');

-- Insert para CuentaPorCobrar 7
INSERT INTO CuentasPorCobrar (id_cuenta_pendiente, id_cliente, id_encargado, monto_debido, id_factura, fecha_ultimo_abono, fecha_vencimiento, detalle) VALUES
(7, 7, 7, 110.00, 7,DATE '2022-07-31',DATE '2022-08-15', 'Pago de factura de servicio de limpieza');

-- Insert para CuentaPorCobrar 8
INSERT INTO CuentasPorCobrar (id_cuenta_pendiente, id_cliente, id_encargado, monto_debido, id_factura, fecha_ultimo_abono, fecha_vencimiento, detalle) VALUES
(8, 8, 8, 165.00, 8,DATE '2022-08-31',DATE '2022-09-30', 'Pago de factura de servicio de reparación');

-- Insert para CuentaPorCobrar 9
INSERT INTO CuentasPorCobrar (id_cuenta_pendiente, id_cliente, id_encargado, monto_debido, id_factura, fecha_ultimo_abono, fecha_vencimiento, detalle) VALUES
(9, 9, 9, 198.00, 9,DATE '2022-09-30',DATE '2022-10-05', 'Pago de factura de consultoría empresarial');

-- Insert para CuentaPorCobrar 10
INSERT INTO CuentasPorCobrar (id_cuenta_pendiente, id_cliente, id_encargado, monto_debido, id_factura, fecha_ultimo_abono, fecha_vencimiento, detalle) VALUES
(10, 10, 10, 275.00, 10,DATE '2022-10-31',DATE '2022-11-10', 'Pago de factura de diseño gráfico');


-- Inserts para la tabla Envio
-- Insert para Envio 1
INSERT INTO Envio (id_envio, id_cliente, id_direccion, id_factura, detalle_envio, fecha_envio) VALUES
(1, 1, 1, 1, 'Envío de laptop',DATE '2022-01-15');

-- Insert para Envio 2
INSERT INTO Envio (id_envio, id_cliente, id_direccion, id_factura, detalle_envio, fecha_envio) VALUES
(2, 2, 2, 2, 'Envío de teléfono móvil',DATE '2022-02-20');

-- Insert para Envio 3
INSERT INTO Envio (id_envio, id_cliente, id_direccion, id_factura, detalle_envio, fecha_envio) VALUES
(3, 3, 3, 3, 'Envío de tablet',DATE '2022-03-25');

-- Insert para Envio 4
INSERT INTO Envio (id_envio, id_cliente, id_direccion, id_factura, detalle_envio, fecha_envio) VALUES
(4, 4, 4, 4, 'Envío de impresora',DATE '2022-04-10');

-- Insert para Envio 5
INSERT INTO Envio (id_envio, id_cliente, id_direccion, id_factura, detalle_envio, fecha_envio) VALUES
(5, 5, 5, 5, 'Envío de monitor',DATE '2022-05-05');

-- Insert para Envio 6
INSERT INTO Envio (id_envio, id_cliente, id_direccion, id_factura, detalle_envio, fecha_envio) VALUES
(6, 6, 6, 6, 'Envío de teclado y ratón',DATE '2022-06-20');

-- Insert para Envio 7
INSERT INTO Envio (id_envio, id_cliente, id_direccion, id_factura, detalle_envio, fecha_envio) VALUES
(7, 7, 7, 7, 'Envío de servicio de limpieza',DATE '2022-07-15');

-- Insert para Envio 8
INSERT INTO Envio (id_envio, id_cliente, id_direccion, id_factura, detalle_envio, fecha_envio) VALUES
(8, 8, 8, 8, 'Envío de servicio de reparación',DATE '2022-08-30');

-- Insert para Envio 9
INSERT INTO Envio (id_envio, id_cliente, id_direccion, id_factura, detalle_envio, fecha_envio) VALUES
(9, 9, 9, 9, 'Envío de consultoría empresarial',DATE '2022-09-05');

-- Insert para Envio 10
INSERT INTO Envio (id_envio, id_cliente, id_direccion, id_factura, detalle_envio, fecha_envio) VALUES
(10, 10, 9, 10, 'Envío de diseño gráfico',DATE '2022-10-10');


-- Inserts para la tabla CampanaMarketing
-- Insert para CampanaMarketing 1
INSERT INTO CampanaMarketing (id_campana_marketing, nombre_campana, descripcion, id_encargado, fecha_inicio, fecha_fin, objetivo_campana, presupuesto, tipo_campana, variables) VALUES
(1, 'Campaña de verano', 'Promoción de productos de verano', 1,DATE '2022-06-01',DATE '2022-09-01', 'Incrementar las ventas durante el verano', 5000.00, 'Estacional', 'Productos de verano');

-- Insert para CampanaMarketing 2
INSERT INTO CampanaMarketing (id_campana_marketing, nombre_campana, descripcion, id_encargado, fecha_inicio, fecha_fin, objetivo_campana, presupuesto, tipo_campana, variables) VALUES
(2, 'Campaña navideña', 'Ofertas especiales para Navidad', 2,DATE '2022-11-01',DATE '2022-12-31', 'Aumentar las ventas en la temporada navideña', 7000.00, 'Estacional', 'Productos navideños');

-- Insert para CampanaMarketing 3
INSERT INTO CampanaMarketing (id_campana_marketing, nombre_campana, descripcion, id_encargado, fecha_inicio, fecha_fin, objetivo_campana, presupuesto, tipo_campana, variables) VALUES
(3, 'Campaña de descuentos', 'Descuentos en todos los productos', 3,DATE '2022-04-01',DATE '2022-04-30', 'Fidelizar clientes y atraer nuevos', 3000.00, 'Promocional', 'Descuentos generales');

-- Insert para CampanaMarketing 4
INSERT INTO CampanaMarketing (id_campana_marketing, nombre_campana, descripcion, id_encargado, fecha_inicio, fecha_fin, objetivo_campana, presupuesto, tipo_campana, variables) VALUES
(4, 'Campaña de lanzamiento', 'Promoción del nuevo producto', 4,DATE '2022-03-01', DATE'2022-05-01', 'Dar a conocer el nuevo producto en el mercado', 4000.00, 'Lanzamiento', 'Nuevo producto');

-- Insert para CampanaMarketing 5
INSERT INTO CampanaMarketing (id_campana_marketing, nombre_campana, descripcion, id_encargado, fecha_inicio, fecha_fin, objetivo_campana, presupuesto, tipo_campana, variables) VALUES
(5, 'Campaña de rebajas', 'Grandes rebajas en toda la tienda', 5,DATE '2022-07-01',DATE '2022-08-31', 'Vaciar el inventario de temporada pasada', 6000.00, 'Liquidación', 'Productos de temporada pasada');

-- Inserts para la tabla MetricaKPI
-- Insert para MetricaKPI 1
INSERT INTO MetricaKPI (id_metrica_kpi, tipo_metrica, descripcion, id_campana, valor_metrica, resultado_metrica) VALUES
(1, 'Ventas', 'Total de ventas realizadas durante la campaña', 1, 15000.00, 'Superado');

-- Insert para MetricaKPI 2
INSERT INTO MetricaKPI (id_metrica_kpi, tipo_metrica, descripcion, id_campana, valor_metrica, resultado_metrica) VALUES
(2, 'Ingresos', 'Ingresos generados durante la campaña', 2, 20000.00, 'Superado');

-- Insert para MetricaKPI 3
INSERT INTO MetricaKPI (id_metrica_kpi, tipo_metrica, descripcion, id_campana, valor_metrica, resultado_metrica) VALUES
(3, 'Clientes nuevos', 'Número de nuevos clientes adquiridos', 3, 500, 'Superado');

-- Insert para MetricaKPI 4
INSERT INTO MetricaKPI (id_metrica_kpi, tipo_metrica, descripcion, id_campana, valor_metrica, resultado_metrica) VALUES
(4, 'Impacto del producto', 'Número de impresiones del producto', 4, 100000, 'Superado');

-- Insert para MetricaKPI 5
INSERT INTO MetricaKPI (id_metrica_kpi, tipo_metrica, descripcion, id_campana, valor_metrica, resultado_metrica) VALUES
(5, 'Rotación de inventario', 'Número de productos vendidos', 5, 2000, 'Superado');

