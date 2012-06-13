# == Schema Information
#
# Table name: tables
#
#  id           :integer(4)      not null, primary key
#  min_capacity :integer(4)
#  max_capacity :integer(4)
#  description  :string(255)
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

require 'test_helper'

class TableTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
