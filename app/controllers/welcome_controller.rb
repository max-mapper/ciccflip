class WelcomeController < ApplicationController
  def location
    request = "http://maps.googleapis.com/maps/api/geocode/json?address=#{URI.escape(params[:location])}&sensor=false"
    respond_to do |format|
      format.json  do
         render :json => HTTParty.get(request).parsed_response
       end
    end
  end
end
