# == Schema Information
#
# Table name: addresses
#
#  id               :integer(4)      not null, primary key
#  street           :string(255)
#  city             :string(255)
#  state            :string(255)
#  zip              :integer(4)
#  created_at       :datetime        not null
#  updated_at       :datetime        not null
#  addressable_id   :integer(4)
#  addressable_type :string(255)
#

require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
