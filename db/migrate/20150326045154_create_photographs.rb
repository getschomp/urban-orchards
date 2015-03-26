class CreatePhotographs < ActiveRecord::Migration
  def change
    create_table :photographs do |t|
      t.string :image_url, null: false
      t.string :caption # optional
      t.integer :user_id, null: false
      t.integer :review_id  # optional
      t.index :review_id


      t.timestamps
    end
  end
end
