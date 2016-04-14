require 'test_helper'

class VehicleCheckoutsControllerTest < ActionController::TestCase
  setup do
    @vehicle_checkout = vehicle_checkouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicle_checkouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle_checkout" do
    assert_difference('VehicleCheckout.count') do
      post :create, vehicle_checkout: { checkout_date: @vehicle_checkout.checkout_date, crew_id: @vehicle_checkout.crew_id, return_date: @vehicle_checkout.return_date, vehicle_id: @vehicle_checkout.vehicle_id }
    end

    assert_redirected_to vehicle_checkout_path(assigns(:vehicle_checkout))
  end

  test "should show vehicle_checkout" do
    get :show, id: @vehicle_checkout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle_checkout
    assert_response :success
  end

  test "should update vehicle_checkout" do
    patch :update, id: @vehicle_checkout, vehicle_checkout: { checkout_date: @vehicle_checkout.checkout_date, crew_id: @vehicle_checkout.crew_id, return_date: @vehicle_checkout.return_date, vehicle_id: @vehicle_checkout.vehicle_id }
    assert_redirected_to vehicle_checkout_path(assigns(:vehicle_checkout))
  end

  test "should destroy vehicle_checkout" do
    assert_difference('VehicleCheckout.count', -1) do
      delete :destroy, id: @vehicle_checkout
    end

    assert_redirected_to vehicle_checkouts_path
  end
end
