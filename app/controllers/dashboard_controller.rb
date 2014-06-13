# -*- encoding : utf-8 -*-
class DashboardController < ApplicationController

  # GET /assets
  # GET /assets.json
  def index
    if not user_signed_in?
      flash[:alert] = "Not logged in."
      redirect_to :root
    end

    @products = Product.all
  end

end
