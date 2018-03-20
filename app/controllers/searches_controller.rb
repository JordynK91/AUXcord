class SearchesController < ApplicationController
    def index
        if params[:id]
            if params[:startDate] != "" && params[:endDate] != ""
                startDate = params[:startDate] + "T00:00:00Z"
                endDate = params[:endDate] + "T00:00:00Z"
                if params[:state_id] != ""
                    puts "first ran"
                    puts response
                    response = HTTParty.get("http://app.ticketmaster.com/discovery/v2/events.json?keyword=#{params[:id]}&classificationName=music&stateCode=#{params[:state_id]}&startDateTime=#{startDate}&endDateTime=#{endDate}&countryCode=US&sort=date,asc&apikey=#{ENV["API_KEY"]}", format: :plain)
                    @results = JSON.parse response, symbolize_names: true
                elsif params[:latlon] != ""
                    puts "second ran"
                    response = HTTParty.get("http://app.ticketmaster.com/discovery/v2/events.json?keyword=#{params[:id]}&classificationName=music&latlong=#{params[:latlon]}&radius=50&startDateTime=#{startDate}&endDateTime=#{endDate}&countryCode=US&sort=date,asc&apikey=#{ENV["API_KEY"]}", format: :plain)
                    @results = JSON.parse response, symbolize_names: true
                elsif params[:keyword] != ""
                    puts "third ran"
                    response = HTTParty.get("http://app.ticketmaster.com/discovery/v2/events.json?keyword=#{params[:id]}&classificationName=music&startDateTime=#{startDate}&endDateTime=#{endDate}&countryCode=US&sort=date,asc&apikey=#{ENV["API_KEY"]}", format: :plain)
                    @results = JSON.parse response, symbolize_names: true
                end
            else    
                if params[:state_id] != ""
                    puts "first ran"
                    puts response
                    response = HTTParty.get("http://app.ticketmaster.com/discovery/v2/events.json?keyword=#{params[:id]}&classificationName=music&stateCode=#{params[:state_id]}&startDateTime=#{params[:date]}&countryCode=US&sort=date,asc&apikey=#{ENV["API_KEY"]}", format: :plain)
                    @results = JSON.parse response, symbolize_names: true
                elsif params[:latlon] != ""
                    puts "second ran"
                    response = HTTParty.get("http://app.ticketmaster.com/discovery/v2/events.json?keyword=#{params[:id]}&classificationName=music&latlong=#{params[:latlon]}&radius=50&startDateTime=#{params[:date]}&countryCode=US&sort=date,asc&apikey=#{ENV["API_KEY"]}", format: :plain)
                    @results = JSON.parse response, symbolize_names: true
                elsif params[:keyword] != ""
                    puts "third ran"
                    response = HTTParty.get("http://app.ticketmaster.com/discovery/v2/events.json?keyword=#{params[:id]}&classificationName=music&startDateTime=#{params[:date]}&countryCode=US&sort=date,asc&apikey=#{ENV["API_KEY"]}", format: :plain)
                    @results = JSON.parse response, symbolize_names: true
                end
            end    
        else
           @results = nil;
        end
    end



    def show
        @concerts = Concert.all
        @event_id = params[:id]
        response = HTTParty.get("http://app.ticketmaster.com/discovery/v2/events/#{@event_id}.json?apikey=#{ENV["API_KEY"]}", format: :plain)
        @result = JSON.parse response, symbolize_names: true
    end	

    def search 
        redirect_to controller: 'searches', action: 'index', id: params[:keyword], date: params[:date], state_id: params[:state_id], latlon: params[:latlon], startDate: params[:startDate], endDate: params[:endDate]
    end

end
