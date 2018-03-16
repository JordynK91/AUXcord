class UsersController < ApplicationController
	
	def show
		@user = User.find_by_id(params[:id])
		@concerts_upcomings = Concert.where(user_id: params[:id]).where(category: "up_coming")
		@concerts_wishlist = Concert.where(user_id: params[:id]).where(category: "wish_list")
		@concerts_pastevents = Concert.where(user_id: params[:id]).where(category: "past_events")

		@concerts_upcomings.each do |u|
		 	event_id = u.api_id
		 	response = HTTParty.get("http://app.ticketmaster.com/discovery/v2/events/#{event_id}.json?apikey=#{ENV["API_KEY"]}", format: :plain)
		    result = JSON.parse response, symbolize_names: true
		    currentDate = Date.today
	        concertDate = Date::strptime(result[:dates][:start][:localDate], "%Y-%m-%d")
	        if currentDate > concertDate
	            u.update(category: 'past_events')
		        flash[:message] = 'this concert is in the past'		        
	        end 	                
	    end
    end
	
	def update
		user= User.find_by_id(params[:id])
	    if(user.id == current_user.id)
	       user.update(user_params)
	       flash[:message] = 'updated successfully'
           redirect_to "/users/#{user.id}"	
        end
    end    
 
	def new
	@user = User.new
	end

	def create
		user = User.new(user_params)
	    if user.save
	      redirect_to "/login"
	    else 
	      flash[:alert] = "Account Info Invalid. Please Try Again." 
	    end
  end

  def destroy 
  	 @user = User.find(current_user.id)
    if @user.destroy
    redirect_to '/users/new'
  end

end


	private
    def user_params
    	params.require(:user).permit(:username, :password, :location, :name, :email, :faves, :bio,
:achievements)
    end 

end

