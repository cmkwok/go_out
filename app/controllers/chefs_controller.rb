class ChefsController < ApplicationController
  # GET /chefs
  # GET /chefs.json
  def index
    @chefs = Chef.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @chefs }
    end
  end

  # GET /chefs/1
  # GET /chefs/1.json
  def show
    @chef = Chef.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chef }
    end
  end

  # GET /chefs/new
  # GET /chefs/new.json
  def new
    @chef = Chef.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @chef }
    end
  end

  # GET /chefs/1/edit
  def edit
    @chef = Chef.find(params[:id])
  end

  # POST /chefs
  # POST /chefs.json
  def create
    @chef = Chef.new(params[:chef])

    respond_to do |format|
      if @chef.save
        format.html { redirect_to @chef, notice: 'Chef was successfully created.' }
        format.json { render json: @chef, status: :created, location: @chef }
      else
        format.html { render action: "new" }
        format.json { render json: @chef.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /chefs/1
  # PUT /chefs/1.json
  def update
    @chef = Chef.find(params[:id])

    respond_to do |format|
      if @chef.update_attributes(params[:chef])
        format.html { redirect_to @chef, notice: 'Chef was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chef.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chefs/1
  # DELETE /chefs/1.json
  def destroy
    @chef = Chef.find(params[:id])
    @chef.destroy

    respond_to do |format|
      format.html { redirect_to chefs_url }
      format.json { head :no_content }
    end
  end
end
