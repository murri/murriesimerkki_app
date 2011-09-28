class GearboxTypesController < ApplicationController
  # GET /gearbox_types
  # GET /gearbox_types.xml
  def index
    @gearbox_types = GearboxType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gearbox_types }
    end
  end

  # GET /gearbox_types/1
  # GET /gearbox_types/1.xml
  def show
    @gearbox_type = GearboxType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gearbox_type }
    end
  end

  # GET /gearbox_types/new
  # GET /gearbox_types/new.xml
  def new
    @gearbox_type = GearboxType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gearbox_type }
    end
  end

  # GET /gearbox_types/1/edit
  def edit
    @gearbox_type = GearboxType.find(params[:id])
  end

  # POST /gearbox_types
  # POST /gearbox_types.xml
  def create
    @gearbox_type = GearboxType.new(params[:gearbox_type])

    respond_to do |format|
      if @gearbox_type.save
        format.html { redirect_to(@gearbox_type, :notice => 'Gearbox type was successfully created.') }
        format.xml  { render :xml => @gearbox_type, :status => :created, :location => @gearbox_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gearbox_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gearbox_types/1
  # PUT /gearbox_types/1.xml
  def update
    @gearbox_type = GearboxType.find(params[:id])

    respond_to do |format|
      if @gearbox_type.update_attributes(params[:gearbox_type])
        format.html { redirect_to(@gearbox_type, :notice => 'Gearbox type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gearbox_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gearbox_types/1
  # DELETE /gearbox_types/1.xml
  def destroy
    @gearbox_type = GearboxType.find(params[:id])
    @gearbox_type.destroy

    respond_to do |format|
      format.html { redirect_to(gearbox_types_url) }
      format.xml  { head :ok }
    end
  end
end
