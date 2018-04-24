class UserBook < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validates :user, :book, presence: true # presence：必須
end
