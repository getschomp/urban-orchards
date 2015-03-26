class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :status #optional - min char 15, max char 800
      t.text :review_text #optional - min char 15, max char 800
      t.integer :stars, null: false

      t.timestamps null: false
    end
  end
end
