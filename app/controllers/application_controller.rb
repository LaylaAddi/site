class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  protect_from_forgery with: :exception
  before_filter :allow_iframe_requests
  

  rescue_from CanCan::AccessDenied do |exception| 
    redirect_to root_path, 
    :flash => { :error => "You are not authorized to access this area" } 
  end
  
  def allow_iframe_requests
    response.headers.delete('X-Frame-Options')
  end
  
  rescue_from ActiveRecord::RecordNotFound do
    flash[:warning] = 'Resource not found.'
    redirect_back_or root_path
  end
  
  def redirect_back_or(path)
    redirect_to request.referer || path
  end

end
