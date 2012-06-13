# == Schema Information
#
# Table name: payroll_logs
#
#  id          :integer(4)      not null, primary key
#  date        :date
#  amount      :integer(10)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  employee_id :integer(4)
#

require 'test_helper'

class PayrollLogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
