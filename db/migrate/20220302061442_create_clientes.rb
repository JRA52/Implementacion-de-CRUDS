class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.string :name
      t.boolean :persona_juridica
      t.string :nro_doc
      t.integer :telefono
      t.references :empresa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
