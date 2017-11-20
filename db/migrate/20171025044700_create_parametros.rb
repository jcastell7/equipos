class CreateParametros < ActiveRecord::Migration[5.1]
  def change
    create_table :parametros do |t|
      t.string :atributo
      t.string :descripcion
      t.string :estadoParametro

      t.timestamps
    end
  end
end
