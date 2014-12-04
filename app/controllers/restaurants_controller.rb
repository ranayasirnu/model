class RestaurantsController < ApplicationController
  
  
  def get_restaurants
    
    @restaurants = Restaurant.all
    respond_to do |format|
      format.json { render json: { :restaurants => @restaurants }  }
    end
    
  end
  
  
end
