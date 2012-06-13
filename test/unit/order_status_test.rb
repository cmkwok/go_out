# == Schema Information
#
# Table name: order_statuses
#
#  id          :integer(4)      not null, primary key
#  description :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

require 'test_helper'

class OrderStatusTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
