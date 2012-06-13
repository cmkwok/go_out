# == Schema Information
#
# Table name: chefs
#
#  id            :integer(4)      not null, primary key
#  specialty     :string(255)
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#  order_item_id :integer(4)
#

class Chef < ActiveRecord::Base
  attr_accessible :specialty, :employee_attributes

  has_one :employee, as: :employable
  has_many :order_items

  accepts_nested_attributes_for :employee

  validates :employee,      presence: true
end
