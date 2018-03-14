class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
  	current_user = User.find_by_id(session[:user_id])
  end

def login_in?
	current_user != nil
end

def authenticate
	if !login_in?
		redirect_to root_path
	end
end

helper_method :current_user, :authenticate, :login_in?


end

