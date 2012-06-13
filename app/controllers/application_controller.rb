class ApplicationController < ActionController::Base
  protect_from_forgery
  def signed_in?
    session[:signed_in].present?
  end

  def signed_in_customer?
    session[:signed_in] && session[:customer_remember_token]
  end

  def signed_in_employee?
    session[:signed_in] && session[:employee_remember_token]
  end
end
