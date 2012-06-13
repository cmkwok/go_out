# == Schema Information
#
# Table name: dishes
#
#  id            :integer(4)      not null, primary key
#  name          :string(255)
#  introduction  :string(255)
#  price         :integer(10)
#  availability  :boolean(1)
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#  order_item_id :integer(4)
#  catalog_id    :integer(4)
#

class Dish < ActiveRecord::Base
  has_many :order_items
  belongs_to :catalog

  validates :name,          presence: true
  validates :introduction,  presence: true
  validates :price,         presence: true,
                            numericality: { greater_than: 0 }
  validates :availability,  presence: true
  validates :catalog_id,    presence: true
  validates :order_item_id, presence: true
end
