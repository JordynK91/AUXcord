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

  def destroy
    concert = Concert.find_by_api_id(params[:api_id])
    archive = Archive.where(user_id: current_user.id).find_by_api_id(params[:api_id])
    concert.destroy
    if archive != nil 
      archive.destroy
    end   
    flash[:message] = 'this concert has been deleted from your lists'
    redirect_to "/users/#{current_user.id}"
  end  

  def update
    concert = Concert.find_by_api_id(params[:api_id])
    concert.update(concert_params)
      redirect_to "/users/#{current_user.id}"
  end

private
  def concert_params
    params.require(:concert).permit(:api_id, :category, :user_id, :notes)
  end	
	
end
