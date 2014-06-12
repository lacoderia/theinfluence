# -*- encoding : utf-8 -*-
require 'test_helper'

class CombosControllerTest < ActionController::TestCase
  setup do
    @combo = combos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:combos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create combo" do
    assert_difference('Combo.count') do
      post :create, combo: { description: @combo.description, name: @combo.name, price: @combo.price, product_id: @combo.product_id }
    end

    assert_redirected_to combo_path(assigns(:combo))
  end

  test "should show combo" do
    get :show, id: @combo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @combo
    assert_response :success
  end

  test "should update combo" do
    patch :update, id: @combo, combo: { description: @combo.description, name: @combo.name, price: @combo.price, product_id: @combo.product_id }
    assert_redirected_to combo_path(assigns(:combo))
  end

  test "should destroy combo" do
    assert_difference('Combo.count', -1) do
      delete :destroy, id: @combo
    end

    assert_redirected_to combos_path
  end
end
