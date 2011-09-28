class EngineTypesController < ApplicationController
  # GET /engine_types
  # GET /engine_types.xml
  def index
    @engine_types = EngineType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @engine_types }
    end
  end

  # GET /engine_types/1
  # GET /engine_types/1.xml
  def show
    @engine_type = EngineType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @engine_type }
    end
  end

  # GET /engine_types/new
  # GET /engine_types/new.xml
  def new
    @engine_type = EngineType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @engine_type }
    end
  end

  # GET /engine_types/1/edit
  def edit
    @engine_type = EngineType.find(params[:id])
  end

  # POST /engine_types
  # POST /engine_types.xml
  def create
    @engine_type = EngineType.new(params[:engine_type])

    respond_to do |format|
      if @engine_type.save
        format.html { redirect_to(@engine_type, :notice => 'Engine type was successfully created.') }
        format.xml  { render :xml => @engine_type, :status => :created, :location => @engine_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @engine_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /engine_types/1
  # PUT /engine_types/1.xml
  def update
    @engine_type = EngineType.find(params[:id])

    respond_to do |format|
      if @engine_type.update_attributes(params[:engine_type])
        format.html { redirect_to(@engine_type, :notice => 'Engine type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @engine_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /engine_types/1
  # DELETE /engine_types/1.xml
  def destroy
    @engine_type = EngineType.find(params[:id])
    @engine_type.destroy

    respond_to do |format|
      format.html { redirect_to(engine_types_url) }
      format.xml  { head :ok }
    end
  end
end
