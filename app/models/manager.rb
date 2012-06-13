# == Schema Information
#
# Table name: managers
#
#  id         :integer(4)      not null, primary key
#  comment    :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Manager < ActiveRecord::Base
  attr_accessible :comment, :employee_attributes
  has_one :employee, as: :employable

  accepts_nested_attributes_for :employee

  validates :employee, presence: true
end
