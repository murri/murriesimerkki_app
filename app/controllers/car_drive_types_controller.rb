class CarDriveTypesController < ApplicationController
  # GET /car_drive_types
  # GET /car_drive_types.xml
  def index
    @car_drive_types = CarDriveType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_drive_types }
    end
  end

  # GET /car_drive_types/1
  # GET /car_drive_types/1.xml
  def show
    @car_drive_type = CarDriveType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_drive_type }
    end
  end

  # GET /car_drive_types/new
  # GET /car_drive_types/new.xml
  def new
    @car_drive_type = CarDriveType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_drive_type }
    end
  end

  # GET /car_drive_types/1/edit
  def edit
    @car_drive_type = CarDriveType.find(params[:id])
  end

  # POST /car_drive_types
  # POST /car_drive_types.xml
  def create
    @car_drive_type = CarDriveType.new(params[:car_drive_type])

    respond_to do |format|
      if @car_drive_type.save
        format.html { redirect_to(@car_drive_type, :notice => 'Car drive type was successfully created.') }
        format.xml  { render :xml => @car_drive_type, :status => :created, :location => @car_drive_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_drive_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_drive_types/1
  # PUT /car_drive_types/1.xml
  def update
    @car_drive_type = CarDriveType.find(params[:id])

    respond_to do |format|
      if @car_drive_type.update_attributes(params[:car_drive_type])
        format.html { redirect_to(@car_drive_type, :notice => 'Car drive type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_drive_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_drive_types/1
  # DELETE /car_drive_types/1.xml
  def destroy
    @car_drive_type = CarDriveType.find(params[:id])
    @car_drive_type.destroy

    respond_to do |format|
      format.html { redirect_to(car_drive_types_url) }
      format.xml  { head :ok }
    end
  end
end
