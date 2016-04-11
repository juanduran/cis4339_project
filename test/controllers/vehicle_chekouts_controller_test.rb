require 'test_helper'

class VehicleChekoutsControllerTest < ActionController::TestCase
  setup do
    @vehicle_chekout = vehicle_chekouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicle_chekouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle_chekout" do
    assert_difference('VehicleChekout.count') do
      post :create, vehicle_chekout: { checkout_date: @vehicle_chekout.checkout_date, crew_id: @vehicle_chekout.crew_id, return_date: @vehicle_chekout.return_date, vehicle_id: @vehicle_chekout.vehicle_id }
    end

    assert_redirected_to vehicle_chekout_path(assigns(:vehicle_chekout))
  end

  test "should show vehicle_chekout" do
    get :show, id: @vehicle_chekout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle_chekout
    assert_response :success
  end

  test "should update vehicle_chekout" do
    patch :update, id: @vehicle_chekout, vehicle_chekout: { checkout_date: @vehicle_chekout.checkout_date, crew_id: @vehicle_chekout.crew_id, return_date: @vehicle_chekout.return_date, vehicle_id: @vehicle_chekout.vehicle_id }
    assert_redirected_to vehicle_chekout_path(assigns(:vehicle_chekout))
  end

  test "should destroy vehicle_chekout" do
    assert_difference('VehicleChekout.count', -1) do
      delete :destroy, id: @vehicle_chekout
    end

    assert_redirected_to vehicle_chekouts_path
  end
end
