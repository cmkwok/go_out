class EmployeeHomeController < ApplicationController
  def index
    @employee = Employee.find(session[:employee_remember_token])
  end
end
