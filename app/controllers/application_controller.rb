class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  
  def protect_with_key 
    redirect_to '/' unless params[:access_key] == "12345"
  end
end
