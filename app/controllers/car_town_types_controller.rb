class CarTownTypesController < ApplicationController
  # GET /car_town_types
  # GET /car_town_types.xml
  def index
    @car_town_types = CarTownType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_town_types }
    end
  end

  # GET /car_town_types/1
  # GET /car_town_types/1.xml
  def show
    @car_town_type = CarTownType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_town_type }
    end
  end

  # GET /car_town_types/new
  # GET /car_town_types/new.xml
  def new
    @car_town_type = CarTownType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_town_type }
    end
  end

  # GET /car_town_types/1/edit
  def edit
    @car_town_type = CarTownType.find(params[:id])
  end

  # POST /car_town_types
  # POST /car_town_types.xml
  def create
    @car_town_type = CarTownType.new(params[:car_town_type])

    respond_to do |format|
      if @car_town_type.save
        format.html { redirect_to(@car_town_type, :notice => 'Car town type was successfully created.') }
        format.xml  { render :xml => @car_town_type, :status => :created, :location => @car_town_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_town_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_town_types/1
  # PUT /car_town_types/1.xml
  def update
    @car_town_type = CarTownType.find(params[:id])

    respond_to do |format|
      if @car_town_type.update_attributes(params[:car_town_type])
        format.html { redirect_to(@car_town_type, :notice => 'Car town type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_town_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_town_types/1
  # DELETE /car_town_types/1.xml
  def destroy
    @car_town_type = CarTownType.find(params[:id])
    @car_town_type.destroy

    respond_to do |format|
      format.html { redirect_to(car_town_types_url) }
      format.xml  { head :ok }
    end
  end
end
