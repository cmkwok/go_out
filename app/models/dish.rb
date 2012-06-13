# == Schema Information
#
# Table name: dishes
#
#  id           :integer(4)      not null, primary key
#  name         :string(255)
#  introduction :string(255)
#  price        :integer(10)
#  availability :boolean(1)
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#  catalog_id   :integer(4)
#

class Dish < ActiveRecord::Base
  attr_accessible :name, :introduction, :price, :availability
  has_many :order_items
  belongs_to :catalog

  validates :name,          presence: true
  validates :introduction,  presence: true
  validates :price,         presence: true,
                            numericality: { greater_than: 0 }
  validates :availability,  presence: true
end
