class SearchesController < ApplicationController
    def index
        puts if params[:id]
        response = HTTParty.get("http://app.ticketmaster.com/discovery/v1/events.json?keyword=#{params[:id]}&apikey=#{ENV["API_KEY"]}", format: :plain)
        @results = JSON.parse response, symbolize_names: true
    end

    def search 
        redirect_to "/search/#{params[:keyword]}"
    end

end
