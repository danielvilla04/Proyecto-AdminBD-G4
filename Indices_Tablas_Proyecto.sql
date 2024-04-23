
CREATE INDEX idx_cliente_numero_identificacion ON Cliente(numero_identificacion) TABLESPACE TBS_INDICES_TABLAS;
CREATE INDEX idx_cliente_email ON Cliente(email) TABLESPACE TBS_INDICES_TABLAS;

CREATE INDEX idx_producto_categoria ON ProductoServicio(id_categoria) TABLESPACE TBS_INDICES_TABLAS;

CREATE INDEX idx_facturas_fecha_emision ON Facturas(fecha_emision) TABLESPACE TBS_INDICES_TABLAS;
CREATE INDEX idx_facturas_fecha_vencimiento ON Facturas(fecha_vencimiento) TABLESPACE TBS_INDICES_TABLAS;
CREATE INDEX idx_facturas_id_cliente ON Facturas(id_cliente) TABLESPACE TBS_INDICES_TABLAS;

CREATE INDEX idx_detallefactura_id_producto ON Detalle_Factura(id_producto) TABLESPACE TBS_INDICES_TABLAS;
CREATE INDEX idx_detallefactura_id_factura ON Detalle_Factura(id_factura) TABLESPACE TBS_INDICES_TABLAS;

CREATE INDEX idx_empleado_numero_identificacion ON Empleado(numero_identificacion) TABLESPACE TBS_INDICES_TABLAS;
CREATE INDEX idx_empleado_email ON Empleado(email) TABLESPACE TBS_INDICES_TABLAS;
CREATE INDEX idx_empleado_id_departamento ON Empleado(id_departamento) TABLESPACE TBS_INDICES_TABLAS;

CREATE INDEX idx_cuentasporcobrar_id_cliente ON CuentasPorCobrar(id_cliente) TABLESPACE TBS_INDICES_TABLAS;
CREATE INDEX idx_cuentasporcobrar_fecha_vencimiento ON CuentasPorCobrar(fecha_vencimiento) TABLESPACE TBS_INDICES_TABLAS;

CREATE INDEX idx_envio_fecha_envio ON Envio(fecha_envio) TABLESPACE TBS_INDICES_TABLAS;


