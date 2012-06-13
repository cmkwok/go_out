class CustomerHomeController < ApplicationController
  def index
    @customer = Customer.find(session[:customer_remember_token])
  end
end
