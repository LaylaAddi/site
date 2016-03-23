class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         
  validates :username, :uniqueness => { :case_sensitive => false,
            :message => "Sorry but this username has been taken" }
            
  def before_save
    self.username = self.email.downcase
  end
  
  validates :email, :uniqueness => { :case_sensitive => false,
          :message => "Sorry but this email is already in use in our system" }       
         
         
  has_many :quotes
  has_many :posts
  has_many :comments
  acts_as_messageable
  
  def mailboxer_email(object)
    email
  end
end
