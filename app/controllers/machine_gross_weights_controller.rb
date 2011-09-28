class MachineGrossWeightsController < ApplicationController
  # GET /machine_gross_weights
  # GET /machine_gross_weights.xml
  def index
    @machine_gross_weights = MachineGrossWeight.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_gross_weights }
    end
  end

  # GET /machine_gross_weights/1
  # GET /machine_gross_weights/1.xml
  def show
    @machine_gross_weight = MachineGrossWeight.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_gross_weight }
    end
  end

  # GET /machine_gross_weights/new
  # GET /machine_gross_weights/new.xml
  def new
    @machine_gross_weight = MachineGrossWeight.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_gross_weight }
    end
  end

  # GET /machine_gross_weights/1/edit
  def edit
    @machine_gross_weight = MachineGrossWeight.find(params[:id])
  end

  # POST /machine_gross_weights
  # POST /machine_gross_weights.xml
  def create
    @machine_gross_weight = MachineGrossWeight.new(params[:machine_gross_weight])

    respond_to do |format|
      if @machine_gross_weight.save
        format.html { redirect_to(@machine_gross_weight, :notice => 'Machine gross weight was successfully created.') }
        format.xml  { render :xml => @machine_gross_weight, :status => :created, :location => @machine_gross_weight }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_gross_weight.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_gross_weights/1
  # PUT /machine_gross_weights/1.xml
  def update
    @machine_gross_weight = MachineGrossWeight.find(params[:id])

    respond_to do |format|
      if @machine_gross_weight.update_attributes(params[:machine_gross_weight])
        format.html { redirect_to(@machine_gross_weight, :notice => 'Machine gross weight was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_gross_weight.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_gross_weights/1
  # DELETE /machine_gross_weights/1.xml
  def destroy
    @machine_gross_weight = MachineGrossWeight.find(params[:id])
    @machine_gross_weight.destroy

    respond_to do |format|
      format.html { redirect_to(machine_gross_weights_url) }
      format.xml  { head :ok }
    end
  end
end
