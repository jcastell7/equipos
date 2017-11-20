class AddColumnFacturaIdConsumos < ActiveRecord::Migration[5.1]
  def change
    add_column :consumos, :factura_id, :integer
  end
end
