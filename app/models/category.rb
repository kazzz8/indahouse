class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '消耗品購入' },
    { id: 3, name: '掃除' },
    { id: 4, name: '洗濯' },
    { id: 5, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :tasks

end