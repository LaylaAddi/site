class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :quotes
  has_many :posts
  has_many :comments
  acts_as_messageable
  
  def mailboxer_email(object)
    email
  end
end
