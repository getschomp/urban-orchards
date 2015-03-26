class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :street_adress
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :coordinates, null: false

      t.timestamps
    end
  end
end
