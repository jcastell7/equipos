class AdicionalesRolOpOp < ActiveRecord::Migration[5.1]
  def change
  	add_reference :rol_opcion_operaciones, :opcione, index: true
  	change_column :rol_opcion_operaciones, :eliminado,:integer, :default => 0 
  end
end
