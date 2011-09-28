class MotoGearboxTypesController < ApplicationController
  # GET /moto_gearbox_types
  # GET /moto_gearbox_types.xml
  def index
    @moto_gearbox_types = MotoGearboxType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_gearbox_types }
    end
  end

  # GET /moto_gearbox_types/1
  # GET /moto_gearbox_types/1.xml
  def show
    @moto_gearbox_type = MotoGearboxType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_gearbox_type }
    end
  end

  # GET /moto_gearbox_types/new
  # GET /moto_gearbox_types/new.xml
  def new
    @moto_gearbox_type = MotoGearboxType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_gearbox_type }
    end
  end

  # GET /moto_gearbox_types/1/edit
  def edit
    @moto_gearbox_type = MotoGearboxType.find(params[:id])
  end

  # POST /moto_gearbox_types
  # POST /moto_gearbox_types.xml
  def create
    @moto_gearbox_type = MotoGearboxType.new(params[:moto_gearbox_type])

    respond_to do |format|
      if @moto_gearbox_type.save
        format.html { redirect_to(@moto_gearbox_type, :notice => 'Moto gearbox type was successfully created.') }
        format.xml  { render :xml => @moto_gearbox_type, :status => :created, :location => @moto_gearbox_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_gearbox_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_gearbox_types/1
  # PUT /moto_gearbox_types/1.xml
  def update
    @moto_gearbox_type = MotoGearboxType.find(params[:id])

    respond_to do |format|
      if @moto_gearbox_type.update_attributes(params[:moto_gearbox_type])
        format.html { redirect_to(@moto_gearbox_type, :notice => 'Moto gearbox type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_gearbox_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_gearbox_types/1
  # DELETE /moto_gearbox_types/1.xml
  def destroy
    @moto_gearbox_type = MotoGearboxType.find(params[:id])
    @moto_gearbox_type.destroy

    respond_to do |format|
      format.html { redirect_to(moto_gearbox_types_url) }
      format.xml  { head :ok }
    end
  end
end
