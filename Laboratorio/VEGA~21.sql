CREATE OR REPLACE VIEW vw_clientes_activos AS
SELECT 
    codigo_cliente,
    razon_social,
    cedula_ruc,
    direccion,
    telefono,
    celular,
    email,
    estado
FROM cliente
WHERE estado = 'A';

CREATE OR REPLACE VIEW vw_productos_inventario AS
SELECT 
    i.codigo_item,
    i.descripcion,
    i.unidad_medida,
    i.stock,
    i.precio_costo,
    i.precio_venta,
    p.razon_social AS proveedor,
    i.estado
FROM item i
INNER JOIN proveedor p
ON i.codigo_proveedor = p.codigo_proveedor;

CREATE OR REPLACE VIEW vw_ventas_clientes AS
SELECT 
    v.id_venta,
    v.fecha_emision,
    v.tipo_documento,
    v.numero_documento,
    c.razon_social AS cliente,
    c.cedula_ruc,
    v.subtotal,
    v.descuento,
    v.iva_valor,
    v.total
FROM venta v
INNER JOIN cliente c
ON v.codigo_cliente = c.codigo_cliente;



SELECT * FROM vw_clientes_activos;

SELECT * FROM vw_productos_inventario;

SELECT * FROM vw_ventas_clientes;
