class SearchesController < ApplicationController
    def index
        puts if params[:id]
        response = HTTParty.get("http://app.ticketmaster.com/discovery/v2/events.json?keyword=#{params[:id]}&apikey=#{ENV["API_KEY"]}", format: :plain)
        @results = JSON.parse response, symbolize_names: true
    end

    def show
        @concerts = Concert.all
        @event_id = params[:id]
        response = HTTParty.get("http://app.ticketmaster.com/discovery/v2/events/#{@event_id}.json?apikey=#{ENV["API_KEY"]}", format: :plain)
        @result = JSON.parse response, symbolize_names: true
    end	

    def search 
        redirect_to "/search/#{params[:keyword]}"
    end

end
