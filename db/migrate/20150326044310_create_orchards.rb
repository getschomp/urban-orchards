class CreateOrchards < ActiveRecord::Migration
  def change
    create_table :orchards do |t|
      t.string :site
      t.string :name, null: false
      t.integer :location_id, null: false
      t.index :location_id
    end
  end
end
