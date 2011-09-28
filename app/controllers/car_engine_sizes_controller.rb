class CarEngineSizesController < ApplicationController
  # GET /car_engine_sizes
  # GET /car_engine_sizes.xml
  def index
    @car_engine_sizes = CarEngineSize.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_engine_sizes }
    end
  end

  # GET /car_engine_sizes/1
  # GET /car_engine_sizes/1.xml
  def show
    @car_engine_size = CarEngineSize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_engine_size }
    end
  end

  # GET /car_engine_sizes/new
  # GET /car_engine_sizes/new.xml
  def new
    @car_engine_size = CarEngineSize.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_engine_size }
    end
  end

  # GET /car_engine_sizes/1/edit
  def edit
    @car_engine_size = CarEngineSize.find(params[:id])
  end

  # POST /car_engine_sizes
  # POST /car_engine_sizes.xml
  def create
    @car_engine_size = CarEngineSize.new(params[:car_engine_size])

    respond_to do |format|
      if @car_engine_size.save
        format.html { redirect_to(@car_engine_size, :notice => 'Car engine size was successfully created.') }
        format.xml  { render :xml => @car_engine_size, :status => :created, :location => @car_engine_size }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_engine_size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_engine_sizes/1
  # PUT /car_engine_sizes/1.xml
  def update
    @car_engine_size = CarEngineSize.find(params[:id])

    respond_to do |format|
      if @car_engine_size.update_attributes(params[:car_engine_size])
        format.html { redirect_to(@car_engine_size, :notice => 'Car engine size was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_engine_size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_engine_sizes/1
  # DELETE /car_engine_sizes/1.xml
  def destroy
    @car_engine_size = CarEngineSize.find(params[:id])
    @car_engine_size.destroy

    respond_to do |format|
      format.html { redirect_to(car_engine_sizes_url) }
      format.xml  { head :ok }
    end
  end
end
