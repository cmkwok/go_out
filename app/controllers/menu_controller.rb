class MenuController < ApplicationController
  def index
    if params[:catolog_id].present?
      @dishes = Dish.where(:catalog_id => params[:catalog_id])
    elsif params[:search].present?
      query = "%#{params[:search][:query]}%"
      @dishes = Dish.where("name LIKE ? OR introduction LIKE ?", query, query)
    else
      @dishes = Dish.all
    end
    @catalogs = Catalog.all
  end
end
