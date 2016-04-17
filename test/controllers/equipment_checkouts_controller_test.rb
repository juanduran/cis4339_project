require 'test_helper'

class EquipmentCheckoutsControllerTest < ActionController::TestCase
  setup do
    @equipment_checkout = equipment_checkouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipment_checkouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipment_checkout" do
    assert_difference('EquipmentCheckout.count') do
      post :create, equipment_checkout: { checkout_date: @equipment_checkout.checkout_date, employee_id: @equipment_checkout.employee_id, equipment_id: @equipment_checkout.equipment_id, return_date: @equipment_checkout.return_date }
    end

    assert_redirected_to equipment_checkout_path(assigns(:equipment_checkout))
  end

  test "should show equipment_checkout" do
    get :show, id: @equipment_checkout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipment_checkout
    assert_response :success
  end

  test "should update equipment_checkout" do
    patch :update, id: @equipment_checkout, equipment_checkout: { checkout_date: @equipment_checkout.checkout_date, employee_id: @equipment_checkout.employee_id, equipment_id: @equipment_checkout.equipment_id, return_date: @equipment_checkout.return_date }
    assert_redirected_to equipment_checkout_path(assigns(:equipment_checkout))
  end

  test "should destroy equipment_checkout" do
    assert_difference('EquipmentCheckout.count', -1) do
      delete :destroy, id: @equipment_checkout
    end

    assert_redirected_to equipment_checkouts_path
  end
end
