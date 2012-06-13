# == Schema Information
#
# Table name: customers
#
#  id         :integer(4)      not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  password   :string(255)
#  email      :string(255)
#  phone      :integer(4)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Customer < ActiveRecord::Base
  belongs_to :address
  has_many :orders

  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :password,   presence: true,
                         length: { minimum: 8 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,      presence: true,
                         format: { with: VALID_EMAIL_REGEX },
                         uniqueness: { case_sensitive: false }
  validates :phone,      presence: true,
                         format: { with: /\d{10}/ }
  validates :address_id, presence: true
end
