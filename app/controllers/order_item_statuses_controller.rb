class OrderItemStatusesController < ApplicationController
  # GET /order_item_statuses
  # GET /order_item_statuses.json
  def index
    @order_item_statuses = OrderItemStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @order_item_statuses }
    end
  end

  # GET /order_item_statuses/1
  # GET /order_item_statuses/1.json
  def show
    @order_item_status = OrderItemStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order_item_status }
    end
  end

  # GET /order_item_statuses/new
  # GET /order_item_statuses/new.json
  def new
    @order_item_status = OrderItemStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order_item_status }
    end
  end

  # GET /order_item_statuses/1/edit
  def edit
    @order_item_status = OrderItemStatus.find(params[:id])
  end

  # POST /order_item_statuses
  # POST /order_item_statuses.json
  def create
    @order_item_status = OrderItemStatus.new(params[:order_item_status])

    respond_to do |format|
      if @order_item_status.save
        format.html { redirect_to @order_item_status, notice: 'Order item status was successfully created.' }
        format.json { render json: @order_item_status, status: :created, location: @order_item_status }
      else
        format.html { render action: "new" }
        format.json { render json: @order_item_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /order_item_statuses/1
  # PUT /order_item_statuses/1.json
  def update
    @order_item_status = OrderItemStatus.find(params[:id])

    respond_to do |format|
      if @order_item_status.update_attributes(params[:order_item_status])
        format.html { redirect_to @order_item_status, notice: 'Order item status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order_item_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_item_statuses/1
  # DELETE /order_item_statuses/1.json
  def destroy
    @order_item_status = OrderItemStatus.find(params[:id])
    @order_item_status.destroy

    respond_to do |format|
      format.html { redirect_to order_item_statuses_url }
      format.json { head :no_content }
    end
  end
end
