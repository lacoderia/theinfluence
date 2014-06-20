class AdminDashboardController < ApplicationController

  def index
    if not user_signed_in? or not current_user.role? :admin 
      redirect_to :root
    end

    admin_users = []
    User.joins(:roles).where("roles.name = ?", "admin").each do |user|
      admin_users << user.id
    end
    @users = User.where("id not in (?)", admin_users)
  end

end
