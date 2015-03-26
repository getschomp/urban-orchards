class CreateFruits < ActiveRecord::Migration
  def change
    create_table :fruits do |t|
      t.string :name, null: false
      t.string :svg_logo
      t.string :plant_type

      t.timestamps
    end
  end
end
