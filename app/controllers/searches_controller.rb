class SearchesController < ApplicationController
    def index
        puts if params[:id]
        response = HTTParty.get("http://app.ticketmaster.com/discovery/v2/events.json?keyword=#{params[:id]}&classificationName=music&dmaId=358&startDateTime=#{params[:date]}&sort=date,asc&apikey=#{ENV["API_KEY"]}", format: :plain)
        @results = JSON.parse response, symbolize_names: true
        # https://app.ticketmaster.com/discovery/v2/events?apikey=7elxdku9GGG5k8j0Xm8KWdANDgecHMV0&latlong=41.8786108,-87.6244330&radius=100&unit=miles&startDateTime=2017-07-08T00:00:00Z&size=300&page=2
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
