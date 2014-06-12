require 'test_helper'

class AddonsCombosControllerTest < ActionController::TestCase
  setup do
    @addons_combo = addons_combos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addons_combos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addons_combo" do
    assert_difference('AddonsCombo.count') do
      post :create, addons_combo: { addon_id: @addons_combo.addon_id, combo_id: @addons_combo.combo_id, price: @addons_combo.price, quantity: @addons_combo.quantity }
    end

    assert_redirected_to addons_combo_path(assigns(:addons_combo))
  end

  test "should show addons_combo" do
    get :show, id: @addons_combo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @addons_combo
    assert_response :success
  end

  test "should update addons_combo" do
    patch :update, id: @addons_combo, addons_combo: { addon_id: @addons_combo.addon_id, combo_id: @addons_combo.combo_id, price: @addons_combo.price, quantity: @addons_combo.quantity }
    assert_redirected_to addons_combo_path(assigns(:addons_combo))
  end

  test "should destroy addons_combo" do
    assert_difference('AddonsCombo.count', -1) do
      delete :destroy, id: @addons_combo
    end

    assert_redirected_to addons_combos_path
  end
end
