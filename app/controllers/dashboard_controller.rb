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

  def contract
    if not user_signed_in?
      flash[:alert] = "Not logged in."
      redirect_to :root
    else

    end
  end

  def product_detail

    if not user_signed_in?
      flash[:alert] = "Not logged in."
      redirect_to :root
    else
      #Get the product id
      @product_id = params[:id]

      #Pick the product selected by the user
      @product_array = Product.where('id = ?', @product_id)

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

        #Get the combos product
        @combos_array = @product.combos

      end

    end
  end

end
