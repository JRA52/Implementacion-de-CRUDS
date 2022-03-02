class CreateEmpresas < ActiveRecord::Migration[7.0]
  def change
    create_table :empresas do |t|
      t.string :name
      t.string :rif
      t.integer :telefono
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
