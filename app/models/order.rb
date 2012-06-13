# == Schema Information
#
# Table name: orders
#
#  id              :integer(4)      not null, primary key
#  date_create     :date
#  date_submit     :date
#  number_customer :integer(4)
#  pre_tax_amount  :integer(10)
#  tax             :integer(10)
#  discount        :integer(10)
#  tips            :integer(10)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  customer_id     :integer(4)
#  waiter_id       :integer(4)
#  table_id        :integer(4)
#  order_status_id :integer(4)
#

class Order < ActiveRecord::Base
  belongs_to :customer
  belongs_to :waiter
  belongs_to :table
  belongs_to :order_status
  has_many :order_items

  validates :date_create,     presence: true
  validates :number_customer, presence: true,
                              numericality: { greater_than: 0 }
  validates :pre_tax_amount,  presence: true,
                              numericality: { greater_than: 0 }
  validates :discount,        numericality: { less_than: :pre_tax_amount }
  validates :customer_id,     presence: true
  validates :table_id,        presence: true
  validates :order_status_id, presence: true
end
