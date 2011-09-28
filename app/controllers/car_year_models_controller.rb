class CarYearModelsController < ApplicationController
  # GET /car_year_models
  # GET /car_year_models.xml
  def index
    @car_year_models = CarYearModel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_year_models }
    end
  end

  # GET /car_year_models/1
  # GET /car_year_models/1.xml
  def show
    @car_year_model = CarYearModel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_year_model }
    end
  end

  # GET /car_year_models/new
  # GET /car_year_models/new.xml
  def new
    @car_year_model = CarYearModel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_year_model }
    end
  end

  # GET /car_year_models/1/edit
  def edit
    @car_year_model = CarYearModel.find(params[:id])
  end

  # POST /car_year_models
  # POST /car_year_models.xml
  def create
    @car_year_model = CarYearModel.new(params[:car_year_model])

    respond_to do |format|
      if @car_year_model.save
        format.html { redirect_to(@car_year_model, :notice => 'Car year model was successfully created.') }
        format.xml  { render :xml => @car_year_model, :status => :created, :location => @car_year_model }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_year_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_year_models/1
  # PUT /car_year_models/1.xml
  def update
    @car_year_model = CarYearModel.find(params[:id])

    respond_to do |format|
      if @car_year_model.update_attributes(params[:car_year_model])
        format.html { redirect_to(@car_year_model, :notice => 'Car year model was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_year_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_year_models/1
  # DELETE /car_year_models/1.xml
  def destroy
    @car_year_model = CarYearModel.find(params[:id])
    @car_year_model.destroy

    respond_to do |format|
      format.html { redirect_to(car_year_models_url) }
      format.xml  { head :ok }
    end
  end
end
