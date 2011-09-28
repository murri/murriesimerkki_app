class CaravanTownTypesController < ApplicationController
  # GET /caravan_town_types
  # GET /caravan_town_types.xml
  def index
    @caravan_town_types = CaravanTownType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravan_town_types }
    end
  end

  # GET /caravan_town_types/1
  # GET /caravan_town_types/1.xml
  def show
    @caravan_town_type = CaravanTownType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan_town_type }
    end
  end

  # GET /caravan_town_types/new
  # GET /caravan_town_types/new.xml
  def new
    @caravan_town_type = CaravanTownType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan_town_type }
    end
  end

  # GET /caravan_town_types/1/edit
  def edit
    @caravan_town_type = CaravanTownType.find(params[:id])
  end

  # POST /caravan_town_types
  # POST /caravan_town_types.xml
  def create
    @caravan_town_type = CaravanTownType.new(params[:caravan_town_type])

    respond_to do |format|
      if @caravan_town_type.save
        format.html { redirect_to(@caravan_town_type, :notice => 'Caravan town type was successfully created.') }
        format.xml  { render :xml => @caravan_town_type, :status => :created, :location => @caravan_town_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan_town_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravan_town_types/1
  # PUT /caravan_town_types/1.xml
  def update
    @caravan_town_type = CaravanTownType.find(params[:id])

    respond_to do |format|
      if @caravan_town_type.update_attributes(params[:caravan_town_type])
        format.html { redirect_to(@caravan_town_type, :notice => 'Caravan town type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan_town_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravan_town_types/1
  # DELETE /caravan_town_types/1.xml
  def destroy
    @caravan_town_type = CaravanTownType.find(params[:id])
    @caravan_town_type.destroy

    respond_to do |format|
      format.html { redirect_to(caravan_town_types_url) }
      format.xml  { head :ok }
    end
  end
end
