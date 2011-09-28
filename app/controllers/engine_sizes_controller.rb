class EngineSizesController < ApplicationController
  # GET /engine_sizes
  # GET /engine_sizes.xml
  def index
    @engine_sizes = EngineSize.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @engine_sizes }
    end
  end

  # GET /engine_sizes/1
  # GET /engine_sizes/1.xml
  def show
    @engine_size = EngineSize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @engine_size }
    end
  end

  # GET /engine_sizes/new
  # GET /engine_sizes/new.xml
  def new
    @engine_size = EngineSize.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @engine_size }
    end
  end

  # GET /engine_sizes/1/edit
  def edit
    @engine_size = EngineSize.find(params[:id])
  end

  # POST /engine_sizes
  # POST /engine_sizes.xml
  def create
    @engine_size = EngineSize.new(params[:engine_size])

    respond_to do |format|
      if @engine_size.save
        format.html { redirect_to(@engine_size, :notice => 'Engine size was successfully created.') }
        format.xml  { render :xml => @engine_size, :status => :created, :location => @engine_size }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @engine_size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /engine_sizes/1
  # PUT /engine_sizes/1.xml
  def update
    @engine_size = EngineSize.find(params[:id])

    respond_to do |format|
      if @engine_size.update_attributes(params[:engine_size])
        format.html { redirect_to(@engine_size, :notice => 'Engine size was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @engine_size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /engine_sizes/1
  # DELETE /engine_sizes/1.xml
  def destroy
    @engine_size = EngineSize.find(params[:id])
    @engine_size.destroy

    respond_to do |format|
      format.html { redirect_to(engine_sizes_url) }
      format.xml  { head :ok }
    end
  end
end
