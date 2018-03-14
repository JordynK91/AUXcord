class SearchesController < ApplicationController
    def index
        response = HTTParty.get("https://app.ticketmaster.com/discovery/v1/events.json?apikey=#{ENV["API_KEY"]}")
        @results = JSON.parse response.body
    end


end
