class ConcertsController < ApplicationController


	def create
      concert = Concert.new
      concertAll = Concert.all
      concert.api_id = params[:api_id]
      if concertAll.find_by_api_id(concert.api_id) != nil
          concertThis = concertAll.find_by_api_id(concert.api_id)
          concertThis.update(category: params[:category])
          flash[:message] = "the concert moved to #{params[:category]}"
          redirect_back(fallback_location: "/events/#{concert.api_id}")
      else
          concert.user_id = current_user.id 
          concert.category = params[:category]  
          if concert.save
          	flash[:message] = 'This event has been added.'
    		    redirect_back(fallback_location: "/events/#{concert.api_id}")
          else
            flash[:message] = 'Error: event not added.'
    		    redirect_back(fallback_location: "/events/#{concert.api_id}")
          end    
	    end			
	end

  def moveConcertToPast
      params[:concertDate]
      currentDate = Date.today
      concertDate = Date::strptime('2018-03-20', "%Y-%m-%d")
      if currentDate <= concertDate 
         flash[:message] = 'this concert is not in the past'
         redirect_to "/users/#{current_user.id}"
      else 
         flash[:message] = 'this concert is in the past'
         redirect_to "/users/#{current_user.id}"
      end            
  end

  def destroy
    concert = Concert.find_by_api_id(params[:api_id])
    concert.destroy
    flash[:message] = 'this concert has been deleted from your lists'
    redirect_to "/users/#{current_user.id}"
  end  


private
  def concert_params
    params.require(:concert).permit(:api_id, :category, :user_id)
  end	
	
end
