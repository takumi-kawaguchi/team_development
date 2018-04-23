class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :b_title
      t.string :author
      t.date :published_date
      t.string :publisher
      t.string :b_img

      t.timestamps
    end
  end
end
