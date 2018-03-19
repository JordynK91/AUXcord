class UsersController < ApplicationController	
	def redirect
	       client = Signet::OAuth2::Client.new(client_options)
	       redirect_to client.authorization_uri.to_s     
	end

	
	 def callback
    client = Signet::OAuth2::Client.new(client_options)
    client.code = params[:code]

    response = client.fetch_access_token!

    session[:authorization] = response

    redirect_to events_url
  end   
	

	def show
		@user = User.find_by_id(params[:id])
		@archives =Archive.where(user_id: params[:id])
		@concerts_upcomings = Concert.where(user_id: params[:id]).where(category: "up_coming")
		@concerts_wishlist = Concert.where(user_id: params[:id]).where(category: "wish_list")
		@concerts_pastevents = Concert.where(user_id: params[:id]).where(category: "past_events")

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

    def new_event
	    client = Signet::OAuth2::Client.new(client_options)
	    client.update!(session[:authorization])
	    service = Google::Apis::CalendarV3::CalendarService.new
	    service.authorization = client
	    today = Date.today
	    event = Google::Apis::CalendarV3::Event.new({
	      start: Google::Apis::CalendarV3::EventDateTime.new(date: today),
	      end: Google::Apis::CalendarV3::EventDateTime.new(date: today + 1),
	      summary: 'New event!'
	    })
	    service.insert_event(params[:calendar_id], event)
	    redirect_to events_url(calendar_id: params[:calendar_id])
    end

    def calendars
        client = Signet::OAuth2::Client.new(client_options)
        client.update!(session[:authorization])
        service = Google::Apis::CalendarV3::CalendarService.new
        service.authorization = client
        @calendar_list = service.list_calendar_lists
    end

    def events
    client = Signet::OAuth2::Client.new(client_options)
    client.update!(session[:authorization])
    service = Google::Apis::CalendarV3::CalendarService.new
    service.authorization = client
    @event_list = service.list_events(params[:calendar_id])
  end




  	private
	    
	    def user_params
	    	params.require(:user).permit(:username, :password, :location, :name, :email, :faves, :bio,
	:achievements)
	    end 

	    def client_options
	    {
	      client_id: Rails.application.secrets.google_client_id,
	      client_secret: Rails.application.secrets.google_client_secret,
	      authorization_uri: 'https://accounts.google.com/o/oauth2/auth',
	      token_credential_uri: 'https://accounts.google.com/o/oauth2/token',
	      scope: Google::Apis::CalendarV3::AUTH_CALENDAR,
	      redirect_uri: 'http://localhost:3000/callback'
	    }
	    end
    

end

