class HomeController < ApplicationController
  def index
    if signed_in_customer?
      redirect_to customer_home_path
    elsif signed_in_employee?
    end
  end
end
