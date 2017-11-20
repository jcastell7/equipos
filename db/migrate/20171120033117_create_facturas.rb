class CreateFacturas < ActiveRecord::Migration[5.1]
  def change
    create_table :facturas do |t|
      t.string :numfactura
      t.datetime :fecha
      t.text :concepto
      t.decimal :valor
      t.integer :idestadofactura
      t.integer :idproveedor
      t.text :comentariofactura
      t.integer :eliminado

      t.timestamps
    end
  end
end
