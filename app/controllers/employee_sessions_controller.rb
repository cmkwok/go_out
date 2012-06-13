class EmployeeSessionsController < ApplicationController
  def new
  end

  def create
    @employee = Employee.find_by_email_and_password(params[:employee_session][:email], params[:employee_session][:password])
    if @employee.present?
      session[:employee_remember_token] = @employee.id
      session[:signed_in] = true
      redirect_to root_path
    else
      redirect_to employee_signin_path
    end
  end

  def destroy
    session.delete :employee_remember_token
    session.delete :signed_in
    redirect_to root_path
  end
end
