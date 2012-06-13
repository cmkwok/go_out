class ChefDishesController < ApplicationController
  def index
    @chefs = Chef.all.sort_by{|p| p.order_items.count}.reverse
  end
end
