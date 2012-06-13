# == Schema Information
#
# Table name: order_statuses
#
#  id          :integer(4)      not null, primary key
#  description :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class OrderStatus < ActiveRecord::Base
  has_many :orders

  STATUS_OPTIONS = %w(created submitted cooking finished paid)
  validates :description, presence: true,
                          inclusion: { in: STATUS_OPTIONS }
end
