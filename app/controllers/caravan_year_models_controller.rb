class CaravanYearModelsController < ApplicationController
  # GET /caravan_year_models
  # GET /caravan_year_models.xml
  def index
    @caravan_year_models = CaravanYearModel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravan_year_models }
    end
  end

  # GET /caravan_year_models/1
  # GET /caravan_year_models/1.xml
  def show
    @caravan_year_model = CaravanYearModel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan_year_model }
    end
  end

  # GET /caravan_year_models/new
  # GET /caravan_year_models/new.xml
  def new
    @caravan_year_model = CaravanYearModel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan_year_model }
    end
  end

  # GET /caravan_year_models/1/edit
  def edit
    @caravan_year_model = CaravanYearModel.find(params[:id])
  end

  # POST /caravan_year_models
  # POST /caravan_year_models.xml
  def create
    @caravan_year_model = CaravanYearModel.new(params[:caravan_year_model])

    respond_to do |format|
      if @caravan_year_model.save
        format.html { redirect_to(@caravan_year_model, :notice => 'Caravan year model was successfully created.') }
        format.xml  { render :xml => @caravan_year_model, :status => :created, :location => @caravan_year_model }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan_year_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravan_year_models/1
  # PUT /caravan_year_models/1.xml
  def update
    @caravan_year_model = CaravanYearModel.find(params[:id])

    respond_to do |format|
      if @caravan_year_model.update_attributes(params[:caravan_year_model])
        format.html { redirect_to(@caravan_year_model, :notice => 'Caravan year model was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan_year_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravan_year_models/1
  # DELETE /caravan_year_models/1.xml
  def destroy
    @caravan_year_model = CaravanYearModel.find(params[:id])
    @caravan_year_model.destroy

    respond_to do |format|
      format.html { redirect_to(caravan_year_models_url) }
      format.xml  { head :ok }
    end
  end
end
