class Book < ApplicationRecord

  has_many :users, through: :user_books
  has_many :user_books
  
  # データ検証(入力に制限をかけるなど)：validation
  validates :title, :author, presence: true # presence：必須
  validates :title, :author, :publisher, length: { maximum: 100} # length {}：文字数制限
  validates :title, :uniqueness: true
  validate :validates_past_published_date # 独自にデータ検証かける場合はvalidatesではなくvalidate 

  # validates :title, presence: true, length: { maximum: 100 }, uniqueness: true
  
  private
  
  def validates_past_published_date
    if self.published_date.present?
      if Time.zone.today < self.published_date
        self.errors.add :published_date, :invalid
      end
    end
  end

end