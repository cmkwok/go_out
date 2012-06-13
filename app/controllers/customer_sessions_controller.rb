class CustomerSessionsController < ApplicationController
  def new
  end

  def create
    @customer = Customer.find_by_email_and_password(params[:customer_session][:email], params[:customer_session][:password])
    if @customer.present?
      session[:customer_remember_token] = @customer.id
      session[:signed_in] = true
      redirect_to root_path
    else
      redirect_to customer_signin_path
    end
  end

  def destroy
    session.delete :customer_remember_token
    session.delete :signed_in
    redirect_to root_path
  end
end
