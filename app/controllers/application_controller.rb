class ApplicationController < ActionController::Base
  protect_from_forgery

  #before_filter :require_user

#def require_user
  #redirect_to signin_path unless current_user
#end

private
  def current_user
    #Prestar atenção '||=' e não '|| =' no ruby, dá ruim!
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    rescue ActiveRecord::RecordNotFound
  end

  helper_method :current_user
end
