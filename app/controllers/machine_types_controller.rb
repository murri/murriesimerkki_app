class MachineTypesController < ApplicationController
  # GET /machine_types
  # GET /machine_types.xml
  def index
    @machine_types = MachineType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_types }
    end
  end

  # GET /machine_types/1
  # GET /machine_types/1.xml
  def show
    @machine_type = MachineType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_type }
    end
  end

  # GET /machine_types/new
  # GET /machine_types/new.xml
  def new
    @machine_type = MachineType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_type }
    end
  end

  # GET /machine_types/1/edit
  def edit
    @machine_type = MachineType.find(params[:id])
  end

  # POST /machine_types
  # POST /machine_types.xml
  def create
    @machine_type = MachineType.new(params[:machine_type])

    respond_to do |format|
      if @machine_type.save
        format.html { redirect_to(@machine_type, :notice => 'Machine type was successfully created.') }
        format.xml  { render :xml => @machine_type, :status => :created, :location => @machine_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_types/1
  # PUT /machine_types/1.xml
  def update
    @machine_type = MachineType.find(params[:id])

    respond_to do |format|
      if @machine_type.update_attributes(params[:machine_type])
        format.html { redirect_to(@machine_type, :notice => 'Machine type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_types/1
  # DELETE /machine_types/1.xml
  def destroy
    @machine_type = MachineType.find(params[:id])
    @machine_type.destroy

    respond_to do |format|
      format.html { redirect_to(machine_types_url) }
      format.xml  { head :ok }
    end
  end
end
