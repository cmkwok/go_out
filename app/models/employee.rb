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
#  payroll_log_id  :integer(4)
#  salary_rate_id  :integer(4)
#

class Employee < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :ssn, :phone, :email, :password, :address_attributes, :salary_rate_attributes

  belongs_to :employable, polymorphic: true
  has_one :address, as: :addressable
  has_one :salary_rate
  has_many :attendances
  has_many :payroll_logs

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :salary_rate

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
  validates :address,        presence: true

  def is_waiter?
    self.employable.is_a?(Waiter)
  end

  def is_chef?
    self.employable.is_a?(Chef)
  end

  def is_manager?
    self.employable.is_a?(Manager)
  end

  def hours
    self.attendances.sum{|p| p.hours}
  end
end
