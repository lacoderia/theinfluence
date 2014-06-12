# -*- encoding : utf-8 -*-
require 'test_helper'

class PurchasesCombosControllerTest < ActionController::TestCase
  setup do
    @purchases_combo = purchases_combos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purchases_combos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purchases_combo" do
    assert_difference('PurchasesCombo.count') do
      post :create, purchases_combo: { combo_id: @purchases_combo.combo_id, total_price: @purchases_combo.total_price, upgrade: @purchases_combo.upgrade, user_id: @purchases_combo.user_id }
    end

    assert_redirected_to purchases_combo_path(assigns(:purchases_combo))
  end

  test "should show purchases_combo" do
    get :show, id: @purchases_combo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purchases_combo
    assert_response :success
  end

  test "should update purchases_combo" do
    patch :update, id: @purchases_combo, purchases_combo: { combo_id: @purchases_combo.combo_id, total_price: @purchases_combo.total_price, upgrade: @purchases_combo.upgrade, user_id: @purchases_combo.user_id }
    assert_redirected_to purchases_combo_path(assigns(:purchases_combo))
  end

  test "should destroy purchases_combo" do
    assert_difference('PurchasesCombo.count', -1) do
      delete :destroy, id: @purchases_combo
    end

    assert_redirected_to purchases_combos_path
  end
end
