class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :checkauth, except: [:auth, :login]
  private
  def checkauth
  	if(session[:user_id].nil?) then
  		redirect_to "/login"
  	else
  		@current_user = User.find(session[:user_id])
  	end
  end
end
