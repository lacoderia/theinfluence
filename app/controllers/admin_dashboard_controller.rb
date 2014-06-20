class AdminDashboardController < ApplicationController

  def index
    if not user_signed_in? or not current_user.role? :admin 
      redirect_to :root
    end
  end

end
