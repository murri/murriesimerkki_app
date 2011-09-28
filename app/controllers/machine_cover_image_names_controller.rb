class MachineCoverImageNamesController < ApplicationController
  # GET /machine_cover_image_names
  # GET /machine_cover_image_names.xml
  def index
    @machine_cover_image_names = MachineCoverImageName.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_cover_image_names }
    end
  end

  # GET /machine_cover_image_names/1
  # GET /machine_cover_image_names/1.xml
  def show
    @machine_cover_image_name = MachineCoverImageName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_cover_image_name }
    end
  end

  # GET /machine_cover_image_names/new
  # GET /machine_cover_image_names/new.xml
  def new
    @machine_cover_image_name = MachineCoverImageName.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_cover_image_name }
    end
  end

  # GET /machine_cover_image_names/1/edit
  def edit
    @machine_cover_image_name = MachineCoverImageName.find(params[:id])
  end

  # POST /machine_cover_image_names
  # POST /machine_cover_image_names.xml
  def create
    @machine_cover_image_name = MachineCoverImageName.new(params[:machine_cover_image_name])

    respond_to do |format|
      if @machine_cover_image_name.save
        format.html { redirect_to(@machine_cover_image_name, :notice => 'Machine cover image name was successfully created.') }
        format.xml  { render :xml => @machine_cover_image_name, :status => :created, :location => @machine_cover_image_name }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_cover_image_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_cover_image_names/1
  # PUT /machine_cover_image_names/1.xml
  def update
    @machine_cover_image_name = MachineCoverImageName.find(params[:id])

    respond_to do |format|
      if @machine_cover_image_name.update_attributes(params[:machine_cover_image_name])
        format.html { redirect_to(@machine_cover_image_name, :notice => 'Machine cover image name was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_cover_image_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_cover_image_names/1
  # DELETE /machine_cover_image_names/1.xml
  def destroy
    @machine_cover_image_name = MachineCoverImageName.find(params[:id])
    @machine_cover_image_name.destroy

    respond_to do |format|
      format.html { redirect_to(machine_cover_image_names_url) }
      format.xml  { head :ok }
    end
  end
end
