class TableMenuController < ApplicationController
  def index
    if params[:search].present?
      p params[:search]
      @time = Time.parse("#{params[:search]["time(1i)"]}-#{params[:search]["time(2i)"]}-#{params[:search]["time(3i)"]} #{params[:search]["time(4i)"]}:#{params[:search]["time(5i)"]}:00")
      @reserved_table_ids = Table.joins("INNER JOIN reservations ON reservations.table_id = tables.id").where("reservations.time > \"#{(@time - 2.hour)}\" && reservations.time < \"#{(@time + 2.hour)}\"").collect(&:id)
      @tables = Table.find(Table.all.collect(&:id) - @reserved_table_ids)
    else
      @tables = []
    end
    @customer = Customer.find(session[:customer_remember_token])
  end
end
