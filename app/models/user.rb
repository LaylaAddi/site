class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :quotes
  
  
  acts_as_messageable
  
  def mailboxer_username
    self.username
  end
  
  def mailboxer_email(object)
    self.email
  end
end
