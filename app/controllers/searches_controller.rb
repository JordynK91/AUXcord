class SearchesController < ApplicationController
    def index
        puts if params[:id]
        response = HTTParty.get("https://app.ticketmaster.com/discovery/v2/events.json?apikey=#{ENV["API_KEY"]&keyword=New York", format: :plain)

        @results = JSON.parse response, symbolize_names: true
    end


    def show
    end	

    def search 
        redirect_to "/search/#{params[:keyword]}"
    end

end
