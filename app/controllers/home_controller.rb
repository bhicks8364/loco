class HomeController < ApplicationController
  def index
    if user_signed_in?
      @customer = Braintree::Customer.find(current_user.braintree_id) if current_user.braintree_id.present?
      @transactions = @customer.transactions if @customer
    end
  end
  
  def about
    
  end
  
  def contact
    
  end
  
  def videos
    
  end
  
  def fall
    
  end
  
  def loco
    
  end
  
  def mongo
    
  end
  
  def donate
    
  end
  
  def info
    
  end
end
