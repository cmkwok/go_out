class Reservation < ActiveRecord::Base
  belongs_to :table
  belongs_to :customer

  validates :time,        presence: true
  validates :table_id,    presence: true
  validates :customer_id, presence: true
end
