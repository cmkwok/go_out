# == Schema Information
#
# Table name: attendances
#
#  id          :integer(4)      not null, primary key
#  check_in    :datetime
#  check_out   :datetime
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  employee_id :integer(4)
#

require 'test_helper'

class AttendanceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
