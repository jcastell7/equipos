class AddColumnToAnexos < ActiveRecord::Migration[5.1]
  def change
    add_column :anexos, :idreferencia, :integer
  end
end
