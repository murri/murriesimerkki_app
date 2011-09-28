class VehicleClassesController < ApplicationController
  # GET /vehicle_classes
  # GET /vehicle_classes.xml
  def index
    @vehicle_classes = VehicleClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vehicle_classes }
    end
  end

  # GET /vehicle_classes/1
  # GET /vehicle_classes/1.xml
  def show
    @vehicle_class = VehicleClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vehicle_class }
    end
  end

  # GET /vehicle_classes/new
  # GET /vehicle_classes/new.xml
  def new
    @vehicle_class = VehicleClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vehicle_class }
    end
  end

  # GET /vehicle_classes/1/edit
  def edit
    @vehicle_class = VehicleClass.find(params[:id])
  end

  # POST /vehicle_classes
  # POST /vehicle_classes.xml
  def create
    @vehicle_class = VehicleClass.new(params[:vehicle_class])

    respond_to do |format|
      if @vehicle_class.save
        format.html { redirect_to(@vehicle_class, :notice => 'Vehicle class was successfully created.') }
        format.xml  { render :xml => @vehicle_class, :status => :created, :location => @vehicle_class }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vehicle_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vehicle_classes/1
  # PUT /vehicle_classes/1.xml
  def update
    @vehicle_class = VehicleClass.find(params[:id])

    respond_to do |format|
      if @vehicle_class.update_attributes(params[:vehicle_class])
        format.html { redirect_to(@vehicle_class, :notice => 'Vehicle class was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vehicle_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_classes/1
  # DELETE /vehicle_classes/1.xml
  def destroy
    @vehicle_class = VehicleClass.find(params[:id])
    @vehicle_class.destroy

    respond_to do |format|
      format.html { redirect_to(vehicle_classes_url) }
      format.xml  { head :ok }
    end
  end
end
