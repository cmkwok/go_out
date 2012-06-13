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

class Attendance < ActiveRecord::Base
  attr_accessible :employee_id, :check_in, :check_out

  belongs_to :employee

  validates :check_in,    presence: true
  validates :employee_id, presence: true

  def hours
    (self.check_out - self.check_in) / 3600
  end
end
