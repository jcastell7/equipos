class RefParamValParam < ActiveRecord::Migration[5.1]
  def change
  	add_reference :valor_parametros, :parametro, index: true
  end
end
