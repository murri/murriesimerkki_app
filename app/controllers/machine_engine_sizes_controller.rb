class MachineEngineSizesController < ApplicationController
  # GET /machine_engine_sizes
  # GET /machine_engine_sizes.xml
  def index
    @machine_engine_sizes = MachineEngineSize.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_engine_sizes }
    end
  end

  # GET /machine_engine_sizes/1
  # GET /machine_engine_sizes/1.xml
  def show
    @machine_engine_size = MachineEngineSize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_engine_size }
    end
  end

  # GET /machine_engine_sizes/new
  # GET /machine_engine_sizes/new.xml
  def new
    @machine_engine_size = MachineEngineSize.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_engine_size }
    end
  end

  # GET /machine_engine_sizes/1/edit
  def edit
    @machine_engine_size = MachineEngineSize.find(params[:id])
  end

  # POST /machine_engine_sizes
  # POST /machine_engine_sizes.xml
  def create
    @machine_engine_size = MachineEngineSize.new(params[:machine_engine_size])

    respond_to do |format|
      if @machine_engine_size.save
        format.html { redirect_to(@machine_engine_size, :notice => 'Machine engine size was successfully created.') }
        format.xml  { render :xml => @machine_engine_size, :status => :created, :location => @machine_engine_size }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_engine_size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_engine_sizes/1
  # PUT /machine_engine_sizes/1.xml
  def update
    @machine_engine_size = MachineEngineSize.find(params[:id])

    respond_to do |format|
      if @machine_engine_size.update_attributes(params[:machine_engine_size])
        format.html { redirect_to(@machine_engine_size, :notice => 'Machine engine size was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_engine_size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_engine_sizes/1
  # DELETE /machine_engine_sizes/1.xml
  def destroy
    @machine_engine_size = MachineEngineSize.find(params[:id])
    @machine_engine_size.destroy

    respond_to do |format|
      format.html { redirect_to(machine_engine_sizes_url) }
      format.xml  { head :ok }
    end
  end
end
