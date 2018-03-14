class SearchesController < ApplicationController
    def index
        # response = HTTParty.get("https://app.ticketmaster.com/discovery/v1/events.json?apikey=#{ENV["API_KEY"]}")
        # http://app.ticketmaster.com/discovery/v1/events.json?keyword=Madonna&apikey=#{ENV["API_KEY"]}", format: :plain)
        response = HTTParty.get("https://app.ticketmaster.com/discovery/v2/events.json?classificationName=music&dmaId=358&apikey=#{ENV["API_KEY"]}", format: :plain)
        @results = JSON.parse response, symbolize_names: true
    end

    def show
    end	

end
