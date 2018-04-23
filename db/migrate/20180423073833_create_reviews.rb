class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :user, null:false, foreign_key: true, index: true
      t.references :book, null:false, foreign_key: true, index: true
      t.string :title, null:false
      t.text :context, null:false
      t.integer :rating

      t.timestamps
    end
  end
end
