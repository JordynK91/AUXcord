class UsersController < ApplicationController	
 	def show
		@user = User.find_by_id(params[:id])
		@archives =Archive.where(user_id: params[:id])
		@concerts_upcomings = Concert.where(user_id: params[:id]).where(category: "up_coming")
		@concerts_wishlist = Concert.where(user_id: params[:id]).where(category: "wish_list")
		@concerts_pastevents = Concert.where(user_id: params[:id]).where(category: "past_events")
   
	    # google calendar stuff below:  	    
        if session[:authorization] == nil
		else
			client = Signet::OAuth2::Client.new(client_options)
			client.update!(session[:authorization])
	        tokenRefresh
			service = Google::Apis::CalendarV3::CalendarService.new
			service.authorization = client
			if service.authorization.expires_at < Time.now 
			else 
				@calendar_list = service.list_calendar_lists
				@test = @calendar_list.items.first.id 
			end          
		end	    			  	 	      	    
    end

    def refreshToken
    	client = Signet::OAuth2::Client.new(client_options)
		client.update!(session[:authorization])	
		client.update!(:additional_parameters => {"access_type" => "offline"})
		rescue Google::Apis::AuthorizationError
        response = client.refresh!
        session[:authorization] = session[:authorization].merge(response)
        retry	
    end	
	
	def tokenRefresh
		client = Signet::OAuth2::Client.new(client_options)
		client.update!(session[:authorization])	
		client.update!(:additional_parameters => {"access_type" => "offline"})
		rescue Google::Apis::AuthorizationError
            response = client.refresh!
            session[:authorization] = session[:authorization].merge(response)
        retry
	end  

	def update
		user= User.find_by_id(params[:id])
	    if(user.id == current_user.id)
	       user.update(user_params)
	       flash[:message] = 'User updated successfully.'
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
	     flash[:alert] = "Account info invalid. Please try again."
	    end
	end

	def destroy 
	  	 @user = User.find(current_user.id)
	    if @user.destroy
	    redirect_to '/users/new'
	    end
	end

	 	# google canlendar methods
     def redirect
         client = Signet::OAuth2::Client.new(client_options)
         # 
         redirect_to client.authorization_uri.to_s
         #      
 	end
 
 	
 	def callback
 	    client = Signet::OAuth2::Client.new(client_options)
 	    client.code = params[:code]
 	    response = client.fetch_access_token!

 	    session[:authorization] = response
 	    session[:authorization][:code] = params[:code]
 	    redirect_to "/users/#{current_user.id}"
     end  
 
 
     def new_event
 		 	event_id = params[:concert_id]
 	 		response = HTTParty.get("http://app.ticketmaster.com/discovery/v2/events/#{event_id}.json?apikey=#{ENV["API_KEY"]}", format: :plain)
 	        result = JSON.parse response, symbolize_names: true
            concertDateTimeStart =DateTime.parse(result[:dates][:start][:dateTime]).rfc3339
            concertDateTimeEnd =DateTime.parse(result[:dates][:start][:dateTime]).change(hour: +3).rfc3339
            # concertDateTime =DateTime.parse(result[:dates][:start][:localDate]+'T'+result[:dates][:start][:localTime]+'-04:00').rfc3339
 		    client = Signet::OAuth2::Client.new(client_options)
 		    client.update!(session[:authorization])
 		    service = Google::Apis::CalendarV3::CalendarService.new
 		    service.authorization = client
 		    today = Date.today
 		    event = Google::Apis::CalendarV3::Event.new({
 		      start: Google::Apis::CalendarV3::EventDateTime.new(date_time: concertDateTimeStart),
 		      end: Google::Apis::CalendarV3::EventDateTime.new(date_time: concertDateTimeEnd),
 		      summary: result[:name],
 		      description: result[:info],
 		      location: result[:_embedded][:venues][0][:name] 
 		    })
 		    service.insert_event(params[:calendar_id], event)
 		    flash[:message] = 'Event added to your calendar'
 		    redirect_to "/users/#{current_user.id}"    
     end


  	private
	    
	    def user_params
	    	params.require(:user).permit(:username, :password, :name, :email, :faves, :bio,
	:achievements)
	    end 

        # google canlendar methods
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

