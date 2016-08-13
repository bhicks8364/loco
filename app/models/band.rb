# == Schema Information
#
# Table name: bands
#
#  id           :integer          not null, primary key
#  name         :string
#  phone_number :string
#  contact_name :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Band < ActiveRecord::Base
    has_many :show_times
    # has_many :events, through: :show_times
    
    
    def playing_on
       show_times.map(&:occurring_on)
    end
    # def dates
    #     arr = []
    #     show_times.each do |show_time|
    #         t = show_time.start_time..show_time.end_time
    #       arr << t
    #     end
    #     arr
    # end
    
    # def playing_on?(date)
    #     dates.include?(date)
    # end
    
end
