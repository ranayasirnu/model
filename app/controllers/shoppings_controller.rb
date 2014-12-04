class ShoppingsController < ApplicationController
  
  def get_shoppings
    
    @shoppings = Shopping.all
    respond_to do |format|
      format.json { render json: { :shoppings => @shoppings }  }
    end
    
  end
  
  
end
