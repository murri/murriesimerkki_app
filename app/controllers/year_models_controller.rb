class YearModelsController < ApplicationController
  # GET /year_models
  # GET /year_models.xml
  def index
    @year_models = YearModel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @year_models }
    end
  end

  # GET /year_models/1
  # GET /year_models/1.xml
  def show
    @year_model = YearModel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @year_model }
    end
  end

  # GET /year_models/new
  # GET /year_models/new.xml
  def new
    @year_model = YearModel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @year_model }
    end
  end

  # GET /year_models/1/edit
  def edit
    @year_model = YearModel.find(params[:id])
  end

  # POST /year_models
  # POST /year_models.xml
  def create
    @year_model = YearModel.new(params[:year_model])

    respond_to do |format|
      if @year_model.save
        format.html { redirect_to(@year_model, :notice => 'Year model was successfully created.') }
        format.xml  { render :xml => @year_model, :status => :created, :location => @year_model }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @year_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /year_models/1
  # PUT /year_models/1.xml
  def update
    @year_model = YearModel.find(params[:id])

    respond_to do |format|
      if @year_model.update_attributes(params[:year_model])
        format.html { redirect_to(@year_model, :notice => 'Year model was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @year_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /year_models/1
  # DELETE /year_models/1.xml
  def destroy
    @year_model = YearModel.find(params[:id])
    @year_model.destroy

    respond_to do |format|
      format.html { redirect_to(year_models_url) }
      format.xml  { head :ok }
    end
  end
end
