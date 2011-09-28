class MachineInformationsController < ApplicationController
  # GET /machine_informations
  # GET /machine_informations.xml
  def index
    @machine_informations = MachineInformation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_informations }
    end
  end

  # GET /machine_informations/1
  # GET /machine_informations/1.xml
  def show
    @machine_information = MachineInformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_information }
    end
  end

  # GET /machine_informations/new
  # GET /machine_informations/new.xml
  def new
    @machine_information = MachineInformation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_information }
    end
  end

  # GET /machine_informations/1/edit
  def edit
    @machine_information = MachineInformation.find(params[:id])
  end

  # POST /machine_informations
  # POST /machine_informations.xml
  def create
    @machine_information = MachineInformation.new(params[:machine_information])

    respond_to do |format|
      if @machine_information.save
        format.html { redirect_to(@machine_information, :notice => 'Machine information was successfully created.') }
        format.xml  { render :xml => @machine_information, :status => :created, :location => @machine_information }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_informations/1
  # PUT /machine_informations/1.xml
  def update
    @machine_information = MachineInformation.find(params[:id])

    respond_to do |format|
      if @machine_information.update_attributes(params[:machine_information])
        format.html { redirect_to(@machine_information, :notice => 'Machine information was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_informations/1
  # DELETE /machine_informations/1.xml
  def destroy
    @machine_information = MachineInformation.find(params[:id])
    @machine_information.destroy

    respond_to do |format|
      format.html { redirect_to(machine_informations_url) }
      format.xml  { head :ok }
    end
  end
end
