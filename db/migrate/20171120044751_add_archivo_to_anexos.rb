class AddArchivoToAnexos < ActiveRecord::Migration[5.1]
  def change
    add_column :anexos, :archivo, :string
  end
end
