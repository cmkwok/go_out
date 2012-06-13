# == Schema Information
#
# Table name: salary_rates
#
#  id          :integer(4)      not null, primary key
#  level       :string(255)
#  description :string(255)
#  hourly_rate :integer(10)
#  bonus       :integer(10)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  employee_id :integer(4)
#

require 'test_helper'

class SalaryRateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
