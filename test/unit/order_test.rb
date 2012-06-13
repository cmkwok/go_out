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

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
