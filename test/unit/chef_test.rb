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

require 'test_helper'

class ChefTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
