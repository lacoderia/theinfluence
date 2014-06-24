# -*- encoding : utf-8 -*-
class AddonsCombosController < ApplicationController
  authorize_resource 
  before_action :set_addons_combo, only: [:show, :edit, :update, :destroy]

  # GET /addons_combos
  # GET /addons_combos.json
  def index
    @addons_combos = AddonsCombo.all
  end

  # GET /addons_combos/1
  # GET /addons_combos/1.json
  def show
  end

  # GET /addons_combos/new
  def new
    @addons_combo = AddonsCombo.new
  end

  # GET /addons_combos/1/edit
  def edit
  end

  # POST /addons_combos
  # POST /addons_combos.json
  def create
    @addons_combo = AddonsCombo.new(addons_combo_params)

    respond_to do |format|
      if @addons_combo.save
        format.html { redirect_to @addons_combo, notice: 'Addons combo was successfully created.' }
        format.json { render :show, status: :created, location: @addons_combo }
      else
        format.html { render :new }
        format.json { render json: @addons_combo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addons_combos/1
  # PATCH/PUT /addons_combos/1.json
  def update
    respond_to do |format|
      if @addons_combo.update(addons_combo_params)
        format.html { redirect_to @addons_combo, notice: 'Addons combo was successfully updated.' }
        format.json { render :show, status: :ok, location: @addons_combo }
      else
        format.html { render :edit }
        format.json { render json: @addons_combo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addons_combos/1
  # DELETE /addons_combos/1.json
  def destroy
    @addons_combo.destroy
    respond_to do |format|
      format.html { redirect_to addons_combos_url, notice: 'Addons combo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addons_combo
      @addons_combo = AddonsCombo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def addons_combo_params
      params.require(:addons_combo).permit(:addon_id, :combo_id, :quantity, :price)
    end
end
