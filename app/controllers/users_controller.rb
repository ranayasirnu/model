class UsersController < ApplicationController
  
  before_filter :user_fields
  
  def fb_login
    
    puts "=============: #{params[:user][:user_id].inspect}"
    
    @user = User.find_for_facebook_mobile_oauth(params[:user])
    respond_to do |format|
      if @user.present? and @user.id
        format.json { render :json => {:success => true, :user => @user } }
      else
        format.json { render :json => {:success => false , :user => @user.errors.messages } }
      end
    end
    
  end
  
  #TODO specify params 
  def user_fields
    params.require(:user).permit! if params[:user].present?
  end
  
end
