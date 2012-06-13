class SalaryRatesController < ApplicationController
  # GET /salary_rates
  # GET /salary_rates.json
  def index
    @salary_rates = SalaryRate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @salary_rates }
    end
  end

  # GET /salary_rates/1
  # GET /salary_rates/1.json
  def show
    @salary_rate = SalaryRate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @salary_rate }
    end
  end

  # GET /salary_rates/new
  # GET /salary_rates/new.json
  def new
    @salary_rate = SalaryRate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @salary_rate }
    end
  end

  # GET /salary_rates/1/edit
  def edit
    @salary_rate = SalaryRate.find(params[:id])
  end

  # POST /salary_rates
  # POST /salary_rates.json
  def create
    @salary_rate = SalaryRate.new(params[:salary_rate])

    respond_to do |format|
      if @salary_rate.save
        format.html { redirect_to @salary_rate, notice: 'Salary rate was successfully created.' }
        format.json { render json: @salary_rate, status: :created, location: @salary_rate }
      else
        format.html { render action: "new" }
        format.json { render json: @salary_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /salary_rates/1
  # PUT /salary_rates/1.json
  def update
    @salary_rate = SalaryRate.find(params[:id])

    respond_to do |format|
      if @salary_rate.update_attributes(params[:salary_rate])
        format.html { redirect_to @salary_rate, notice: 'Salary rate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @salary_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salary_rates/1
  # DELETE /salary_rates/1.json
  def destroy
    @salary_rate = SalaryRate.find(params[:id])
    @salary_rate.destroy

    respond_to do |format|
      format.html { redirect_to salary_rates_url }
      format.json { head :no_content }
    end
  end
end
