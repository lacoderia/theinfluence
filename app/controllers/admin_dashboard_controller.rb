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
    @user = User.find(params[:user_id])
    @user_pc = @user.purchases_combos
    @user_pa = @user.purchases_addons

    pc_ids = []
    @user_pc.each do |pc|
      pc_ids << pc.combo.product.id
    end

    @products_combos = {}
    Combo.where("product_id not in (?)", pc_ids ).each do |ctp|
      if not @products_combos[ctp.product]
        @products_combos[ctp.product] = []
      end
      @products_combos[ctp.product] << ctp
    end

  end

  def activate_user
    user = User.find(params[:user_id])
    user.active = true
    user.save!

    if params[:redirected]
      redirect_to :admin
    else
      redirect_to admin_user_detail_path(:user_id => user.id)
    end
  end 
  
  def deactivate_user
    user = User.find(params[:user_id])
    user.active = false
    user.save!

    if params[:redirected]
      redirect_to :admin
    else
      redirect_to admin_user_detail_path(:user_id => user.id)
    end
  end 

  def assign_combo
    product = Product.find(params[:product_id])
    user = User.find(params[:user_id])
    current = nil 
    user.purchases_combos.each do |pc|
      if pc.combo.product.id == product.id
        current = pc.id 
      end
    end

    # cambiar combo del mismo producto y borrar addons
    if current
      pc = PurchasesCombo.find(current)
      user.purchases_addons.each do |pa|
        pa.addon.addons_combos.each do |ac|
          if ac.combo_id == params[:combo_id].to_i
            pa.destroy!
          end
        end
      end
    else
      pc = PurchasesCombo.new
      pc.user_id = params[:user_id]
      pc.user_name = params[:user_name]
      pc.password = params[:password]
    end

    pc.combo_id = params[:combo_id]
    pc.total_price = Combo.find(params[:combo_id]).price
    pc.save!

    redirect_to admin_user_detail_path(:user_id => user.id)
  end

  def remove_combo
    pc = PurchasesCombo.find(params[:pc_id])
    pc.destroy!

    redirect_to admin_user_detail_path(:user_id => params[:user_id])

  end

  def assign_addon
    current = params[:current]
    if current == "true"
      pa = PurchasesAddon.where("user_id = ? and addon_id = ?", params[:user_id], params[:addon_id]).first
      pa.quantity += 1
    else
      pa = PurchasesAddon.new
      pa.user_id = params[:user_id]
      pa.addon_id = params[:addon_id]
      pa.quantity = 1
    end

    ac = AddonsCombo.where("addon_id = ? and combo_id = ?", params[:addon_id], params[:combo_id]).first

    pa.total_price = ac.price * pa.quantity
    pa.save!

    redirect_to admin_user_detail_path(:user_id => params[:user_id])
  end

  def remove_addon
    
    pa = PurchasesAddon.where("user_id = ? and addon_id = ?", params[:user_id], params[:addon_id]).first
    if (pa.quantity <= 1)
      pa.destroy
    else
      pa.quantity -= 1
      ac = AddonsCombo.where("addon_id = ? and combo_id = ?", params[:addon_id], params[:combo_id]).first
      pa.total_price = ac.price * pa.quantity
      pa.save!
    end

    redirect_to admin_user_detail_path(:user_id => params[:user_id])
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

end
