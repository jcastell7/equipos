class CreateValorParametros < ActiveRecord::Migration[5.1]
  def change
    create_table :valor_parametros do |t|
      t.integer :parametroId
      t.string :valor
      t.string :orden, limit: 3
      t.string :estadoValorParametro,limit:1
      t.integer :eliminado
      t.timestamps
    end
  end
end
