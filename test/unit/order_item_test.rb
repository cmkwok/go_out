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

require 'test_helper'

class OrderItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
