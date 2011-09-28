class SubVehiclesController < ApplicationController
  # GET /sub_vehicles
  # GET /sub_vehicles.xml
  def index
    @sub_vehicles = SubVehicle.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sub_vehicles }
    end
  end

  # GET /sub_vehicles/1
  # GET /sub_vehicles/1.xml
  def show
    @sub_vehicle = SubVehicle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sub_vehicle }
    end
  end

  # GET /sub_vehicles/new
  # GET /sub_vehicles/new.xml
  def new
    @sub_vehicle = SubVehicle.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sub_vehicle }
    end
  end

  # GET /sub_vehicles/1/edit
  def edit
    @sub_vehicle = SubVehicle.find(params[:id])
  end

  # POST /sub_vehicles
  # POST /sub_vehicles.xml
  def create
    @sub_vehicle = SubVehicle.new(params[:sub_vehicle])

    respond_to do |format|
      if @sub_vehicle.save
        format.html { redirect_to(@sub_vehicle, :notice => 'Sub vehicle was successfully created.') }
        format.xml  { render :xml => @sub_vehicle, :status => :created, :location => @sub_vehicle }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sub_vehicle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sub_vehicles/1
  # PUT /sub_vehicles/1.xml
  def update
    @sub_vehicle = SubVehicle.find(params[:id])

    respond_to do |format|
      if @sub_vehicle.update_attributes(params[:sub_vehicle])
        format.html { redirect_to(@sub_vehicle, :notice => 'Sub vehicle was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sub_vehicle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_vehicles/1
  # DELETE /sub_vehicles/1.xml
  def destroy
    @sub_vehicle = SubVehicle.find(params[:id])
    @sub_vehicle.destroy

    respond_to do |format|
      format.html { redirect_to(sub_vehicles_url) }
      format.xml  { head :ok }
    end
  end
end
