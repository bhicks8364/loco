# == Schema Information
#
# Table name: purchases
#
#  id             :integer          not null, primary key
#  event_id       :integer
#  buyer_id       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  amount         :float
#  transaction_id :integer
#  qty            :integer
#

class Purchase < ActiveRecord::Base
    belongs_to :event
    belongs_to :buyer, class_name: 'User'
    
    def num_of_tix
       n = amount / event.price
       n.round(2)
    end
    
    def to_s
       "#{event.name} - #{transaction_id}" 
    end
    
    
    
end
