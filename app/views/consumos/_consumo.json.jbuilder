json.extract! consumo, :id, :equipo_id, :persona_id, :fecha, :comentario, :kilometraje, :cant, :numfactura, :idtipoconsumo, :idestadoconsumo, :idcategoriaconsumo, :idunidadmedida, :idrubro, :valor, :eliminado, :created_at, :updated_at
json.url consumo_url(consumo, format: :json)
