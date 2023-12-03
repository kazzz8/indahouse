class Task < ApplicationRecord

  # Associasion
  belongs_to :user
  has_many :deadlines
  
  # ActiveHash
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
