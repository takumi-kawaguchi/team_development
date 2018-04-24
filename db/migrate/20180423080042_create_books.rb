class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.date :published_date
      t.string :publisher
      t.string :b_img

      t.timestamps
    end
  end
end
