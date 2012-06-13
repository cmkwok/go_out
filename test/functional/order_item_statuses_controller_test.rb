require 'test_helper'

class OrderItemStatusesControllerTest < ActionController::TestCase
  setup do
    @order_item_status = order_item_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_item_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_item_status" do
    assert_difference('OrderItemStatus.count') do
      post :create, order_item_status: {  }
    end

    assert_redirected_to order_item_status_path(assigns(:order_item_status))
  end

  test "should show order_item_status" do
    get :show, id: @order_item_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_item_status
    assert_response :success
  end

  test "should update order_item_status" do
    put :update, id: @order_item_status, order_item_status: {  }
    assert_redirected_to order_item_status_path(assigns(:order_item_status))
  end

  test "should destroy order_item_status" do
    assert_difference('OrderItemStatus.count', -1) do
      delete :destroy, id: @order_item_status
    end

    assert_redirected_to order_item_statuses_path
  end
end
