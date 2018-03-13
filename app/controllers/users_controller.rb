class UsersController < ApplicationController
	def show
		@user= User.find_by_id(params[:id])
	end 
	
	def update
		user= User.find_by_id(params[:id])
	    if(user.id == current_user.id)
	       user.update(user_params)
	       flash[:message] = 'updated successfully'
           redirect_to "/users/#{user.id}"	
		else
		   flash[:message] = 'you are not the user'
		    redirect_to "/users/#{user.id}"		
        end
    end    

	def new
	end

	private
    def user_params
    	params.require(:user).permit(:username, :password, :location, :name, :email, :faves, :bio,
:achievements)
    end 
end
