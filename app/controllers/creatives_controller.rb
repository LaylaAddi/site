class CreativesController < ApplicationController
  layout "creative"
  before_filter :allow_iframe_requests

  def index
    @contact = Contact.new
    if current_user
      redirect_to pages_index_path 
    end
  end
end
