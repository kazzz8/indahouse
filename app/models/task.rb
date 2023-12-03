class Task < ApplicationRecord

  # バリデーション
  validates :category_id, numericality: { other_than: 1, message: "カテゴリーを選択してください" } 

  # Associasion
  belongs_to :user
  
  # ActiveHash
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
end
