class MachineEngineModelsController < ApplicationController
  # GET /machine_engine_models
  # GET /machine_engine_models.xml
  def index
    @machine_engine_models = MachineEngineModel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_engine_models }
    end
  end

  # GET /machine_engine_models/1
  # GET /machine_engine_models/1.xml
  def show
    @machine_engine_model = MachineEngineModel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_engine_model }
    end
  end

  # GET /machine_engine_models/new
  # GET /machine_engine_models/new.xml
  def new
    @machine_engine_model = MachineEngineModel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_engine_model }
    end
  end

  # GET /machine_engine_models/1/edit
  def edit
    @machine_engine_model = MachineEngineModel.find(params[:id])
  end

  # POST /machine_engine_models
  # POST /machine_engine_models.xml
  def create
    @machine_engine_model = MachineEngineModel.new(params[:machine_engine_model])

    respond_to do |format|
      if @machine_engine_model.save
        format.html { redirect_to(@machine_engine_model, :notice => 'Machine engine model was successfully created.') }
        format.xml  { render :xml => @machine_engine_model, :status => :created, :location => @machine_engine_model }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_engine_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_engine_models/1
  # PUT /machine_engine_models/1.xml
  def update
    @machine_engine_model = MachineEngineModel.find(params[:id])

    respond_to do |format|
      if @machine_engine_model.update_attributes(params[:machine_engine_model])
        format.html { redirect_to(@machine_engine_model, :notice => 'Machine engine model was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_engine_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_engine_models/1
  # DELETE /machine_engine_models/1.xml
  def destroy
    @machine_engine_model = MachineEngineModel.find(params[:id])
    @machine_engine_model.destroy

    respond_to do |format|
      format.html { redirect_to(machine_engine_models_url) }
      format.xml  { head :ok }
    end
  end
end
