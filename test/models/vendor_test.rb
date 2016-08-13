# == Schema Information
#
# Table name: vendors
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :text
#  phone_number :string
#  website      :string
#  contact_name :string
#  tagline      :string
#  category     :string
#  approved_at  :datetime
#  approved_by  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class VendorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
