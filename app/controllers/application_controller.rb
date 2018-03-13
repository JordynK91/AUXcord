class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
  	@current_user = User.find(session[:user_id])
end

def login_in?
	@current_user != nil

end

def authenticate
	if !logged_in?
		redirect_to_ root_path
	end
end


end

