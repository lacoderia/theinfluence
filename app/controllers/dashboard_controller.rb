# -*- encoding : utf-8 -*-
class DashboardController < ApplicationController

  # GET /assets
  # GET /assets.json
  def index
    if not user_signed_in?
      flash[:alert] = "Not logged in."
      redirect_to :root
    else
      @products = Product.all
    end
  end

  def product_detail
    if not user_signed_in?
      flash[:alert] = "Not logged in."
      redirect_to :root
    else
      #getting the current logged user
      @user = current_user

      #Pick the product selected by the user
      @product_array = Product.where('id = ?', 1)

      if not @product_array.empty?
        @product = @product_array.first();
        @description = ""
        @benefits_array = []

        if @product.description
          @description = (@product.description).gsub("\n",'<br />')
        end

        if @product.benefits
          @benefits_array = (@product.benefits).split("\r\n")
        end

      end

    end
  end

end
