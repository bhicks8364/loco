class CartController < ApplicationController
  
  before_action :authenticate_user!
  
  # id is the product id via 'Add to cart' & routes.
  # We're creating a cart session hash with key (product id) and value (quantity 1 or +1). This creates ["1", 1], ["2", 1], ["3", 2] etc.
  # cart is defined at the Application Controller.
  
  def add
    id = params[:id] 
    cart[id] ? cart[id] = cart[id] + 1 : cart[id] = 1 
    flash[:notice] = "Added to cart"
    redirect_to :back
  end
  
  def clear
    session[:cart] = nil
    redirect_to action: :index
  end
  
  def index
    @cart = cart
  end
  
  def checkout
    @cart = cart
    @cart_total = 0
    @cart.each do |id, qty| 
      event = Event.find_by_id(id)
      # Purchase.create(buyer_id: current_user.id, event_id: event.id, amount: event.price )
      @cart_total += qty*event.price 
    end 
  end
 
end