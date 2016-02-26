class Contact < ActiveRecord::Base
  
  validates_presence_of :name
  validates :email, presence: true
  validates_format_of :email,:with => Devise::email_regexp
  
end
