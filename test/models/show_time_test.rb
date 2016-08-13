# == Schema Information
#
# Table name: show_times
#
#  id         :integer          not null, primary key
#  band_id    :integer
#  event_id   :integer
#  start_time :datetime
#  end_time   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ShowTimeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
