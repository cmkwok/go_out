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
  has_one :employee, as: :employable
  has_many :order_items

  validates :employee,      presence: true
  validates :order_item_id, presence: true
end
