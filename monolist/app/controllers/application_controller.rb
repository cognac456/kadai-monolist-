class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :require_user_logged_in, only: [:show]
  
  
  include SessionsHelper
  
  def require_user_logged_in
    if !logged_in?
      redirect_to login_path
    end
  end
  
end
