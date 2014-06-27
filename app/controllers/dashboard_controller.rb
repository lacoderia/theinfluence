# -*- encoding : utf-8 -*-
class DashboardController < ApplicationController
  authorize_resource :class => false 

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
        @assets_json = ''

        if @product.description
          @description = (@product.description).gsub("\n",'<br />')
        end

        if @product.benefits
          @benefits_array = (@product.benefits).split("\r\n")
        end

        #Get the combos product
        @combos_array = @product.combos
        @product_addons_array = Addon.joins(combos: :product).where('product_id =?', @product_id).distinct('id')

        @product_addons_set = {}

        @product_addons_array.each do |addon|
          if not @product_addons_set[addon.name]
            @product_addons_set[addon.name] = []
          end
          @product_addons_set[addon.name] << addon 
        end


        #Get the product assets
        if @product.assets
          @assets_json = @product.assets.to_json
        end


      end

    end
  end

end
