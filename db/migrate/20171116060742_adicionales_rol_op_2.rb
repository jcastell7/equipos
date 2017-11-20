class AdicionalesRolOp2 < ActiveRecord::Migration[5.1]
  def change
  	add_reference :rol_opcion_operaciones, :usuario, index: true
  end
end
