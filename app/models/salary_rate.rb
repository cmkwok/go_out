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

class SalaryRate < ActiveRecord::Base
  has_many :employees

  validates :level,       presence: true
  validates :hourly_rate, presence: true
end
