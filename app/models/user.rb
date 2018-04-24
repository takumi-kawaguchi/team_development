class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :reviews
  has_many :user_books
  has_many :books, through: :user_books
>>>>>>> 625f0e73c89d8080c3a6ae06e9ccb022135d7f61
end
