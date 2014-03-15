class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url
  end

  def destroy
    reset_session
    redirect_to root_path, :notice => "Signed out!"
  end

  def failure
    redirect_to root_url, :alert => "Auth error: #{params [:message].humanize}"
  end

end