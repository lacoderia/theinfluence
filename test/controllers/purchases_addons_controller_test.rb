# -*- encoding : utf-8 -*-
require 'test_helper'

class PurchasesAddonsControllerTest < ActionController::TestCase
  setup do
    @purchases_addon = purchases_addons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purchases_addons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purchases_addon" do
    assert_difference('PurchasesAddon.count') do
      post :create, purchases_addon: { addon_id: @purchases_addon.addon_id, quantity: @purchases_addon.quantity, total_price: @purchases_addon.total_price, user_id: @purchases_addon.user_id }
    end

    assert_redirected_to purchases_addon_path(assigns(:purchases_addon))
  end

  test "should show purchases_addon" do
    get :show, id: @purchases_addon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purchases_addon
    assert_response :success
  end

  test "should update purchases_addon" do
    patch :update, id: @purchases_addon, purchases_addon: { addon_id: @purchases_addon.addon_id, quantity: @purchases_addon.quantity, total_price: @purchases_addon.total_price, user_id: @purchases_addon.user_id }
    assert_redirected_to purchases_addon_path(assigns(:purchases_addon))
  end

  test "should destroy purchases_addon" do
    assert_difference('PurchasesAddon.count', -1) do
      delete :destroy, id: @purchases_addon
    end

    assert_redirected_to purchases_addons_path
  end
end
