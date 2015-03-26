class CreateTableOrchardsFruits < ActiveRecord::Migration
  def change
    create_table :orchards_fruits do |t|
      t.integer :orchard_id, null: false
      t.integer :fruit_id, null: false
      t.index :orchard_id
      t.index :fruit_id
    end
  end
end
