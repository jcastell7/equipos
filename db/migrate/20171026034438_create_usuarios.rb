class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :usuario
      t.string :password
      t.integer :idrol
      t.integer :idestadousuario

      t.timestamps
    end
  end
end
class ChangeUsuarios  < ActiveRecord::Migration[5.1]
  def change
     add_column :usuarios, :eliminado:integer 
  end
end
