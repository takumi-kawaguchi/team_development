class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :book_id
      t.string :r_title
      t.text :context
      t.integer :rating

      t.timestamps
    end
  end
end
