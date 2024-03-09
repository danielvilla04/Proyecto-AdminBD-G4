--Proyecto de administracion de bases de datos

--Creacion de tablas

--tabla Pais
CREATE TABLE Pais (
    id_pais INT PRIMARY KEY,
    nombre_pais VARCHAR(100)
);

--  tabla Provincia
CREATE TABLE Provincia (
    id_provincia INT PRIMARY KEY,
    nombre_provincia VARCHAR(100),
    id_pais INT,
    CONSTRAINT fk_provincia_pais FOREIGN KEY (id_pais) REFERENCES Pais(id_pais)
);

-- tabla Canton
CREATE TABLE Canton (
    id_canton INT PRIMARY KEY,
    nombre_canton VARCHAR(100),
    id_provincia INT,
    CONSTRAINT fk_canton_provincia FOREIGN KEY (id_provincia) REFERENCES Provincia(id_provincia)
);

--  tabla Distrito
CREATE TABLE Distrito (
    id_distrito INT PRIMARY KEY,
    nombre_distrito VARCHAR(100),
    id_canton INT,
    CONSTRAINT fk_distrito_canton FOREIGN KEY (id_canton) REFERENCES Canton(id_canton)
);

--  tabla DetalleDireccion
CREATE TABLE DetalleDireccion (
    id_direccion INT PRIMARY KEY,
    detalle_direccion VARCHAR(255),
    id_distrito INT,
    CONSTRAINT fk_detalleDirecion_distrito FOREIGN KEY (id_distrito) REFERENCES Distrito(id_distrito)
);

--  tabla Cliente
CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    nombre_cliente VARCHAR(100),
    apellido_1 VARCHAR(100),
    apellido_2 VARCHAR(100),
    numero_identificacion VARCHAR(20),
    telefono_1 VARCHAR(20),
    telefono_2 VARCHAR(20),
    edad INT,
    genero VARCHAR(10),
    email VARCHAR(100),
    id_direccion INT,
    CONSTRAINT fk_cliente_direccion FOREIGN KEY (id_direccion) REFERENCES DetalleDireccion(id_direccion)
);

--  tabla Producto/Servicio
CREATE TABLE ProductoServicio (
    id_producto_servicio INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(255),
    id_categoria INT,
    precio DECIMAL(10, 2),
    activo NUMBER(1,0),
    CONSTRAINT fk_productoservicio_categoriaproducto FOREIGN KEY (id_categoria) REFERENCES CategoriaProductoServicio(id_categoria_producto_servicio)
);

-- tabla CategoriaProductoServicio
CREATE TABLE CategoriaProductoServicio (
    id_categoria_producto_servicio INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(255),
    activo NUMBER(1,0)
);

--  tabla Proveedor
CREATE TABLE Proveedor (
    id_proveedor INT PRIMARY KEY,
    nombre_proveedor VARCHAR(100),
    proveedor_DNI VARCHAR(20),
    id_direccion INT,
    telefono VARCHAR(20),
    email VARCHAR(100),
    CONSTRAINT fk_proveedor_direccion FOREIGN KEY (id_direccion) REFERENCES DetalleDireccion(id_direccion)
);


--  tabla Departamento
CREATE TABLE Departamento (
    id_departamento INT PRIMARY KEY,
    nombre VARCHAR(100),
    detalle VARCHAR(255)
);

--  tabla Salario
CREATE TABLE Salario (
    id_salario INT PRIMARY KEY,
    cantidad DECIMAL(10, 2),
    rebajos DECIMAL(10, 2),
    total_salario DECIMAL(10, 2)
);


--  tabla Empleado
CREATE TABLE Empleado (
    id_empleado INT PRIMARY KEY,
    nombre_empleado VARCHAR(100),
    apellido_1 VARCHAR(100),
    apellido_2 VARCHAR(100),
    numero_identificacion VARCHAR(20),
    telefono_1 VARCHAR(20),
    email VARCHAR(100),
    edad INT,
    fecha_nacimiento DATE,
    estado_civil VARCHAR(20),
    id_direccion INT,
    id_departamento INT,
    id_salario INT,
    fecha_inicio DATE,
    CONSTRAINT fk_empleado_direccion FOREIGN KEY (id_direccion) REFERENCES DetalleDireccion(id_direccion),
    CONSTRAINT fk_empleado_departamento FOREIGN KEY (id_departamento) REFERENCES Departamento(id_departamento),
    CONSTRAINT fk_empleado_salario FOREIGN KEY (id_salario) REFERENCES Salario(id_salario)
);


--  tabla Inventario
CREATE TABLE Inventario (
    id_inventario INT PRIMARY KEY,
    cantidad_productos INT,
    detalle VARCHAR(255),
    id_producto INT,
    CONSTRAINT fk_inventario_producto FOREIGN KEY (id_producto) REFERENCES ProductoServicio(id_producto_servicio)
);


--  tabla Facturas
CREATE TABLE Facturas (
    id_factura INT PRIMARY KEY,
    fecha_emision DATE,
    fecha_vencimiento DATE,
    numero_fiscal VARCHAR(20),
    id_cliente INT,
    cantidad_total DECIMAL(10, 2),
    iva_total DECIMAL(10, 2),
    descuentos_bonificaciones_total DECIMAL(10, 2),
    id_metodo_pago INT,
     CONSTRAINT fk_factura_cliente FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
     CONSTRAINT fk_factura_metodopago FOREIGN KEY (id_metodo_pago) REFERENCES MetodoPago(id_metodo_pago)
);


--  tabla DetalleFactura
CREATE TABLE DetalleFactura (
    id_detalle_factura INT PRIMARY KEY,
    id_producto INT,
    id_factura INT,
    cantidad INT,
    total_linea DECIMAL(10, 2),
    descripcion_productos_servicios VARCHAR(255),
    descuentos_bonificaciones DECIMAL(10, 2),
    iva DECIMAL(10, 2),
    CONSTRAINT fk_detallefactura_factura FOREIGN KEY (id_producto) REFERENCES ProductoServicio(id_producto_servicio)
);


--  tabla MetodoPago
CREATE TABLE MetodoPago (
    id_metodo_pago INT PRIMARY KEY,
    nombre_metodo VARCHAR(100),
    banco VARCHAR(100)
);


--  tabla Venta
CREATE TABLE Venta (
    id_venta INT PRIMARY KEY,
    id_empleado INT,
    id_factura INT,
    fecha_venta DATE,
    detalle_venta VARCHAR(255),
    CONSTRAINT fk_venta_empleado FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado),
    CONSTRAINT fk_venta_factura FOREIGN KEY (id_factura) REFERENCES Facturas(id_factura)
);


--  tabla Pedido
CREATE TABLE Pedido (
    id_pedido INT PRIMARY KEY,
    detalle_pedido VARCHAR(255),
    dinero_total DECIMAL(10, 2),
    id_cliente INT,
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

--  tabla DetallePedido
CREATE TABLE DetallePedido (
    id_detalle_pedido INT PRIMARY KEY,
    cantidad_productos INT,
    id_producto INT,
    id_pedido INT,
    CONSTRAINT fk_detallepedido_producto FOREIGN KEY (id_producto) REFERENCES ProductoServicio(id_producto_servicio),
    CONSTRAINT fk_detallepedido_pedido FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido)
);


--  tabla Cotizacion
CREATE TABLE Cotizacion (
    id_cotizacion INT PRIMARY KEY,
    id_proveedor INT,
    detalle_cotizacion VARCHAR(255),
    nombre_producto VARCHAR(100),
    cantidad_productos INT,
    total_cotizacion DECIMAL(10, 2),
    CONSTRAINT fk_cotizacion_proveedor FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor)
);


--  tabla Compra
CREATE TABLE Compra (
    id_compra INT PRIMARY KEY,
    id_encargado INT,
    id_cotizacion INT,
    detalle VARCHAR(255),
    fecha_compra DATE,
    CONSTRAINT fk_compra_empleado FOREIGN KEY (id_encargado) REFERENCES Empleado(id_empleado),
    CONSTRAINT fk_compra_cotizacion FOREIGN KEY (id_cotizacion) REFERENCES Cotizacion(id_cotizacion)
);



--  tabla Cuentas por Cobrar
CREATE TABLE CuentasPorCobrar (
    id_cuenta_pendiente INT PRIMARY KEY,
    id_cliente INT,
    id_encargado INT,
    monto_debido DECIMAL(10, 2),
    id_factura INT,
    fecha_ultimo_abono DATE,
    fecha_vencimiento DATE,
    detalle VARCHAR(255),
    CONSTRAINT fk_CuentasPorCobrar_cliente FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    CONSTRAINT fk_CuentasPorCobrar_empleado FOREIGN KEY (id_encargado) REFERENCES Empleado(id_empleado),
    CONSTRAINT fk_CuentasPorCobrar_factura FOREIGN KEY (id_factura) REFERENCES Facturas(id_factura)
);



--  tabla Envío
CREATE TABLE Envio (
    id_envio INT PRIMARY KEY,
    id_cliente INT,
    id_direccion INT,
    id_factura INT,
    detalle_envio VARCHAR(255),
    fecha_envio DATE,
    CONSTRAINT fk_envio_cliente FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    CONSTRAINT fk_envio_direccion FOREIGN KEY (id_direccion) REFERENCES DetalleDireccion(id_direccion),
    CONSTRAINT fk_envio_factura FOREIGN KEY (id_factura) REFERENCES Facturas(id_factura)
);

--  tabla CampañaMarketing
CREATE TABLE CampanaMarketing (
    id_campana_marketing INT PRIMARY KEY,
    nombre_campana VARCHAR(100),
    descripcion VARCHAR(255),
    id_encargado INT,
    fecha_inicio DATE,
    fecha_fin DATE,
    objetivo_campana VARCHAR(255),
    presupuesto DECIMAL(10, 2),
    tipo_campana VARCHAR(100),
    variables VARCHAR(255),
    CONSTRAINT fk_campanamarketing_empleado FOREIGN KEY (id_encargado) REFERENCES Empleado(id_empleado)
);

--  tabla MétricaKPI
CREATE TABLE MetricaKPI (
    id_metrica_kpi INT PRIMARY KEY,
    tipo_metrica VARCHAR(100),
    descripcion VARCHAR(255),
    id_campana INT,
    valor_metrica DECIMAL(10, 2),
    resultado_metrica VARCHAR(255),
    CONSTRAINT fk_metricakpi_campanamarketing FOREIGN KEY (id_campana) REFERENCES CampanaMarketing(id_campana_marketing)
);