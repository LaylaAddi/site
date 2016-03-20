class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  

  validates :title, length: { minimum: 5 }
  validates :content, length: { minimum: 25 }
end
