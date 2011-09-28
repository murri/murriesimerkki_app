class MachineFuelTypesController < ApplicationController
  # GET /machine_fuel_types
  # GET /machine_fuel_types.xml
  def index
    @machine_fuel_types = MachineFuelType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_fuel_types }
    end
  end

  # GET /machine_fuel_types/1
  # GET /machine_fuel_types/1.xml
  def show
    @machine_fuel_type = MachineFuelType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_fuel_type }
    end
  end

  # GET /machine_fuel_types/new
  # GET /machine_fuel_types/new.xml
  def new
    @machine_fuel_type = MachineFuelType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_fuel_type }
    end
  end

  # GET /machine_fuel_types/1/edit
  def edit
    @machine_fuel_type = MachineFuelType.find(params[:id])
  end

  # POST /machine_fuel_types
  # POST /machine_fuel_types.xml
  def create
    @machine_fuel_type = MachineFuelType.new(params[:machine_fuel_type])

    respond_to do |format|
      if @machine_fuel_type.save
        format.html { redirect_to(@machine_fuel_type, :notice => 'Machine fuel type was successfully created.') }
        format.xml  { render :xml => @machine_fuel_type, :status => :created, :location => @machine_fuel_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_fuel_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_fuel_types/1
  # PUT /machine_fuel_types/1.xml
  def update
    @machine_fuel_type = MachineFuelType.find(params[:id])

    respond_to do |format|
      if @machine_fuel_type.update_attributes(params[:machine_fuel_type])
        format.html { redirect_to(@machine_fuel_type, :notice => 'Machine fuel type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_fuel_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_fuel_types/1
  # DELETE /machine_fuel_types/1.xml
  def destroy
    @machine_fuel_type = MachineFuelType.find(params[:id])
    @machine_fuel_type.destroy

    respond_to do |format|
      format.html { redirect_to(machine_fuel_types_url) }
      format.xml  { head :ok }
    end
  end
end
