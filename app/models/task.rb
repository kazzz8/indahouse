class Task < ApplicationRecord

  # バリデーション
  validates :category_id, numericality: { other_than: 1, message: "カテゴリーを選択してください" } 

  # Associasion
  belongs_to :user
  has_many :deadlines
  
  # ActiveHash
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
