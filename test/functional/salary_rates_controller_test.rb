require 'test_helper'

class SalaryRatesControllerTest < ActionController::TestCase
  setup do
    @salary_rate = salary_rates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salary_rates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create salary_rate" do
    assert_difference('SalaryRate.count') do
      post :create, salary_rate: {  }
    end

    assert_redirected_to salary_rate_path(assigns(:salary_rate))
  end

  test "should show salary_rate" do
    get :show, id: @salary_rate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @salary_rate
    assert_response :success
  end

  test "should update salary_rate" do
    put :update, id: @salary_rate, salary_rate: {  }
    assert_redirected_to salary_rate_path(assigns(:salary_rate))
  end

  test "should destroy salary_rate" do
    assert_difference('SalaryRate.count', -1) do
      delete :destroy, id: @salary_rate
    end

    assert_redirected_to salary_rates_path
  end
end
