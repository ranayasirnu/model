class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable #, :validatable
         
         
         
  def self.find_for_facebook_mobile_oauth(user_json)
    puts "==========dddddd====: #{user_json['user_id']}"
    puts "==========dddddd====: #{user_json['location']}"
    puts "==========dddddd====: #{user_json['status']}"
    
    user = User.where(:user_id => user_json['user_id']).first
    if user.present?
      user.update_attributes(
                      location: user_json['location'],
                      status: user_json['status'],
                    ) 
    else
      user = User.create(
                        location: user_json['location'],
                        status: user_json['status'],
                        user_id:user_json['user_id']
                      )
    end
    user
  end
  
end
