Alter session set "_oracle_script" = true;

CREATE ROLE adminTienda;
CREATE ROLE empleadoTienda;
CREATE ROLE clienteTienda;


CREATE USER adminTienda_user IDENTIFIED BY admin_password;
CREATE USER empleadoTienda_user IDENTIFIED BY empleado_password;
CREATE USER clienteTienda_user IDENTIFIED BY cliente_password;

GRANT adminTienda TO adminTienda_user;
GRANT empleadoTienda TO empleadoTienda_user;
GRANT clienteTienda TO clienteTienda_user;




CREATE PROFILE adminTienda_profile LIMIT
    SESSIONS_PER_USER UNLIMITED
    CPU_PER_SESSION 3000
    CPU_PER_CALL 1000
    CONNECT_TIME UNLIMITED
    IDLE_TIME UNLIMITED
    LOGICAL_READS_PER_SESSION UNLIMITED
    LOGICAL_READS_PER_CALL UNLIMITED
    PRIVATE_SGA UNLIMITED
    COMPOSITE_LIMIT UNLIMITED
    PASSWORD_LIFE_TIME 180
    PASSWORD_REUSE_TIME 90
    PASSWORD_REUSE_MAX 5
    PASSWORD_VERIFY_FUNCTION NULL;

CREATE PROFILE empleadoTienda_profile LIMIT
    SESSIONS_PER_USER UNLIMITED
    CPU_PER_SESSION 2000
    CPU_PER_CALL 800
    CONNECT_TIME UNLIMITED
    IDLE_TIME UNLIMITED
    LOGICAL_READS_PER_SESSION UNLIMITED
    LOGICAL_READS_PER_CALL UNLIMITED
    PRIVATE_SGA UNLIMITED
    COMPOSITE_LIMIT UNLIMITED
    PASSWORD_LIFE_TIME 90
    PASSWORD_REUSE_TIME 60
    PASSWORD_REUSE_MAX 3
    PASSWORD_VERIFY_FUNCTION NULL;

CREATE PROFILE clienteTienda_profile LIMIT
    SESSIONS_PER_USER 3
    CPU_PER_SESSION 1000
    CPU_PER_CALL 500
    CONNECT_TIME UNLIMITED
    IDLE_TIME UNLIMITED
    LOGICAL_READS_PER_SESSION UNLIMITED
    LOGICAL_READS_PER_CALL UNLIMITED
    PRIVATE_SGA UNLIMITED
    COMPOSITE_LIMIT UNLIMITED
    PASSWORD_LIFE_TIME 365
    PASSWORD_REUSE_TIME 180
    PASSWORD_REUSE_MAX 10
    PASSWORD_VERIFY_FUNCTION NULL;



-----------------------------PERMISOS Y PRIVILEGIOS---------------------------------------------------------

-----------ADMIN TIENDA PERMISOS Y PRIVILEGIOS-----------
GRANT SELECT, INSERT, UPDATE, DELETE ON MetodoPago TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON Pais TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON Provincia TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON Canton TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON Distrito TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON DetalleDireccion TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON Cliente TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON ProductoServicio TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON CategoriaProductoServicio TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON Proveedor TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON Departamento TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON Salario TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON Empleado TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON Inventario TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON Facturas TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON DetalleFactura TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON MetodoPago TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON Venta TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON Pedido TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON DetallePedido TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON Cotizacion TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON Compra TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON CuentasPorCobrar TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON Envio TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON CampanaMarketing TO adminTienda;
GRANT SELECT ON Tiempo TO adminTienda;
GRANT SELECT, INSERT, UPDATE, DELETE ON FacturaVenta TO adminTienda;

---------------------------------------------------------
--------------------PERMISOS Y PRIVILEGIOS EMPLEADO TIENDA-------

GRANT SELECT, INSERT, UPDATE ON Cliente TO empleadoTienda;
GRANT SELECT, INSERT, UPDATE ON Empleado TO empleadoTienda;
GRANT SELECT, INSERT, UPDATE ON Facturas TO empleadoTienda;
GRANT SELECT, INSERT, UPDATE ON Venta TO empleadoTienda;
GRANT SELECT, INSERT, UPDATE ON DetallePedido TO empleadoTienda;
GRANT SELECT, INSERT, UPDATE ON Compra TO empleadoTienda;
GRANT SELECT, INSERT, UPDATE ON CuentasPorCobrar TO empleadoTienda;
GRANT SELECT, INSERT, UPDATE ON Envio TO empleadoTienda;
GRANT SELECT, INSERT, UPDATE ON CampanaMarketing TO empleadoTienda;
GRANT SELECT, INSERT, UPDATE ON ProductoServicio TO empleadoTienda;
GRANT SELECT ON MetodoPago TO empleadoTienda;
GRANT SELECT ON Pais TO empleadoTienda;
GRANT SELECT ON Provincia TO empleadoTienda;
GRANT SELECT ON Canton TO empleadoTienda;
GRANT SELECT ON Distrito TO empleadoTienda;
GRANT SELECT ON DetalleDireccion TO empleadoTienda;
GRANT SELECT ON Departamento TO empleadoTienda;
GRANT SELECT ON Salario TO empleadoTienda;
GRANT SELECT ON Inventario TO empleadoTienda;
GRANT SELECT ON Cotizacion TO empleadoTienda;
GRANT SELECT ON Tiempo TO empleadoTienda;
--------------------------------PERMISOS Y PRIVILEGIOS CLIENTE TIENDA-------------------------------------
GRANT SELECT ON MetodoPago TO clienteTienda;
GRANT SELECT ON Pais TO clienteTienda;
GRANT SELECT ON Provincia TO clienteTienda;
GRANT SELECT ON Canton TO clienteTienda;
GRANT SELECT ON Distrito TO clienteTienda;
GRANT SELECT ON DetalleDireccion TO clienteTienda;
GRANT SELECT ON ProductoServicio TO clienteTienda;
GRANT SELECT ON FacturaVenta TO clienteTienda;
