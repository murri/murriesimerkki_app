class MachineYearModelsController < ApplicationController
  # GET /machine_year_models
  # GET /machine_year_models.xml
  def index
    @machine_year_models = MachineYearModel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_year_models }
    end
  end

  # GET /machine_year_models/1
  # GET /machine_year_models/1.xml
  def show
    @machine_year_model = MachineYearModel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_year_model }
    end
  end

  # GET /machine_year_models/new
  # GET /machine_year_models/new.xml
  def new
    @machine_year_model = MachineYearModel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_year_model }
    end
  end

  # GET /machine_year_models/1/edit
  def edit
    @machine_year_model = MachineYearModel.find(params[:id])
  end

  # POST /machine_year_models
  # POST /machine_year_models.xml
  def create
    @machine_year_model = MachineYearModel.new(params[:machine_year_model])

    respond_to do |format|
      if @machine_year_model.save
        format.html { redirect_to(@machine_year_model, :notice => 'Machine year model was successfully created.') }
        format.xml  { render :xml => @machine_year_model, :status => :created, :location => @machine_year_model }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_year_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_year_models/1
  # PUT /machine_year_models/1.xml
  def update
    @machine_year_model = MachineYearModel.find(params[:id])

    respond_to do |format|
      if @machine_year_model.update_attributes(params[:machine_year_model])
        format.html { redirect_to(@machine_year_model, :notice => 'Machine year model was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_year_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_year_models/1
  # DELETE /machine_year_models/1.xml
  def destroy
    @machine_year_model = MachineYearModel.find(params[:id])
    @machine_year_model.destroy

    respond_to do |format|
      format.html { redirect_to(machine_year_models_url) }
      format.xml  { head :ok }
    end
  end
end
