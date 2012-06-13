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
  attr_accessible :languages, :employee_attributes

  has_one :employee, as: :employable
  has_one :address, through: :employee
  has_one :salary_rate, through: :employee
  has_many :orders

  accepts_nested_attributes_for :employee

  validates :languages,   presence: true
  validates :employee,    presence: true
end
