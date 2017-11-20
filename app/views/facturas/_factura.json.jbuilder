json.extract! factura, :id, :numfactura, :fecha, :concepto, :valor, :idestadofactura, :idproveedor, :comentariofactura, :eliminado, :created_at, :updated_at
json.url factura_url(factura, format: :json)
