class TransactionsController < ApplicationController
  before_action :authenticate_user!
  
  def new
  end

  def create
    @total_amount = params[:total_amount]
    if current_user.braintree_id?
      customer = Braintree::Customer.find(current_user.braintree_id)
    else
      result = Braintree::Customer.create(
        email: current_user.email,
        payment_method_nonce: params[:payment_method_nonce]
      )
      customer = result.customer
      current_user.update(braintree_id: customer.id)
    end

    trans_result = Braintree::Transaction.sale(
      :customer_id => current_user.braintree_id,
      # :order_id => @purchase.id,
      :amount => @total_amount,
      :payment_method_nonce => params[:payment_method_nonce],
      :options => {
        :submit_for_settlement => true
      }
    )
    session[:cart] = nil  
    
    redirect_to root_path, notice: "You just bought your tickets!!!!"
  end
end
