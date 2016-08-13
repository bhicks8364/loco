module CartHelper

  def total_amount
    @cart_total = 0
      cart.each do |id, qty| 
        event = Event.find_by_id(id) 
        @cart_total += qty*event.price if event
      end
    return @cart_total
  end
  
  def total_qty
    @cart_qty = 0
    cart.each do |_, qty|
    @cart_qty += qty
  end
  return @cart_qty
  end
end
