require 'test_helper'

class EstimateLineItemsControllerTest < ActionController::TestCase
  setup do
    @estimate_line_item = estimate_line_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estimate_line_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estimate_line_item" do
    assert_difference('EstimateLineItem.count') do
      post :create, estimate_line_item: { estimate_id: @estimate_line_item.estimate_id, quantity: @estimate_line_item.quantity, service_id: @estimate_line_item.service_id }
    end

    assert_redirected_to estimate_line_item_path(assigns(:estimate_line_item))
  end

  test "should show estimate_line_item" do
    get :show, id: @estimate_line_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estimate_line_item
    assert_response :success
  end

  test "should update estimate_line_item" do
    patch :update, id: @estimate_line_item, estimate_line_item: { estimate_id: @estimate_line_item.estimate_id, quantity: @estimate_line_item.quantity, service_id: @estimate_line_item.service_id }
    assert_redirected_to estimate_line_item_path(assigns(:estimate_line_item))
  end

  test "should destroy estimate_line_item" do
    assert_difference('EstimateLineItem.count', -1) do
      delete :destroy, id: @estimate_line_item
    end

    assert_redirected_to estimate_line_items_path
  end
end
