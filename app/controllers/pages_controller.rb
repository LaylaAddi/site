class PagesController < ApplicationController
  before_filter :allow_iframe_requests
  def index
    if current_user
      redirect_to posts_path
    end
  end
  
  def projects
  end
end
