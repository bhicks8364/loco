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

require 'test_helper'

class PurchaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
