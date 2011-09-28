class MotoEngineTypesController < ApplicationController
  # GET /moto_engine_types
  # GET /moto_engine_types.xml
  def index
    @moto_engine_types = MotoEngineType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_engine_types }
    end
  end

  # GET /moto_engine_types/1
  # GET /moto_engine_types/1.xml
  def show
    @moto_engine_type = MotoEngineType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_engine_type }
    end
  end

  # GET /moto_engine_types/new
  # GET /moto_engine_types/new.xml
  def new
    @moto_engine_type = MotoEngineType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_engine_type }
    end
  end

  # GET /moto_engine_types/1/edit
  def edit
    @moto_engine_type = MotoEngineType.find(params[:id])
  end

  # POST /moto_engine_types
  # POST /moto_engine_types.xml
  def create
    @moto_engine_type = MotoEngineType.new(params[:moto_engine_type])

    respond_to do |format|
      if @moto_engine_type.save
        format.html { redirect_to(@moto_engine_type, :notice => 'Moto engine type was successfully created.') }
        format.xml  { render :xml => @moto_engine_type, :status => :created, :location => @moto_engine_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_engine_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_engine_types/1
  # PUT /moto_engine_types/1.xml
  def update
    @moto_engine_type = MotoEngineType.find(params[:id])

    respond_to do |format|
      if @moto_engine_type.update_attributes(params[:moto_engine_type])
        format.html { redirect_to(@moto_engine_type, :notice => 'Moto engine type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_engine_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_engine_types/1
  # DELETE /moto_engine_types/1.xml
  def destroy
    @moto_engine_type = MotoEngineType.find(params[:id])
    @moto_engine_type.destroy

    respond_to do |format|
      format.html { redirect_to(moto_engine_types_url) }
      format.xml  { head :ok }
    end
  end
end
