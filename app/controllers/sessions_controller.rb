class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_uid] = user.uid
    redirect_to root_url
  end
  def destroy
  	session.clear
  	redirect_to root_url
  end
end