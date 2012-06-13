class WaiterOrdersController < ApplicationController
  def index
    @waiters = Waiter.all.sort_by{|p| p.orders.count}.reverse
  end
end
