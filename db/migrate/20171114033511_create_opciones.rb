class CreateOpciones < ActiveRecord::Migration[5.1]
  def change
    create_table :opciones do |t|
      t.integer :idpadre
      t.string :opcion
      t.string :url
      t.string :estadoopcion
      t.string :orden
      t.boolean :eshoja
      t.string :controller
      t.integer :eliminado

      t.timestamps
    end
  end
end
