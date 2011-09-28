class CarGearboxTypesController < ApplicationController
  # GET /car_gearbox_types
  # GET /car_gearbox_types.xml
  def index
    @car_gearbox_types = CarGearboxType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_gearbox_types }
    end
  end

  # GET /car_gearbox_types/1
  # GET /car_gearbox_types/1.xml
  def show
    @car_gearbox_type = CarGearboxType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_gearbox_type }
    end
  end

  # GET /car_gearbox_types/new
  # GET /car_gearbox_types/new.xml
  def new
    @car_gearbox_type = CarGearboxType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_gearbox_type }
    end
  end

  # GET /car_gearbox_types/1/edit
  def edit
    @car_gearbox_type = CarGearboxType.find(params[:id])
  end

  # POST /car_gearbox_types
  # POST /car_gearbox_types.xml
  def create
    @car_gearbox_type = CarGearboxType.new(params[:car_gearbox_type])

    respond_to do |format|
      if @car_gearbox_type.save
        format.html { redirect_to(@car_gearbox_type, :notice => 'Car gearbox type was successfully created.') }
        format.xml  { render :xml => @car_gearbox_type, :status => :created, :location => @car_gearbox_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_gearbox_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_gearbox_types/1
  # PUT /car_gearbox_types/1.xml
  def update
    @car_gearbox_type = CarGearboxType.find(params[:id])

    respond_to do |format|
      if @car_gearbox_type.update_attributes(params[:car_gearbox_type])
        format.html { redirect_to(@car_gearbox_type, :notice => 'Car gearbox type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_gearbox_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_gearbox_types/1
  # DELETE /car_gearbox_types/1.xml
  def destroy
    @car_gearbox_type = CarGearboxType.find(params[:id])
    @car_gearbox_type.destroy

    respond_to do |format|
      format.html { redirect_to(car_gearbox_types_url) }
      format.xml  { head :ok }
    end
  end
end
