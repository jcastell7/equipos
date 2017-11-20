class CambiarColEliminado < ActiveRecord::Migration[5.1]
  def change
  	change_column :usuarios, :eliminado, :integer,:default => 0
  end
end
