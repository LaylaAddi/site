class ContactMailer < ActionMailer::Base
  default to: "info@chesnowtiz.com"
  
  def contact_mail(name, email, message)
    @name = name
    @email = email
    @message = message
  end
  
  mail(from: email, subject: "Chesnowitz.com contact form")
  
  
end