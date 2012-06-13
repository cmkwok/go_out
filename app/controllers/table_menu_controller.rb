class TableMenuController < ApplicationController
  def index
    if params[:search].present?
      p params[:search]
      @time = DateTime.new(params[:search]["time(1i)"].to_i, params[:search]["time(2i)"].to_i, params[:search]["time(3i)"].to_i, params[:search]["time(4i)"].to_i, params[:search]["time(5i)"].to_i, 00)
      @party_size = params[:search][:party_size].to_i
      @reserved_table_ids = Table.joins("INNER JOIN reservations ON reservations.table_id = tables.id").where("reservations.time > \"#{(@time - 2.hour)}\" && reservations.time < \"#{(@time + 2.hour)}\"").collect(&:id)
      @tables = Table.where("id IN (?) AND min_capacity <= ? AND max_capacity >= ?", Table.all.collect(&:id) - @reserved_table_ids, @party_size, @party_size)
    elsif params[:reservation].present?
      @reservation = Reservation.create!(params[:reservation])
      redirect_to root_path
    else
      @tables = []
    end
    @customer = Customer.find(session[:customer_remember_token])
  end
end
