class MotoYearModelsController < ApplicationController
  # GET /moto_year_models
  # GET /moto_year_models.xml
  def index
    @moto_year_models = MotoYearModel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_year_models }
    end
  end

  # GET /moto_year_models/1
  # GET /moto_year_models/1.xml
  def show
    @moto_year_model = MotoYearModel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_year_model }
    end
  end

  # GET /moto_year_models/new
  # GET /moto_year_models/new.xml
  def new
    @moto_year_model = MotoYearModel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_year_model }
    end
  end

  # GET /moto_year_models/1/edit
  def edit
    @moto_year_model = MotoYearModel.find(params[:id])
  end

  # POST /moto_year_models
  # POST /moto_year_models.xml
  def create
    @moto_year_model = MotoYearModel.new(params[:moto_year_model])

    respond_to do |format|
      if @moto_year_model.save
        format.html { redirect_to(@moto_year_model, :notice => 'Moto year model was successfully created.') }
        format.xml  { render :xml => @moto_year_model, :status => :created, :location => @moto_year_model }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_year_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_year_models/1
  # PUT /moto_year_models/1.xml
  def update
    @moto_year_model = MotoYearModel.find(params[:id])

    respond_to do |format|
      if @moto_year_model.update_attributes(params[:moto_year_model])
        format.html { redirect_to(@moto_year_model, :notice => 'Moto year model was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_year_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_year_models/1
  # DELETE /moto_year_models/1.xml
  def destroy
    @moto_year_model = MotoYearModel.find(params[:id])
    @moto_year_model.destroy

    respond_to do |format|
      format.html { redirect_to(moto_year_models_url) }
      format.xml  { head :ok }
    end
  end
end
