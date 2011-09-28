class BoatEngineFuelTypesController < ApplicationController
  # GET /boat_engine_fuel_types
  # GET /boat_engine_fuel_types.xml
  def index
    @boat_engine_fuel_types = BoatEngineFuelType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_engine_fuel_types }
    end
  end

  # GET /boat_engine_fuel_types/1
  # GET /boat_engine_fuel_types/1.xml
  def show
    @boat_engine_fuel_type = BoatEngineFuelType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_engine_fuel_type }
    end
  end

  # GET /boat_engine_fuel_types/new
  # GET /boat_engine_fuel_types/new.xml
  def new
    @boat_engine_fuel_type = BoatEngineFuelType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_engine_fuel_type }
    end
  end

  # GET /boat_engine_fuel_types/1/edit
  def edit
    @boat_engine_fuel_type = BoatEngineFuelType.find(params[:id])
  end

  # POST /boat_engine_fuel_types
  # POST /boat_engine_fuel_types.xml
  def create
    @boat_engine_fuel_type = BoatEngineFuelType.new(params[:boat_engine_fuel_type])

    respond_to do |format|
      if @boat_engine_fuel_type.save
        format.html { redirect_to(@boat_engine_fuel_type, :notice => 'Boat engine fuel type was successfully created.') }
        format.xml  { render :xml => @boat_engine_fuel_type, :status => :created, :location => @boat_engine_fuel_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_engine_fuel_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_engine_fuel_types/1
  # PUT /boat_engine_fuel_types/1.xml
  def update
    @boat_engine_fuel_type = BoatEngineFuelType.find(params[:id])

    respond_to do |format|
      if @boat_engine_fuel_type.update_attributes(params[:boat_engine_fuel_type])
        format.html { redirect_to(@boat_engine_fuel_type, :notice => 'Boat engine fuel type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_engine_fuel_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_engine_fuel_types/1
  # DELETE /boat_engine_fuel_types/1.xml
  def destroy
    @boat_engine_fuel_type = BoatEngineFuelType.find(params[:id])
    @boat_engine_fuel_type.destroy

    respond_to do |format|
      format.html { redirect_to(boat_engine_fuel_types_url) }
      format.xml  { head :ok }
    end
  end
end
