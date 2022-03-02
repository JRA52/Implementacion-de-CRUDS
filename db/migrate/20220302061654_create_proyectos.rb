class CreateProyectos < ActiveRecord::Migration[7.0]
  def change
    create_table :proyectos do |t|
      t.integer :codigo
      t.date :fecha_inicio
      t.string :name
      t.decimal :valor
      t.text :descripion
      t.references :cliente, null: false, foreign_key: true
      t.references :estatus, null: false, foreign_key: true

      t.timestamps
    end
  end
end
