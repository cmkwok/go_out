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

class PayrollLog < ActiveRecord::Base
  belongs_to :employee

  validates :date,        presence: true
  validates :amount,      presence: true                          
  validates :employee_id, presence: true
end
