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

require 'test_helper'

class WaiterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
