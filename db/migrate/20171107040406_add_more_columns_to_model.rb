class AddMoreColumnsToModel < ActiveRecord::Migration[5.1]
  def change
  	 add_column :usuarios, :eliminado,:integer, :default => 0 
  end
end
