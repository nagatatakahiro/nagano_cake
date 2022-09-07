class Admin::CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params)
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    customer = Customer.find(params[:id])
    customer.update(customer_params)
    redirect_to admin_customer_path(customer)
  end

  private
  def customer_params
     params.require(:customer).permit(:full_name,:full_name_kana,:email,:postal_code,:address,:telephone_number,:is_active)
  end
end
