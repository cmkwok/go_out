require 'test_helper'

class PayrollLogsControllerTest < ActionController::TestCase
  setup do
    @payroll_log = payroll_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payroll_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payroll_log" do
    assert_difference('PayrollLog.count') do
      post :create, payroll_log: {  }
    end

    assert_redirected_to payroll_log_path(assigns(:payroll_log))
  end

  test "should show payroll_log" do
    get :show, id: @payroll_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payroll_log
    assert_response :success
  end

  test "should update payroll_log" do
    put :update, id: @payroll_log, payroll_log: {  }
    assert_redirected_to payroll_log_path(assigns(:payroll_log))
  end

  test "should destroy payroll_log" do
    assert_difference('PayrollLog.count', -1) do
      delete :destroy, id: @payroll_log
    end

    assert_redirected_to payroll_logs_path
  end
end
