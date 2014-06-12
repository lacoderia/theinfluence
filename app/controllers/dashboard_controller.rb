# -*- encoding : utf-8 -*-
class DashboardController < ApplicationController

  # GET /assets
  # GET /assets.json
  def index
    @user = User.first
    @products = Product.all
  end

end
