class MotoDriveTypesController < ApplicationController
  # GET /moto_drive_types
  # GET /moto_drive_types.xml
  def index
    @moto_drive_types = MotoDriveType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_drive_types }
    end
  end

  # GET /moto_drive_types/1
  # GET /moto_drive_types/1.xml
  def show
    @moto_drive_type = MotoDriveType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_drive_type }
    end
  end

  # GET /moto_drive_types/new
  # GET /moto_drive_types/new.xml
  def new
    @moto_drive_type = MotoDriveType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_drive_type }
    end
  end

  # GET /moto_drive_types/1/edit
  def edit
    @moto_drive_type = MotoDriveType.find(params[:id])
  end

  # POST /moto_drive_types
  # POST /moto_drive_types.xml
  def create
    @moto_drive_type = MotoDriveType.new(params[:moto_drive_type])

    respond_to do |format|
      if @moto_drive_type.save
        format.html { redirect_to(@moto_drive_type, :notice => 'Moto drive type was successfully created.') }
        format.xml  { render :xml => @moto_drive_type, :status => :created, :location => @moto_drive_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_drive_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_drive_types/1
  # PUT /moto_drive_types/1.xml
  def update
    @moto_drive_type = MotoDriveType.find(params[:id])

    respond_to do |format|
      if @moto_drive_type.update_attributes(params[:moto_drive_type])
        format.html { redirect_to(@moto_drive_type, :notice => 'Moto drive type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_drive_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_drive_types/1
  # DELETE /moto_drive_types/1.xml
  def destroy
    @moto_drive_type = MotoDriveType.find(params[:id])
    @moto_drive_type.destroy

    respond_to do |format|
      format.html { redirect_to(moto_drive_types_url) }
      format.xml  { head :ok }
    end
  end
end
