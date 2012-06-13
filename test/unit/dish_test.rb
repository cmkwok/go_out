# == Schema Information
#
# Table name: dishes
#
#  id           :integer(4)      not null, primary key
#  name         :string(255)
#  introduction :string(255)
#  price        :integer(10)
#  availability :boolean(1)
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#  catalog_id   :integer(4)
#

require 'test_helper'

class DishTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
