class Book < ApplicationRecord

  has_many :users, through: :user_books
  has_many :user_books
  
  # データ検証(入力に制限をかけるなど)：validation
  # presence：必須
  validates :title, :author, presence: true
  # length {}：文字数制限
  validates :title, :author, :publisher, length: { maximum: 100}

end
