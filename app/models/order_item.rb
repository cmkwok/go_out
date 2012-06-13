# == Schema Information
#
# Table name: order_items
#
#  id                   :integer(4)      not null, primary key
#  comment              :string(255)
#  created_at           :datetime        not null
#  updated_at           :datetime        not null
#  order_id             :integer(4)
#  order_item_status_id :integer(4)
#  dish_id              :integer(4)
#  chef_id              :integer(4)
#

class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :chef
  belongs_to :dish
  belongs_to :order_item_status

  validates :order_id,             presence: true
  validates :chef_id,              presence: true
  validates :dish_id,              presence: true
  validates :order_item_status_id, presence: true
end
