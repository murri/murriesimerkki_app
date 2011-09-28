class DriveTypesController < ApplicationController
  # GET /drive_types
  # GET /drive_types.xml
  def index
    @drive_types = DriveType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @drive_types }
    end
  end

  # GET /drive_types/1
  # GET /drive_types/1.xml
  def show
    @drive_type = DriveType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @drive_type }
    end
  end

  # GET /drive_types/new
  # GET /drive_types/new.xml
  def new
    @drive_type = DriveType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @drive_type }
    end
  end

  # GET /drive_types/1/edit
  def edit
    @drive_type = DriveType.find(params[:id])
  end

  # POST /drive_types
  # POST /drive_types.xml
  def create
    @drive_type = DriveType.new(params[:drive_type])

    respond_to do |format|
      if @drive_type.save
        format.html { redirect_to(@drive_type, :notice => 'Drive type was successfully created.') }
        format.xml  { render :xml => @drive_type, :status => :created, :location => @drive_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @drive_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /drive_types/1
  # PUT /drive_types/1.xml
  def update
    @drive_type = DriveType.find(params[:id])

    respond_to do |format|
      if @drive_type.update_attributes(params[:drive_type])
        format.html { redirect_to(@drive_type, :notice => 'Drive type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @drive_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /drive_types/1
  # DELETE /drive_types/1.xml
  def destroy
    @drive_type = DriveType.find(params[:id])
    @drive_type.destroy

    respond_to do |format|
      format.html { redirect_to(drive_types_url) }
      format.xml  { head :ok }
    end
  end
end
