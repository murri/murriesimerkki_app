class MachineDriveTypesController < ApplicationController
  # GET /machine_drive_types
  # GET /machine_drive_types.xml
  def index
    @machine_drive_types = MachineDriveType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_drive_types }
    end
  end

  # GET /machine_drive_types/1
  # GET /machine_drive_types/1.xml
  def show
    @machine_drive_type = MachineDriveType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_drive_type }
    end
  end

  # GET /machine_drive_types/new
  # GET /machine_drive_types/new.xml
  def new
    @machine_drive_type = MachineDriveType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_drive_type }
    end
  end

  # GET /machine_drive_types/1/edit
  def edit
    @machine_drive_type = MachineDriveType.find(params[:id])
  end

  # POST /machine_drive_types
  # POST /machine_drive_types.xml
  def create
    @machine_drive_type = MachineDriveType.new(params[:machine_drive_type])

    respond_to do |format|
      if @machine_drive_type.save
        format.html { redirect_to(@machine_drive_type, :notice => 'Machine drive type was successfully created.') }
        format.xml  { render :xml => @machine_drive_type, :status => :created, :location => @machine_drive_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_drive_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_drive_types/1
  # PUT /machine_drive_types/1.xml
  def update
    @machine_drive_type = MachineDriveType.find(params[:id])

    respond_to do |format|
      if @machine_drive_type.update_attributes(params[:machine_drive_type])
        format.html { redirect_to(@machine_drive_type, :notice => 'Machine drive type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_drive_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_drive_types/1
  # DELETE /machine_drive_types/1.xml
  def destroy
    @machine_drive_type = MachineDriveType.find(params[:id])
    @machine_drive_type.destroy

    respond_to do |format|
      format.html { redirect_to(machine_drive_types_url) }
      format.xml  { head :ok }
    end
  end
end
