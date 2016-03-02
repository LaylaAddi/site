module ApplicationHelper
  
  def bootstrap_class_for flash_type
    case flash_type
      when :success
        "alert-success"
      when :error
        "alert-error"
      when :alert
        "alert-block"
      when :notice
        "alert-info"
      else
        flash_type.to_s
    end
  end
  
  def page_header(text)
    content_for(:page_header) { text.to_s }
  end
    
  def gravatar_for(user, size = 30, title = user.username) 
    image_tag gravatar_image_url(user.email, size: size), title: title, class: 'img-rounded'
  end
end
