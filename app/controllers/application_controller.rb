class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  def after_sign_in_path_for(resource)
    home_welcome_path
  end
  
  def after_sign_out_path_for(resource)
    root_path
  end
  
  private
  
  def authenticate
    
  end
  
end