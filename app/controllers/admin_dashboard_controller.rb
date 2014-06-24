class AdminDashboardController < ApplicationController
  authorize_resource :class => false

  def index

    admin_users = []
    User.joins(:roles).where("roles.name = ?", "admin").each do |user|
      admin_users << user.id
    end
    @users = User.where("id not in (?)", admin_users)
  end

  def user_detail
    
  end

  def activate_user
    user = User.find(params[:user_id])
    user.active = true
    user.save!

    redirect_to :admin
  end 
  
  def deactivate_user
    user = User.find(params[:user_id])
    user.active = false
    user.save!

    redirect_to :admin
  end 

end
