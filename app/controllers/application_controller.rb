class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  def current_user
    @current_user ||= User.find_by_uid(session[:user_uid]) if session[:user_uid]
  end
   def signed_in?
    !current_user.nil?
  end


  helper_method :current_user,:signed_in?
end