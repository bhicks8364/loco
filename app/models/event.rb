# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string
#  start_date :datetime
#  end_date   :datetime
#  address    :string
#  city       :string
#  state      :string
#  zipcode    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  price      :float
#

class Event < ActiveRecord::Base
    has_many :purchases
    has_many :buyers, through: :purchases
    has_many :show_times
    has_many :bands, through: :show_times
    include ArelHelpers::ArelTable
    scope :past, -> { Event.where(Event[:end_date].lteq(Date.yesterday))}
    scope :starting_after, ->(time) { where("start_date >= ?", time) }
    scope :ending_before, ->(time) { where("end_date <= ?", time) }
    scope :upcoming, -> { Event.where(Event[:start_date].gteq(Date.today))}
    
    def start_time
        self.start_date
    end
    
    def self.now
        self.starting_after(Time.now.beginning_of_day).ending_before(Time.now.beginning_of_day)
    end
    
    def occurring_on
       start_date.to_datetime..end_date.to_datetime
    end
    
end
