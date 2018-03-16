class SearchesController < ApplicationController
    def index
        puts params
        if params[:id]
            # response = HTTParty.get("http://app.ticketmaster.com/discovery/v2/events.json?keyword=#{params[:id]}&classificationName=music&postalCode=#{params[:zip]}&radius=100&unit=miles&startDateTime=#{params[:date]}&sort=date,asc&apikey=#{ENV["API_KEY"]}", format: :plain)
            # response = HTTParty.get("http://app.ticketmaster.com/discovery/v2/events.json?keyword=#{params[:id]}&classificationName=music&postalCode=08083&radius=100&unit=miles&startDateTime=#{params[:date]}&sort=date,asc&apikey=#{ENV["API_KEY"]}", format: :plain)
            response = HTTParty.get("http://app.ticketmaster.com/discovery/v2/events.json?keyword=#{params[:id]}&classificationName=music&stateCode=#{params[:state_id]}&startDateTime=#{params[:date]}&countryCode=US&sort=date,asc&apikey=#{ENV["API_KEY"]}", format: :plain)
            puts params[:state_id]
            @results = JSON.parse response, symbolize_names: true
        end
    end



    def show
        @concerts = Concert.all
        @event_id = params[:id]
        response = HTTParty.get("http://app.ticketmaster.com/discovery/v2/events/#{@event_id}.json?apikey=#{ENV["API_KEY"]}", format: :plain)
        @result = JSON.parse response, symbolize_names: true
    end	

    def search 
        # redirect_to "/search/#{params[:keyword]}"
        redirect_to controller: 'searches', action: 'index', id: params[:keyword], date: params[:date], state_id: params[:state_id]
    end

end
