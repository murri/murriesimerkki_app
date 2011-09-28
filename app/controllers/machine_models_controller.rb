class MachineModelsController < ApplicationController
  # GET /machine_models
  # GET /machine_models.xml
  def index
    @machine_models = MachineModel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_models }
    end
  end

  # GET /machine_models/1
  # GET /machine_models/1.xml
  def show
    @machine_model = MachineModel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_model }
    end
  end

  # GET /machine_models/new
  # GET /machine_models/new.xml
  def new
    @machine_model = MachineModel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_model }
    end
  end

  # GET /machine_models/1/edit
  def edit
    @machine_model = MachineModel.find(params[:id])
  end

  # POST /machine_models
  # POST /machine_models.xml
  def create
    @machine_model = MachineModel.new(params[:machine_model])

    respond_to do |format|
      if @machine_model.save
        format.html { redirect_to(@machine_model, :notice => 'Machine model was successfully created.') }
        format.xml  { render :xml => @machine_model, :status => :created, :location => @machine_model }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_models/1
  # PUT /machine_models/1.xml
  def update
    @machine_model = MachineModel.find(params[:id])

    respond_to do |format|
      if @machine_model.update_attributes(params[:machine_model])
        format.html { redirect_to(@machine_model, :notice => 'Machine model was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_models/1
  # DELETE /machine_models/1.xml
  def destroy
    @machine_model = MachineModel.find(params[:id])
    @machine_model.destroy

    respond_to do |format|
      format.html { redirect_to(machine_models_url) }
      format.xml  { head :ok }
    end
  end
end
