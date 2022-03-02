class CreateEstatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :estatuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
