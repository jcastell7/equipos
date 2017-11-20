class CreateEquipos < ActiveRecord::Migration[5.1]
  def change
    create_table :equipos do |t|
      t.string :placa
      t.string :modelo
      t.string :seria
      t.string :marca
      t.integer :idestadoequipo
      t.integer :idtipoequipo
      t.integer :idarea
      t.decimal :kilometrajeinicial
      t.decimal :kilometrajeactual

      t.timestamps
    end
  end
end
