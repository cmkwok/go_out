# == Schema Information
#
# Table name: employees
#
#  id              :integer(4)      not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  ssn             :integer(4)
#  phone           :integer(4)
#  email           :string(255)
#  password        :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  employable_id   :integer(4)
#  employable_type :string(255)
#  address_id      :integer(4)
#  payroll_log_id  :integer(4)
#

require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
