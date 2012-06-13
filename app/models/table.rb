# == Schema Information
#
# Table name: tables
#
#  id           :integer(4)      not null, primary key
#  min_capacity :integer(4)
#  max_capacity :integer(4)
#  description  :string(255)
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

class Table < ActiveRecord::Base
  has_many :orders

  validates :min_capacity, presence: true,
                           numericality: { greater_than: 0, less_than: :max_capacity }
  validates :max_capacity, presence: true,
                           numericality: { greater_than: :min_capacity }
end
