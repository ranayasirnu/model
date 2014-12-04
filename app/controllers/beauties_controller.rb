class BeautiesController < ApplicationController
  
  def get_beauties
    
    @beauties = Beauty.all
    respond_to do |format|
      format.json { render json: { :beauties => @beauties }  }
    end
    
  end
  
  
end
