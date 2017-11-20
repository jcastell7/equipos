class CreateRolOpcionOperaciones < ActiveRecord::Migration[5.1]
  def change
    create_table :rol_opcion_operaciones do |t|
      t.integer :idrol
      t.integer :idoperacion
      t.integer :eliminado
      t.string :estadorolop

      t.timestamps
    end
  end
end
