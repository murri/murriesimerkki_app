class MotoModelsController < ApplicationController
  # GET /moto_models
  # GET /moto_models.xml
  def index
    @moto_models = MotoModel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_models }
    end
  end

  # GET /moto_models/1
  # GET /moto_models/1.xml
  def show
    @moto_model = MotoModel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_model }
    end
  end

  # GET /moto_models/new
  # GET /moto_models/new.xml
  def new
    @moto_model = MotoModel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_model }
    end
  end

  # GET /moto_models/1/edit
  def edit
    @moto_model = MotoModel.find(params[:id])
  end

  # POST /moto_models
  # POST /moto_models.xml
  def create
    @moto_model = MotoModel.new(params[:moto_model])

    respond_to do |format|
      if @moto_model.save
        format.html { redirect_to(@moto_model, :notice => 'Moto model was successfully created.') }
        format.xml  { render :xml => @moto_model, :status => :created, :location => @moto_model }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_models/1
  # PUT /moto_models/1.xml
  def update
    @moto_model = MotoModel.find(params[:id])

    respond_to do |format|
      if @moto_model.update_attributes(params[:moto_model])
        format.html { redirect_to(@moto_model, :notice => 'Moto model was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_models/1
  # DELETE /moto_models/1.xml
  def destroy
    @moto_model = MotoModel.find(params[:id])
    @moto_model.destroy

    respond_to do |format|
      format.html { redirect_to(moto_models_url) }
      format.xml  { head :ok }
    end
  end
end
