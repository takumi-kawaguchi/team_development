class CreateUserBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :user_books do |t|
      t.references :user, foreign_key: true, index: true
      t.references :book, foreign_key: true, index: true

      t.timestamps
    end
  end
end
