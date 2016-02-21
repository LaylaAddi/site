class PagesController < ApplicationController
  before_filter :allow_iframe_requests
  def index
  end
end
