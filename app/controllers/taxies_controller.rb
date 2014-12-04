class TaxiesController < ApplicationController
  
  
  def get_taxies
    
    @taxies = Taxi.all
    respond_to do |format|
      format.json { render json: { :taxies => @taxies }  }
    end
    
  end
  
end
