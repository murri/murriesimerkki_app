class MachineColorTypesController < ApplicationController
  # GET /machine_color_types
  # GET /machine_color_types.xml
  def index
    @machine_color_types = MachineColorType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_color_types }
    end
  end

  # GET /machine_color_types/1
  # GET /machine_color_types/1.xml
  def show
    @machine_color_type = MachineColorType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_color_type }
    end
  end

  # GET /machine_color_types/new
  # GET /machine_color_types/new.xml
  def new
    @machine_color_type = MachineColorType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_color_type }
    end
  end

  # GET /machine_color_types/1/edit
  def edit
    @machine_color_type = MachineColorType.find(params[:id])
  end

  # POST /machine_color_types
  # POST /machine_color_types.xml
  def create
    @machine_color_type = MachineColorType.new(params[:machine_color_type])

    respond_to do |format|
      if @machine_color_type.save
        format.html { redirect_to(@machine_color_type, :notice => 'Machine color type was successfully created.') }
        format.xml  { render :xml => @machine_color_type, :status => :created, :location => @machine_color_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_color_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_color_types/1
  # PUT /machine_color_types/1.xml
  def update
    @machine_color_type = MachineColorType.find(params[:id])

    respond_to do |format|
      if @machine_color_type.update_attributes(params[:machine_color_type])
        format.html { redirect_to(@machine_color_type, :notice => 'Machine color type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_color_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_color_types/1
  # DELETE /machine_color_types/1.xml
  def destroy
    @machine_color_type = MachineColorType.find(params[:id])
    @machine_color_type.destroy

    respond_to do |format|
      format.html { redirect_to(machine_color_types_url) }
      format.xml  { head :ok }
    end
  end
end
