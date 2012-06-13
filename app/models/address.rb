# == Schema Information
#
# Table name: addresses
#
#  id               :integer(4)      not null, primary key
#  street           :string(255)
#  city             :string(255)
#  state            :string(255)
#  zip              :integer(4)
#  created_at       :datetime        not null
#  updated_at       :datetime        not null
#  addressable_id   :integer(4)
#  addressable_type :string(255)
#

class Address < ActiveRecord::Base
  attr_accessible :street, :city, :state, :zip

  belongs_to :addressable, polymorphic: true

  validates :street, presence: true
  validates :city,   presence: true
  validates :state,  presence: true,
                     format: { with: /[A-Z]{2}/ }
  validates :zip,    presence: true,
                     format: { with: /\d{5}/ }
end
