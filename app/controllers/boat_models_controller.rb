class BoatModelsController < ApplicationController
  # GET /boat_models
  # GET /boat_models.xml
  def index
    @boat_models = BoatModel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_models }
    end
  end

  # GET /boat_models/1
  # GET /boat_models/1.xml
  def show
    @boat_model = BoatModel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_model }
    end
  end

  # GET /boat_models/new
  # GET /boat_models/new.xml
  def new
    @boat_model = BoatModel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_model }
    end
  end

  # GET /boat_models/1/edit
  def edit
    @boat_model = BoatModel.find(params[:id])
  end

  # POST /boat_models
  # POST /boat_models.xml
  def create
    @boat_model = BoatModel.new(params[:boat_model])

    respond_to do |format|
      if @boat_model.save
        format.html { redirect_to(@boat_model, :notice => 'Boat model was successfully created.') }
        format.xml  { render :xml => @boat_model, :status => :created, :location => @boat_model }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_models/1
  # PUT /boat_models/1.xml
  def update
    @boat_model = BoatModel.find(params[:id])

    respond_to do |format|
      if @boat_model.update_attributes(params[:boat_model])
        format.html { redirect_to(@boat_model, :notice => 'Boat model was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_models/1
  # DELETE /boat_models/1.xml
  def destroy
    @boat_model = BoatModel.find(params[:id])
    @boat_model.destroy

    respond_to do |format|
      format.html { redirect_to(boat_models_url) }
      format.xml  { head :ok }
    end
  end
end
