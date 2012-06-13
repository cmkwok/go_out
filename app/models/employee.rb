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

class Employee < ActiveRecord::Base
  belongs_to :employable, polymorphic: true
  belongs_to :address
  has_many :attendances
  has_many :payroll_logs

  validates :first_name,     presence: true
  validates :last_name,      presence: true
  validates :ssn,            presence: true,
                             format: { with: /\d{9}/ }
  validates :phone,          presence: true,
                             format: { with: /\d{10}/ }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,          presence: true,
                             format: { with: VALID_EMAIL_REGEX },
                             uniqueness: { case_sensitive: false }
  validates :password,       presence: true, length: { minimum: 8 }
  validates :address_id,     presence: true
  validates :payroll_log_id, presence: true
end
