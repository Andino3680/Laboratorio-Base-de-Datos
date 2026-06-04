CREATE INDEX idx_item_proveedor
ON item(codigo_proveedor)
TABLESPACE ventas_idx_ts;

CREATE INDEX idx_codigo_barra_item
ON codigo_barra(codigo_item)
TABLESPACE ventas_idx_ts;

CREATE INDEX idx_venta_cliente
ON venta(codigo_cliente)
TABLESPACE ventas_idx_ts;

CREATE INDEX idx_detalle_venta_id_venta
ON detalle_venta(id_venta)
TABLESPACE ventas_idx_ts;

CREATE INDEX idx_detalle_venta_codigo_item
ON detalle_venta(codigo_item)
TABLESPACE ventas_idx_ts;

SELECT index_name, table_name, tablespace_name
FROM user_indexes
ORDER BY table_name, index_name;
