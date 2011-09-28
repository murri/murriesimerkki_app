class CarFuelTypesController < ApplicationController
  # GET /car_fuel_types
  # GET /car_fuel_types.xml
  def index
    @car_fuel_types = CarFuelType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_fuel_types }
    end
  end

  # GET /car_fuel_types/1
  # GET /car_fuel_types/1.xml
  def show
    @car_fuel_type = CarFuelType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_fuel_type }
    end
  end

  # GET /car_fuel_types/new
  # GET /car_fuel_types/new.xml
  def new
    @car_fuel_type = CarFuelType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_fuel_type }
    end
  end

  # GET /car_fuel_types/1/edit
  def edit
    @car_fuel_type = CarFuelType.find(params[:id])
  end

  # POST /car_fuel_types
  # POST /car_fuel_types.xml
  def create
    @car_fuel_type = CarFuelType.new(params[:car_fuel_type])

    respond_to do |format|
      if @car_fuel_type.save
        format.html { redirect_to(@car_fuel_type, :notice => 'Car fuel type was successfully created.') }
        format.xml  { render :xml => @car_fuel_type, :status => :created, :location => @car_fuel_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_fuel_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_fuel_types/1
  # PUT /car_fuel_types/1.xml
  def update
    @car_fuel_type = CarFuelType.find(params[:id])

    respond_to do |format|
      if @car_fuel_type.update_attributes(params[:car_fuel_type])
        format.html { redirect_to(@car_fuel_type, :notice => 'Car fuel type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_fuel_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_fuel_types/1
  # DELETE /car_fuel_types/1.xml
  def destroy
    @car_fuel_type = CarFuelType.find(params[:id])
    @car_fuel_type.destroy

    respond_to do |format|
      format.html { redirect_to(car_fuel_types_url) }
      format.xml  { head :ok }
    end
  end
end
