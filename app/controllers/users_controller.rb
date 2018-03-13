class UsersController < ApplicationController
	def show
		@user= User.find_by_id(params[:id])

	end 

	def edit

	end 


	def new 
		
end

end
