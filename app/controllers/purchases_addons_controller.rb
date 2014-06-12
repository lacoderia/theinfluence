# -*- encoding : utf-8 -*-
class PurchasesAddonsController < ApplicationController
  before_action :set_purchases_addon, only: [:show, :edit, :update, :destroy]

  # GET /purchases_addons
  # GET /purchases_addons.json
  def index
    @purchases_addons = PurchasesAddon.all
  end

  # GET /purchases_addons/1
  # GET /purchases_addons/1.json
  def show
  end

  # GET /purchases_addons/new
  def new
    @purchases_addon = PurchasesAddon.new
  end

  # GET /purchases_addons/1/edit
  def edit
  end

  # POST /purchases_addons
  # POST /purchases_addons.json
  def create
    @purchases_addon = PurchasesAddon.new(purchases_addon_params)

    respond_to do |format|
      if @purchases_addon.save
        format.html { redirect_to @purchases_addon, notice: 'Purchases addon was successfully created.' }
        format.json { render :show, status: :created, location: @purchases_addon }
      else
        format.html { render :new }
        format.json { render json: @purchases_addon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /purchases_addons/1
  # PATCH/PUT /purchases_addons/1.json
  def update
    respond_to do |format|
      if @purchases_addon.update(purchases_addon_params)
        format.html { redirect_to @purchases_addon, notice: 'Purchases addon was successfully updated.' }
        format.json { render :show, status: :ok, location: @purchases_addon }
      else
        format.html { render :edit }
        format.json { render json: @purchases_addon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchases_addons/1
  # DELETE /purchases_addons/1.json
  def destroy
    @purchases_addon.destroy
    respond_to do |format|
      format.html { redirect_to purchases_addons_url, notice: 'Purchases addon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchases_addon
      @purchases_addon = PurchasesAddon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def purchases_addon_params
      params.require(:purchases_addon).permit(:addon_id, :user_id, :quantity, :total_price)
    end
end
