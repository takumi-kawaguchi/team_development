class Book < ApplicationRecord

  has_many :users
  has_many :user_books
end
