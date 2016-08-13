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

class ShowTime < ActiveRecord::Base
    belongs_to :event
    belongs_to :band
    
    validates :band_id, :event_id, presence: true
    
    def occurring_on
       start_time.to_datetime..end_time.to_datetime
    end
end
