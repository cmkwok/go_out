# == Schema Information
#
# Table name: catalogs
#
#  id          :integer(4)      not null, primary key
#  description :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Catalog < ActiveRecord::Base
  has_many :dishes

  validates :description, presence: true
end
