class ConcertsController < ApplicationController


	def create
      concert = Concert.new
      concert.api_id = params[:api_id]
      concert.user_id = current_user.id 
      concert.category = params[:category]
      if concert.save
      	flash[:message] = 'the concert added'
		redirect_back(fallback_location: "/events/#{concert.api_id}")
      else
        flash[:message] = 'not added'
		redirect_back(fallback_location: "/events/#{concert.api_id}")
	  end			
	end


private
  def concert_params
    params.require(:concert).permit(:api_id, :category, :user_id)
  end	
	
end
