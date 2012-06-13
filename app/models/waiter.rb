# == Schema Information
#
# Table name: waiters
#
#  id         :integer(4)      not null, primary key
#  languages  :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  order_id   :integer(4)
#

class Waiter < ActiveRecord::Base
  has_one :employee, as: :employable
  has_many :orders

  validates :languages,   presence: true
  validates :employee,    presence: true
end
