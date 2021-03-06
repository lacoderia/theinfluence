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
			@current_user_addons = {}
      @current_user_addons[:addons] = []
      @current_user_addons[:quantity] = []

      current_user.purchases_addons.each do |cu_pa|
        @current_user_addons[:addons] << cu_pa.addon
        @current_user_addons[:quantity] << cu_pa.quantity
      end

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
          @description = @product.description
        end

        if @product.benefits
          @benefits_array = (@product.benefits).split("<br>")
        end

        #Get the combos product
				@modal_tables = []
        @combos_array = @product.combos
        @product_addons_array = Addon.joins(combos: :product).where('product_id =? and addons_combos.purchasable = ?', @product_id, false).distinct('id').order('addon_order')
 
        @product_purchasable_addons_array = Addon.joins(combos: :product).where('product_id =? and addons_combos.purchasable = ?', @product_id, true).distinct('id').order('addon_order')

				@current_combo = nil
				@discount = nil
				@total_price = nil
				
				@product_addons_array.each do |addon|
					addon.addons_combos.each do |addon_combo| 
						current_combos = current_user.purchases_combos.where("combo_id = ?" , addon_combo.combo.id)
						if not current_combos.empty?
							@current_combo = addon_combo.combo
							@discount = current_combos.first.discount
              @total_price = current_combos.first.total_price - @discount
						end
					end
				end
        
        @current_user_addons = {}
        @current_user_addons[:addons] = []
        @current_user_addons[:quantity] = []

        current_user.purchases_addons.each do |cu_pa|
          @current_user_addons[:addons] << cu_pa.addon
          @current_user_addons[:quantity] << cu_pa.quantity
        end

        #Get the product assets
        if @product.assets
          @assets_json = @product.assets.order('asset_type DESC')
        end

      end

    end
  end

  def send_compra_email
    @combo = Combo.find(params[:combo_id])
    @product = Product.find(@combo.product.id)
    @user = User.find(params[:user_id])
    @addon_combo = nil
    if params[:addon_combo_id]
      @addon_combo = AddonsCombo.find(params[:addon_combo_id])
    end
    
    UserMailer.compra_email(@product, @combo, @addon_combo, @user).deliver
    
    redirect_to product_detail_path(:id => @product.id)
  end

  def send_cotiza_email

    @product = Product.find(params[:product_id])
    @user = User.find(params[:user_id])
    UserMailer.cotiza_email(@product, @user).deliver
    
    redirect_to product_detail_path(:id => @product.id)
  end

  def send_addons_cotiza_email
    @product = Product.find(params[:product_id])
    @user = User.find(params[:user_id])
		@discount = params[:discount]
    @addons = []
    @total = params[:total]
    if params[:addons] 
			params[:addons].each do |addon|
      	@addons << {:addon => Addon.find(addon[1]["addon_id"]), :quantity => addon[1]["quantity"] }
	    end
		end
    UserMailer.addons_cotiza_email(@addons, @user, @product, @total, @discount).deliver
    
    redirect_to product_detail_path(:id => @product.id)
  end

	def send_combos_cotiza_email
    @product = Product.find(params[:product_id])
    @combo = Combo.find(params[:combo_id])
    @user = User.find(params[:user_id])
    @addons = []
    @total = params[:total]
    if params[:addons]
			params[:addons].each do |addon|
      	@addons << {:addon => Addon.find(addon[1]["addon_id"]), :quantity => addon[1]["quantity"] }
	    end
		end
    UserMailer.combos_cotiza_email(@addons, @user, @combo, @total, @product).deliver
    
    redirect_to product_detail_path(:id => @product.id)
  end

end
