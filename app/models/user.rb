# == Schema Information
#
# Table name: users
#
#  id                       :integer          not null, primary key
#  email                    :string           default(""), not null
#  encrypted_password       :string           default(""), not null
#  reset_password_token     :string
#  reset_password_sent_at   :datetime
#  remember_created_at      :datetime
#  sign_in_count            :integer          default(0), not null
#  current_sign_in_at       :datetime
#  last_sign_in_at          :datetime
#  current_sign_in_ip       :string
#  last_sign_in_ip          :string
#  name                     :string
#  braintree_id             :string
#  braintree_transaction_id :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

class User < ActiveRecord::Base
  has_many :purchases, foreign_key: :buyer_id
  has_many :events, through: :purchases
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  
  
  def has_tickets_for(event)
    events.include?(event)
  end
  
  def event_details
    event_tickets = 0
    # purchases.map {|p| event_tickets += p}
    event_tickets
    purchases.map {|t| t.to_s }
  end
  
    
end
