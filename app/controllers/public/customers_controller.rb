class Public::CustomersController < ApplicationController
  def show
    @user = current_customer
  end

  def edit
    @user = current_customer
  end
  def updated
    @user = current_customer
    if @user.update(customer_params)
      flash[:success] = "メールアドレスを更新しました"
      redirect_to customer_path
    else
      render :exit
    end
  end
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email)
  end
end
