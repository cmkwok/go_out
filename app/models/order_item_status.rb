# == Schema Information
#
# Table name: order_item_statuses
#
#  id          :integer(4)      not null, primary key
#  description :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class OrderItemStatus < ActiveRecord::Base
  has_many :order_items

  STATUS_OPTIONS = %w(created submitted cooking cooked delivered)
  validates :description, presence: true,
                          inclusion: { in: STATUS_OPTIONS }
end
