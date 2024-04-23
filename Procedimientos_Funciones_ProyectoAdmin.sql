---Procedimientos Almacenados para crear , editar,ver y almacenas los datos en las tablas

--PAIS

CREATE PROCEDURE CrearPais(
    p_id_pais INT,
    p_nombre_pais VARCHAR
)
AS
BEGIN
    INSERT INTO Pais (id_pais, nombre_pais)
    VALUES (p_id_pais, p_nombre_pais);
END;
--Actualziar
CREATE PROCEDURE Actualizar_Pais(
    id_pais INT,
    nombre_pais VARCHAR
)
AS
BEGIN
    UPDATE Pais
    SET nombre_pais = nombre_pais
    WHERE id_pais = id_pais;
END;

--Eliminar

CREATE PROCEDURE Eliminar_Pais(
    id_pais INT
)
AS
BEGIN
    DELETE FROM Pais
    WHERE id_pais = id_pais;
END;


--Listar
CREATE OR REPLACE PROCEDURE obtener_paises(
    paises OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN paises FOR
    SELECT * FROM pais;
END;

-- CRUD para Provincia

-- Crear
CREATE OR REPLACE PROCEDURE CrearProvincia(
    p_id_provincia INT,
    p_nombre_provincia VARCHAR,
    p_id_pais INT
)
AS
BEGIN
    INSERT INTO Provincia (id_provincia, nombre_provincia, id_pais)
    VALUES (p_id_provincia, p_nombre_provincia, p_id_pais);
END;


-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarProvincia(
    p_id_provincia INT,
    p_nombre_provincia VARCHAR,
    p_id_pais INT
)
AS
BEGIN
    UPDATE Provincia
    SET nombre_provincia = p_nombre_provincia, id_pais = p_id_pais
    WHERE id_provincia = p_id_provincia;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarProvincia(
    p_id_provincia INT
)
AS
BEGIN
    DELETE FROM Provincia
    WHERE id_provincia = p_id_provincia;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerProvincias(
    provincias OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN provincias FOR
    SELECT * FROM Provincia;
END;


-- CRUD para Canton

-- Crear
CREATE OR REPLACE PROCEDURE CrearCanton(
    p_id_canton INT,
    p_nombre_canton VARCHAR,
    p_id_provincia INT
)
AS
BEGIN
    INSERT INTO Canton (id_canton, nombre_canton, id_provincia)
    VALUES (p_id_canton, p_nombre_canton, p_id_provincia);
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarCanton(
    p_id_canton INT,
    p_nombre_canton VARCHAR,
    p_id_provincia INT
)
AS
BEGIN
    UPDATE Canton
    SET nombre_canton = p_nombre_canton, id_provincia = p_id_provincia
    WHERE id_canton = p_id_canton;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarCanton(
    p_id_canton INT
)
AS
BEGIN
    DELETE FROM Canton
    WHERE id_canton = p_id_canton;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerCantones(
    cantones OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN cantones FOR
    SELECT * FROM Canton;
END;
/


-- CRUD para Distrito

-- Crear
CREATE OR REPLACE PROCEDURE CrearDistrito(
    p_id_distrito INT,
    p_nombre_distrito VARCHAR(100),
    p_id_canton INT
)
AS
BEGIN
    INSERT INTO Distrito (id_distrito, nombre_distrito, id_canton)
    VALUES (p_id_distrito, p_nombre_distrito, p_id_canton);
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarDistrito(
    p_id_distrito INT,
    p_nombre_distrito VARCHAR(100),
    p_id_canton INT
)
AS
BEGIN
    UPDATE Distrito
    SET nombre_distrito = p_nombre_distrito, id_canton = p_id_canton
    WHERE id_distrito = p_id_distrito;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarDistrito(
    p_id_distrito INT
)
AS
BEGIN
    DELETE FROM Distrito
    WHERE id_distrito = p_id_distrito;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerDistritos(
    distritos OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN distritos FOR
    SELECT * FROM Distrito;
END;


-- CRUD para DetalleDireccion

-- Crear
CREATE OR REPLACE PROCEDURE CrearDetalleDireccion(
    p_id_direccion INT,
    p_detalle_direccion VARCHAR,
    p_id_distrito INT
)
AS
BEGIN
    INSERT INTO DetalleDireccion (id_direccion, detalle_direccion, id_distrito)
    VALUES (p_id_direccion, p_detalle_direccion, p_id_distrito);
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarDetalleDireccion(
    p_id_direccion INT,
    p_detalle_direccion VARCHAR,
    p_id_distrito INT
)
AS
BEGIN
    UPDATE DetalleDireccion
    SET detalle_direccion = p_detalle_direccion, id_distrito = p_id_distrito
    WHERE id_direccion = p_id_direccion;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarDetalleDireccion(
    p_id_direccion INT
)
AS
BEGIN
    DELETE FROM DetalleDireccion
    WHERE id_direccion = p_id_direccion;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerDetalleDirecciones(
    direcciones OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN direcciones FOR
    SELECT * FROM DetalleDireccion;
END;
/


-- CRUD para Cliente

-- Crear
CREATE OR REPLACE PROCEDURE CrearCliente(
    p_id_cliente INT,
    p_nombre_cliente VARCHAR,
    p_apellido_1 VARCHAR,
    p_apellido_2 VARCHAR,
    p_numero_identificacion VARCHAR,
    p_telefono_1 VARCHAR,
    p_telefono_2 VARCHAR,
    p_edad INT,
    p_genero VARCHAR,
    p_email VARCHAR,
    p_id_direccion INT
)
AS
BEGIN
    INSERT INTO Cliente (
        id_cliente, nombre_cliente, apellido_1, apellido_2,
        numero_identificacion, telefono_1, telefono_2,
        edad, genero, email, id_direccion
    )
    VALUES (
        p_id_cliente, p_nombre_cliente, p_apellido_1, p_apellido_2,
        p_numero_identificacion, p_telefono_1, p_telefono_2,
        p_edad, p_genero, p_email, p_id_direccion
    );
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarCliente(
    p_id_cliente INT,
    p_nombre_cliente VARCHAR,
    p_apellido_1 VARCHAR,
    p_apellido_2 VARCHAR,
    p_numero_identificacion VARCHAR,
    p_telefono_1 VARCHAR,
    p_telefono_2 VARCHAR,
    p_edad INT,
    p_genero VARCHAR,
    p_email VARCHAR,
    p_id_direccion INT
)
AS
BEGIN
    UPDATE Cliente
    SET nombre_cliente = p_nombre_cliente, apellido_1 = p_apellido_1,
        apellido_2 = p_apellido_2, numero_identificacion = p_numero_identificacion,
        telefono_1 = p_telefono_1, telefono_2 = p_telefono_2,
        edad = p_edad, genero = p_genero, email = p_email,
        id_direccion = p_id_direccion
    WHERE id_cliente = p_id_cliente;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarCliente(
    p_id_cliente INT
)
AS
BEGIN
    DELETE FROM Cliente
    WHERE id_cliente = p_id_cliente;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerClientes(
    clientes OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN clientes FOR
    SELECT * FROM Cliente;
END;
/


-- CRUD para ProductoServicio

-- Crear
CREATE OR REPLACE PROCEDURE CrearProductoServicio(
    p_id_producto_servicio INT,
    p_nombre VARCHAR,
    p_descripcion VARCHAR,
    p_id_categoria INT,
    p_precio DECIMAL,
    p_activo NUMBER
)
AS
BEGIN
    INSERT INTO ProductoServicio (
        id_producto_servicio, nombre, descripcion,
        id_categoria, precio, activo
    )
    VALUES (
        p_id_producto_servicio, p_nombre, p_descripcion,
        p_id_categoria, p_precio, p_activo
    );
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarProductoServicio(
    p_id_producto_servicio INT,
    p_nombre VARCHAR,
    p_descripcion VARCHAR,
    p_id_categoria INT,
    p_precio DECIMAL,
    p_activo NUMBER
)
AS
BEGIN
    UPDATE ProductoServicio
    SET nombre = p_nombre, descripcion = p_descripcion,
        id_categoria = p_id_categoria, precio = p_precio,
        activo = p_activo
    WHERE id_producto_servicio = p_id_producto_servicio;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarProductoServicio(
    p_id_producto_servicio INT
)
AS
BEGIN
    DELETE FROM ProductoServicio
    WHERE id_producto_servicio = p_id_producto_servicio;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerProductosServicios(
    productos OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN productos FOR
    SELECT * FROM ProductoServicio;
END;
/


-- CRUD para CategoriaProductoServicio

-- Crear
CREATE OR REPLACE PROCEDURE CrearCategoriaProductoServicio(
    p_id_categoria_producto_servicio INT,
    p_nombre VARCHAR,
    p_descripcion VARCHAR,
    p_activo NUMBER
)
AS
BEGIN
    INSERT INTO CategoriaProductoServicio (
        id_categoria_producto_servicio, nombre, descripcion, activo
    )
    VALUES (
        p_id_categoria_producto_servicio, p_nombre, p_descripcion, p_activo
    );
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarCategoriaProductoServicio(
    p_id_categoria_producto_servicio INT,
    p_nombre VARCHAR,
    p_descripcion VARCHAR,
    p_activo NUMBER
)
AS
BEGIN
    UPDATE CategoriaProductoServicio
    SET nombre = p_nombre, descripcion = p_descripcion,
        activo = p_activo
    WHERE id_categoria_producto_servicio = p_id_categoria_producto_servicio;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarCategoriaProductoServicio(
    p_id_categoria_producto_servicio INT
)
AS
BEGIN
    DELETE FROM CategoriaProductoServicio
    WHERE id_categoria_producto_servicio = p_id_categoria_producto_servicio;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerCategoriasProductoServicio(
    categorias OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN categorias FOR
    SELECT * FROM CategoriaProductoServicio;
END;
/


-- CRUD para Proveedor

-- Crear
CREATE OR REPLACE PROCEDURE CrearProveedor(
    p_id_proveedor INT,
    p_nombre_proveedor VARCHAR,
    p_proveedor_DNI VARCHAR,
    p_id_direccion INT,
    p_telefono VARCHAR,
    p_email VARCHAR
)
AS
BEGIN
    INSERT INTO Proveedor (
        id_proveedor, nombre_proveedor, proveedor_DNI, id_direccion,
        telefono, email
    )
    VALUES (
        p_id_proveedor, p_nombre_proveedor, p_proveedor_DNI,
        p_id_direccion, p_telefono, p_email
    );
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarProveedor(
    p_id_proveedor INT,
    p_nombre_proveedor VARCHAR,
    p_proveedor_DNI VARCHAR,
    p_id_direccion INT,
    p_telefono VARCHAR,
    p_email VARCHAR
)
AS
BEGIN
    UPDATE Proveedor
    SET nombre_proveedor = p_nombre_proveedor, proveedor_DNI = p_proveedor_DNI,
        id_direccion = p_id_direccion, telefono = p_telefono, email = p_email
    WHERE id_proveedor = p_id_proveedor;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarProveedor(
    p_id_proveedor INT
)
AS
BEGIN
    DELETE FROM Proveedor
    WHERE id_proveedor = p_id_proveedor;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerProveedores(
    proveedores OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN proveedores FOR
    SELECT * FROM Proveedor;
END;
/


-- CRUD para Departamento

-- Crear
CREATE OR REPLACE PROCEDURE CrearDepartamento(
    p_id_departamento INT,
    p_nombre VARCHAR,
    p_detalle VARCHAR
)
AS
BEGIN
    INSERT INTO Departamento (
        id_departamento, nombre, detalle
    )
    VALUES (
        p_id_departamento, p_nombre, p_detalle
    );
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarDepartamento(
    p_id_departamento INT,
    p_nombre VARCHAR,
    p_detalle VARCHAR
)
AS
BEGIN
    UPDATE Departamento
    SET nombre = p_nombre, detalle = p_detalle
    WHERE id_departamento = p_id_departamento;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarDepartamento(
    p_id_departamento INT
)
AS
BEGIN
    DELETE FROM Departamento
    WHERE id_departamento = p_id_departamento;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerDepartamentos(
    departamentos OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN departamentos FOR
    SELECT * FROM Departamento;
END;
/


-- CRUD para Salario

-- Crear
CREATE OR REPLACE PROCEDURE CrearSalario(
    p_id_salario INT,
    p_cantidad DECIMAL,
    p_rebajos DECIMAL,
    p_total_salario DECIMAL
)
AS
BEGIN
    INSERT INTO Salario (
        id_salario, cantidad, rebajos, total_salario
    )
    VALUES (
        p_id_salario, p_cantidad, p_rebajos, p_total_salario
    );
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarSalario(
    p_id_salario INT,
    p_cantidad DECIMAL,
    p_rebajos DECIMAL,
    p_total_salario DECIMAL
)
AS
BEGIN
    UPDATE Salario
    SET cantidad = p_cantidad, rebajos = p_rebajos,
        total_salario = p_total_salario
    WHERE id_salario = p_id_salario;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarSalario(
    p_id_salario INT
)
AS
BEGIN
    DELETE FROM Salario
    WHERE id_salario = p_id_salario;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerSalarios(
    salarios OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN salarios FOR
    SELECT * FROM Salario;
END;
/


-- CRUD para Empleado

-- Crear
CREATE OR REPLACE PROCEDURE CrearEmpleado(
    p_id_empleado INT,
    p_nombre_empleado VARCHAR,
    p_apellido_1 VARCHAR,
    p_apellido_2 VARCHAR,
    p_numero_identificacion VARCHAR,
    p_telefono_1 VARCHAR,
    p_email VARCHAR,
    p_edad INT,
    p_fecha_nacimiento DATE,
    p_estado_civil VARCHAR,
    p_id_direccion INT,
    p_id_departamento INT,
    p_id_salario INT,
    p_fecha_inicio DATE
)
AS
BEGIN
    INSERT INTO Empleado (
        id_empleado, nombre_empleado, apellido_1, apellido_2,
        numero_identificacion, telefono_1, email, edad,
        fecha_nacimiento, estado_civil, id_direccion,
        id_departamento, id_salario, fecha_inicio
    )
    VALUES (
        p_id_empleado, p_nombre_empleado, p_apellido_1, p_apellido_2,
        p_numero_identificacion, p_telefono_1, p_email, p_edad,
        p_fecha_nacimiento, p_estado_civil, p_id_direccion,
        p_id_departamento, p_id_salario, p_fecha_inicio
    );
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarEmpleado(
    p_id_empleado INT,
    p_nombre_empleado VARCHAR,
    p_apellido_1 VARCHAR,
    p_apellido_2 VARCHAR,
    p_numero_identificacion VARCHAR,
    p_telefono_1 VARCHAR,
    p_email VARCHAR,
    p_edad INT,
    p_fecha_nacimiento DATE,
    p_estado_civil VARCHAR,
    p_id_direccion INT,
    p_id_departamento INT,
    p_id_salario INT,
    p_fecha_inicio DATE
)
AS
BEGIN
    UPDATE Empleado
    SET nombre_empleado = p_nombre_empleado, apellido_1 = p_apellido_1,
        apellido_2 = p_apellido_2, numero_identificacion = p_numero_identificacion,
        telefono_1 = p_telefono_1, email = p_email, edad = p_edad,
        fecha_nacimiento = p_fecha_nacimiento, estado_civil = p_estado_civil,
        id_direccion = p_id_direccion, id_departamento = p_id_departamento,
        id_salario = p_id_salario, fecha_inicio = p_fecha_inicio
    WHERE id_empleado = p_id_empleado;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarEmpleado(
    p_id_empleado INT
)
AS
BEGIN
    DELETE FROM Empleado
    WHERE id_empleado = p_id_empleado;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerEmpleados(
    empleados OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN empleados FOR
    SELECT * FROM Empleado;
END;
/


-- CRUD para Inventario

-- Crear
CREATE OR REPLACE PROCEDURE CrearInventario(
    p_id_inventario INT,
    p_cantidad_productos INT,
    p_detalle VARCHAR,
    p_id_producto INT
)
AS
BEGIN
    INSERT INTO Inventario (
        id_inventario, cantidad_productos, detalle, id_producto
    )
    VALUES (
        p_id_inventario, p_cantidad_productos, p_detalle, p_id_producto
    );
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarInventario(
    p_id_inventario INT,
    p_cantidad_productos INT,
    p_detalle VARCHAR,
    p_id_producto INT
)
AS
BEGIN
    UPDATE Inventario
    SET cantidad_productos = p_cantidad_productos, detalle = p_detalle,
        id_producto = p_id_producto
    WHERE id_inventario = p_id_inventario;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarInventario(
    p_id_inventario INT
)
AS
BEGIN
    DELETE FROM Inventario
    WHERE id_inventario = p_id_inventario;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerInventarios(
    inventarios OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN inventarios FOR
    SELECT * FROM Inventario;
END;
/


-- CRUD para Facturas

-- Crear
CREATE OR REPLACE PROCEDURE CrearFactura(
    p_id_factura INT,
    p_fecha_emision DATE,
    p_fecha_vencimiento DATE,
    p_numero_fiscal VARCHAR,
    p_id_empleado INT,
    p_id_cliente INT,
    p_cantidad_total DECIMAL,
    p_iva_total DECIMAL,
    p_descuentos_bonificaciones_total DECIMAL,
    p_id_metodo_pago INT,
    p_total NUMBER
)
AS
BEGIN
    INSERT INTO Facturas (
        id_factura, fecha_emision, fecha_vencimiento, numero_fiscal,
        id_empleado, id_cliente, cantidad_total, iva_total,
        descuentos_bonificaciones_total, id_metodo_pago, total
    )
    VALUES (
        p_id_factura, p_fecha_emision, p_fecha_vencimiento, p_numero_fiscal,
        p_id_empleado, p_id_cliente, p_cantidad_total, p_iva_total,
        p_descuentos_bonificaciones_total, p_id_metodo_pago, p_total
    );
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarFactura(
    p_id_factura INT,
    p_fecha_emision DATE,
    p_fecha_vencimiento DATE,
    p_numero_fiscal VARCHAR,
    p_id_empleado INT,
    p_id_cliente INT,
    p_cantidad_total DECIMAL,
    p_iva_total DECIMAL,
    p_descuentos_bonificaciones_total DECIMAL,
    p_id_metodo_pago INT,
    p_total NUMBER
)
AS
BEGIN
    UPDATE Facturas
    SET fecha_emision = p_fecha_emision, fecha_vencimiento = p_fecha_vencimiento,
        numero_fiscal = p_numero_fiscal, id_empleado = p_id_empleado,
        id_cliente = p_id_cliente, cantidad_total = p_cantidad_total,
        iva_total = p_iva_total, descuentos_bonificaciones_total = p_descuentos_bonificaciones_total,
        id_metodo_pago = p_id_metodo_pago, total = p_total
    WHERE id_factura = p_id_factura;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarFactura(
    p_id_factura INT
)
AS
BEGIN
    DELETE FROM Facturas
    WHERE id_factura = p_id_factura;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerFacturas(
    facturas OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN facturas FOR
    SELECT * FROM Facturas;
END;
/


-- CRUD para Detalle_Factura

-- Crear
CREATE OR REPLACE PROCEDURE CrearDetalleFactura(
    p_id_detalle_factura INT,
    p_id_producto INT,
    p_id_factura INT,
    p_cantidad INT,
    p_total_linea DECIMAL,
    p_descripcion_productos_servicios VARCHAR,
    p_descuentos_bonificaciones DECIMAL,
    p_iva DECIMAL
)
AS
BEGIN
    INSERT INTO Detalle_Factura (
        id_detalle_factura, id_producto, id_factura, cantidad,
        total_linea, descripcion_productos_servicios, descuentos_bonificaciones, iva
    )
    VALUES (
        p_id_detalle_factura, p_id_producto, p_id_factura, p_cantidad,
        p_total_linea, p_descripcion_productos_servicios, p_descuentos_bonificaciones, p_iva
    );
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarDetalleFactura(
    p_id_detalle_factura INT,
    p_id_producto INT,
    p_id_factura INT,
    p_cantidad INT,
    p_total_linea DECIMAL,
    p_descripcion_productos_servicios VARCHAR,
    p_descuentos_bonificaciones DECIMAL,
    p_iva DECIMAL
)
AS
BEGIN
    UPDATE Detalle_Factura
    SET id_producto = p_id_producto, id_factura = p_id_factura,
        cantidad = p_cantidad, total_linea = p_total_linea,
        descripcion_productos_servicios = p_descripcion_productos_servicios,
        descuentos_bonificaciones = p_descuentos_bonificaciones, iva = p_iva
    WHERE id_detalle_factura = p_id_detalle_factura;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarDetalleFactura(
    p_id_detalle_factura INT
)
AS
BEGIN
    DELETE FROM Detalle_Factura
    WHERE id_detalle_factura = p_id_detalle_factura;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerDetallesFactura(
    detalles_factura OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN detalles_factura FOR
    SELECT * FROM Detalle_Factura;
END;
/


-- CRUD para MetodoPago

-- Crear
CREATE OR REPLACE PROCEDURE CrearMetodoPago(
    p_id_metodo_pago INT,
    p_nombre_metodo VARCHAR,
    p_banco VARCHAR
)
AS
BEGIN
    INSERT INTO MetodoPago (
        id_metodo_pago, nombre_metodo, banco
    )
    VALUES (
        p_id_metodo_pago, p_nombre_metodo, p_banco
    );
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarMetodoPago(
    p_id_metodo_pago INT,
    p_nombre_metodo VARCHAR,
    p_banco VARCHAR
)
AS
BEGIN
    UPDATE MetodoPago
    SET nombre_metodo = p_nombre_metodo, banco = p_banco
    WHERE id_metodo_pago = p_id_metodo_pago;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarMetodoPago(
    p_id_metodo_pago INT
)
AS
BEGIN
    DELETE FROM MetodoPago
    WHERE id_metodo_pago = p_id_metodo_pago;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerMetodosPago(
    metodos_pago OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN metodos_pago FOR
    SELECT * FROM MetodoPago;
END;
/


-- CRUD para Venta

-- Crear
CREATE OR REPLACE PROCEDURE CrearVenta(
    p_id_venta INT,
    p_id_empleado INT,
    p_id_factura INT,
    p_fecha_venta DATE,
    p_detalle_venta VARCHAR
)
AS
BEGIN
    INSERT INTO Venta (
        id_venta, id_empleado, id_factura, fecha_venta, detalle_venta
    )
    VALUES (
        p_id_venta, p_id_empleado, p_id_factura, p_fecha_venta, p_detalle_venta
    );
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarVenta(
    p_id_venta INT,
    p_id_empleado INT,
    p_id_factura INT,
    p_fecha_venta DATE,
    p_detalle_venta VARCHAR
)
AS
BEGIN
    UPDATE Venta
    SET id_empleado = p_id_empleado, id_factura = p_id_factura,
        fecha_venta = p_fecha_venta, detalle_venta = p_detalle_venta
    WHERE id_venta = p_id_venta;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarVenta(
    p_id_venta INT
)
AS
BEGIN
    DELETE FROM Venta
    WHERE id_venta = p_id_venta;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerVentas(
    ventas OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN ventas FOR
    SELECT * FROM Venta;
END;
/



-- CRUD para Pedido

-- Crear
CREATE OR REPLACE PROCEDURE CrearPedido(
    p_id_pedido INT,
    p_detalle_pedido VARCHAR,
    p_dinero_total DECIMAL,
    p_id_cliente INT,
    p_fecha_pedido DATE
)
AS
BEGIN
    INSERT INTO Pedido (
        id_pedido, detalle_pedido, dinero_total, id_cliente, fecha_pedido
    )
    VALUES (
        p_id_pedido, p_detalle_pedido, p_dinero_total, p_id_cliente, p_fecha_pedido
    );
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarPedido(
    p_id_pedido INT,
    p_detalle_pedido VARCHAR,
    p_dinero_total DECIMAL,
    p_id_cliente INT,
    p_fecha_pedido DATE
)
AS
BEGIN
    UPDATE Pedido
    SET detalle_pedido = p_detalle_pedido, dinero_total = p_dinero_total,
        id_cliente = p_id_cliente, fecha_pedido = p_fecha_pedido
    WHERE id_pedido = p_id_pedido;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarPedido(
    p_id_pedido INT
)
AS
BEGIN
    DELETE FROM Pedido
    WHERE id_pedido = p_id_pedido;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerPedidos(
    pedidos OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN pedidos FOR
    SELECT * FROM Pedido;
END;
/


-- CRUD para DetallePedido

-- Crear
CREATE OR REPLACE PROCEDURE CrearDetallePedido(
    p_id_detalle_pedido INT,
    p_cantidad_productos INT,
    p_id_producto INT,
    p_id_pedido INT
)
AS
BEGIN
    INSERT INTO DetallePedido (
        id_detalle_pedido, cantidad_productos, id_producto, id_pedido
    )
    VALUES (
        p_id_detalle_pedido, p_cantidad_productos, p_id_producto, p_id_pedido
    );
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarDetallePedido(
    p_id_detalle_pedido INT,
    p_cantidad_productos INT,
    p_id_producto INT,
    p_id_pedido INT
)
AS
BEGIN
    UPDATE DetallePedido
    SET cantidad_productos = p_cantidad_productos, id_producto = p_id_producto,
        id_pedido = p_id_pedido
    WHERE id_detalle_pedido = p_id_detalle_pedido;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarDetallePedido(
    p_id_detalle_pedido INT
)
AS
BEGIN
    DELETE FROM DetallePedido
    WHERE id_detalle_pedido = p_id_detalle_pedido;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerDetallesPedido(
    detalles_pedido OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN detalles_pedido FOR
    SELECT * FROM DetallePedido;
END;
/


-- CRUD para Cotizacion

-- Crear
CREATE OR REPLACE PROCEDURE CrearCotizacion(
    p_id_cotizacion INT,
    p_id_proveedor INT,
    p_detalle_cotizacion VARCHAR,
    p_nombre_producto VARCHAR,
    p_cantidad_productos INT,
    p_total_cotizacion DECIMAL
)
AS
BEGIN
    INSERT INTO Cotizacion (
        id_cotizacion, id_proveedor, detalle_cotizacion, nombre_producto,
        cantidad_productos, total_cotizacion
    )
    VALUES (
        p_id_cotizacion, p_id_proveedor, p_detalle_cotizacion, p_nombre_producto,
        p_cantidad_productos, p_total_cotizacion
    );
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarCotizacion(
    p_id_cotizacion INT,
    p_id_proveedor INT,
    p_detalle_cotizacion VARCHAR,
    p_nombre_producto VARCHAR,
    p_cantidad_productos INT,
    p_total_cotizacion DECIMAL
)
AS
BEGIN
    UPDATE Cotizacion
    SET id_proveedor = p_id_proveedor, detalle_cotizacion = p_detalle_cotizacion,
        nombre_producto = p_nombre_producto, cantidad_productos = p_cantidad_productos,
        total_cotizacion = p_total_cotizacion
    WHERE id_cotizacion = p_id_cotizacion;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarCotizacion(
    p_id_cotizacion INT
)
AS
BEGIN
    DELETE FROM Cotizacion
    WHERE id_cotizacion = p_id_cotizacion;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerCotizaciones(
    cotizaciones OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN cotizaciones FOR
    SELECT * FROM Cotizacion;
END;
/


-- CRUD para Compra

-- Crear
CREATE OR REPLACE PROCEDURE CrearCompra(
    p_id_compra INT,
    p_id_encargado INT,
    p_id_cotizacion INT,
    p_detalle VARCHAR,
    p_fecha_compra DATE
)
AS
BEGIN
    INSERT INTO Compra (
        id_compra, id_encargado, id_cotizacion, detalle, fecha_compra
    )
    VALUES (
        p_id_compra, p_id_encargado, p_id_cotizacion, p_detalle, p_fecha_compra
    );
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarCompra(
    p_id_compra INT,
    p_id_encargado INT,
    p_id_cotizacion INT,
    p_detalle VARCHAR,
    p_fecha_compra DATE
)
AS
BEGIN
    UPDATE Compra
    SET id_encargado = p_id_encargado, id_cotizacion = p_id_cotizacion,
        detalle = p_detalle, fecha_compra = p_fecha_compra
    WHERE id_compra = p_id_compra;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarCompra(
    p_id_compra INT
)
AS
BEGIN
    DELETE FROM Compra
    WHERE id_compra = p_id_compra;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerCompras(
    compras OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN compras FOR
    SELECT * FROM Compra;
END;
/


-- CRUD para CuentasPorCobrar

-- Crear
CREATE OR REPLACE PROCEDURE CrearCuentaPorCobrar(
    p_id_cuenta_pendiente INT,
    p_id_cliente INT,
    p_id_encargado INT,
    p_monto_debido DECIMAL,
    p_id_factura INT,
    p_fecha_ultimo_abono DATE,
    p_fecha_vencimiento DATE,
    p_detalle VARCHAR
)
AS
BEGIN
    INSERT INTO CuentasPorCobrar (
        id_cuenta_pendiente, id_cliente, id_encargado, monto_debido,
        id_factura, fecha_ultimo_abono, fecha_vencimiento, detalle
    )
    VALUES (
        p_id_cuenta_pendiente, p_id_cliente, p_id_encargado, p_monto_debido,
        p_id_factura, p_fecha_ultimo_abono, p_fecha_vencimiento, p_detalle
    );
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarCuentaPorCobrar(
    p_id_cuenta_pendiente INT,
    p_id_cliente INT,
    p_id_encargado INT,
    p_monto_debido DECIMAL,
    p_id_factura INT,
    p_fecha_ultimo_abono DATE,
    p_fecha_vencimiento DATE,
    p_detalle VARCHAR
)
AS
BEGIN
    UPDATE CuentasPorCobrar
    SET id_cliente = p_id_cliente, id_encargado = p_id_encargado,
        monto_debido = p_monto_debido, id_factura = p_id_factura,
        fecha_ultimo_abono = p_fecha_ultimo_abono, fecha_vencimiento = p_fecha_vencimiento,
        detalle = p_detalle
    WHERE id_cuenta_pendiente = p_id_cuenta_pendiente;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarCuentaPorCobrar(
    p_id_cuenta_pendiente INT
)
AS
BEGIN
    DELETE FROM CuentasPorCobrar
    WHERE id_cuenta_pendiente = p_id_cuenta_pendiente;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerCuentasPorCobrar(
    cuentas_por_cobrar OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN cuentas_por_cobrar FOR
    SELECT * FROM CuentasPorCobrar;
END;
/


-- CRUD para Envio

-- Crear
CREATE OR REPLACE PROCEDURE CrearEnvio(
    p_id_envio INT,
    p_id_cliente INT,
    p_id_direccion INT,
    p_id_factura INT,
    p_detalle_envio VARCHAR,
    p_fecha_envio DATE
)
AS
BEGIN
    INSERT INTO Envio (
        id_envio, id_cliente, id_direccion, id_factura, detalle_envio, fecha_envio
    )
    VALUES (
        p_id_envio, p_id_cliente, p_id_direccion, p_id_factura, p_detalle_envio, p_fecha_envio
    );
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarEnvio(
    p_id_envio INT,
    p_id_cliente INT,
    p_id_direccion INT,
    p_id_factura INT,
    p_detalle_envio VARCHAR,
    p_fecha_envio DATE
)
AS
BEGIN
    UPDATE Envio
    SET id_cliente = p_id_cliente, id_direccion = p_id_direccion,
        id_factura = p_id_factura, detalle_envio = p_detalle_envio,
        fecha_envio = p_fecha_envio
    WHERE id_envio = p_id_envio;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarEnvio(
    p_id_envio INT
)
AS
BEGIN
    DELETE FROM Envio
    WHERE id_envio = p_id_envio;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerEnvios(
    envios OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN envios FOR
    SELECT * FROM Envio;
END;
/


-- CRUD para CampanaMarketing

-- Crear
CREATE OR REPLACE PROCEDURE CrearCampanaMarketing(
    p_id_campana_marketing INT,
    p_nombre_campana VARCHAR,
    p_descripcion VARCHAR,
    p_id_encargado INT,
    p_fecha_inicio DATE,
    p_fecha_fin DATE,
    p_objetivo_campana VARCHAR,
    p_presupuesto DECIMAL,
    p_tipo_campana VARCHAR,
    p_variables VARCHAR
)
AS
BEGIN
    INSERT INTO CampanaMarketing (
        id_campana_marketing, nombre_campana, descripcion, id_encargado,
        fecha_inicio, fecha_fin, objetivo_campana, presupuesto,
        tipo_campana, variables
    )
    VALUES (
        p_id_campana_marketing, p_nombre_campana, p_descripcion, p_id_encargado,
        p_fecha_inicio, p_fecha_fin, p_objetivo_campana, p_presupuesto,
        p_tipo_campana, p_variables
    );
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarCampanaMarketing(
    p_id_campana_marketing INT,
    p_nombre_campana VARCHAR,
    p_descripcion VARCHAR,
    p_id_encargado INT,
    p_fecha_inicio DATE,
    p_fecha_fin DATE,
    p_objetivo_campana VARCHAR,
    p_presupuesto DECIMAL,
    p_tipo_campana VARCHAR,
    p_variables VARCHAR
)
AS
BEGIN
    UPDATE CampanaMarketing
    SET nombre_campana = p_nombre_campana, descripcion = p_descripcion,
        id_encargado = p_id_encargado, fecha_inicio = p_fecha_inicio,
        fecha_fin = p_fecha_fin, objetivo_campana = p_objetivo_campana,
        presupuesto = p_presupuesto, tipo_campana = p_tipo_campana,
        variables = p_variables
    WHERE id_campana_marketing = p_id_campana_marketing;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarCampanaMarketing(
    p_id_campana_marketing INT
)
AS
BEGIN
    DELETE FROM CampanaMarketing
    WHERE id_campana_marketing = p_id_campana_marketing;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerCampanasMarketing(
    campanas_marketing OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN campanas_marketing FOR
    SELECT * FROM CampanaMarketing;
END;
/


-- CRUD para MetricaKPI

-- Crear
CREATE OR REPLACE PROCEDURE CrearMetricaKPI(
    p_id_metrica_kpi INT,
    p_tipo_metrica VARCHAR,
    p_descripcion VARCHAR,
    p_id_campana INT,
    p_valor_metrica DECIMAL,
    p_resultado_metrica VARCHAR
)
AS
BEGIN
    INSERT INTO MetricaKPI (
        id_metrica_kpi, tipo_metrica, descripcion, id_campana,
        valor_metrica, resultado_metrica
    )
    VALUES (
        p_id_metrica_kpi, p_tipo_metrica, p_descripcion, p_id_campana,
        p_valor_metrica, p_resultado_metrica
    );
END;
/

-- Actualizar
CREATE OR REPLACE PROCEDURE ActualizarMetricaKPI(
    p_id_metrica_kpi INT,
    p_tipo_metrica VARCHAR,
    p_descripcion VARCHAR,
    p_id_campana INT,
    p_valor_metrica DECIMAL,
    p_resultado_metrica VARCHAR
)
AS
BEGIN
    UPDATE MetricaKPI
    SET tipo_metrica = p_tipo_metrica, descripcion = p_descripcion,
        id_campana = p_id_campana, valor_metrica = p_valor_metrica,
        resultado_metrica = p_resultado_metrica
    WHERE id_metrica_kpi = p_id_metrica_kpi;
END;
/

-- Eliminar
CREATE OR REPLACE PROCEDURE EliminarMetricaKPI(
    p_id_metrica_kpi INT
)
AS
BEGIN
    DELETE FROM MetricaKPI
    WHERE id_metrica_kpi = p_id_metrica_kpi;
END;
/

-- Listar
CREATE OR REPLACE PROCEDURE ObtenerMetricasKPI(
    metricas_kpi OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN metricas_kpi FOR
    SELECT * FROM MetricaKPI;
END;
/



