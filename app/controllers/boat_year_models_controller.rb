class BoatYearModelsController < ApplicationController
  # GET /boat_year_models
  # GET /boat_year_models.xml
  def index
    @boat_year_models = BoatYearModel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_year_models }
    end
  end

  # GET /boat_year_models/1
  # GET /boat_year_models/1.xml
  def show
    @boat_year_model = BoatYearModel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_year_model }
    end
  end

  # GET /boat_year_models/new
  # GET /boat_year_models/new.xml
  def new
    @boat_year_model = BoatYearModel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_year_model }
    end
  end

  # GET /boat_year_models/1/edit
  def edit
    @boat_year_model = BoatYearModel.find(params[:id])
  end

  # POST /boat_year_models
  # POST /boat_year_models.xml
  def create
    @boat_year_model = BoatYearModel.new(params[:boat_year_model])

    respond_to do |format|
      if @boat_year_model.save
        format.html { redirect_to(@boat_year_model, :notice => 'Boat year model was successfully created.') }
        format.xml  { render :xml => @boat_year_model, :status => :created, :location => @boat_year_model }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_year_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_year_models/1
  # PUT /boat_year_models/1.xml
  def update
    @boat_year_model = BoatYearModel.find(params[:id])

    respond_to do |format|
      if @boat_year_model.update_attributes(params[:boat_year_model])
        format.html { redirect_to(@boat_year_model, :notice => 'Boat year model was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_year_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_year_models/1
  # DELETE /boat_year_models/1.xml
  def destroy
    @boat_year_model = BoatYearModel.find(params[:id])
    @boat_year_model.destroy

    respond_to do |format|
      format.html { redirect_to(boat_year_models_url) }
      format.xml  { head :ok }
    end
  end
end
