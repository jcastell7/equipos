class CreateAnexos < ActiveRecord::Migration[5.1]
  def change
    create_table :anexos do |t|
      t.integer :idEntidad
      t.integer :idEstadoAnexo
      t.integer :eliminado

      t.timestamps
    end
  end
end
