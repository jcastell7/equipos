class CreateConsumos < ActiveRecord::Migration[5.1]
  def change
    create_table :consumos do |t|
      t.references :equipo, foreign_key: true
      t.integer :persona_id
      t.datetime :fecha
      t.text :comentario
      t.decimal :kilometraje
      t.decimal :cant
      t.string :numfactura
      t.integer :idtipoconsumo
      t.integer :idestadoconsumo
      t.integer :idcategoriaconsumo
      t.integer :idunidadmedida
      t.integer :idrubro
      t.decimal :valor
      t.integer :eliminado

      t.timestamps
    end
  end
end
