# -*- encoding : utf-8 -*-
class PurchasesCombosController < ApplicationController
  authorize_resource
  before_action :set_purchases_combo, only: [:show, :edit, :update, :destroy]

  # GET /purchases_combos
  # GET /purchases_combos.json
  def index
    @purchases_combos = PurchasesCombo.all
  end

  # GET /purchases_combos/1
  # GET /purchases_combos/1.json
  def show
  end

  # GET /purchases_combos/new
  def new
    @purchases_combo = PurchasesCombo.new
  end

  # GET /purchases_combos/1/edit
  def edit
  end

  # POST /purchases_combos
  # POST /purchases_combos.json
  def create
    @purchases_combo = PurchasesCombo.new(purchases_combo_params)

    respond_to do |format|
      if @purchases_combo.save
        format.html { redirect_to @purchases_combo, notice: 'Purchases combo was successfully created.' }
        format.json { render :show, status: :created, location: @purchases_combo }
      else
        format.html { render :new }
        format.json { render json: @purchases_combo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /purchases_combos/1
  # PATCH/PUT /purchases_combos/1.json
  def update

    respond_to do |format|
      if @purchases_combo.update(purchases_combo_params)
        format.html { redirect_to admin_user_detail_path(:user_id => @purchases_combo.user_id), notice: 'El producto fue actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @purchases_combo }
      else
        format.html { render admin_user_detail_path(:user_id => @purchases_combo.user_id), alert: 'El producto no pudo ser actualizado.' }
        format.json { render json: @purchases_combo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchases_combos/1
  # DELETE /purchases_combos/1.json
  def destroy
    @purchases_combo.destroy
    respond_to do |format|
      format.html { redirect_to purchases_combos_url, notice: 'Purchases combo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchases_combo
      @purchases_combo = PurchasesCombo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def purchases_combo_params
      params.require(:purchases_combo).permit(:user_id, :combo_id, :total_price, :upgrade, :user_name, :password)
    end
end
