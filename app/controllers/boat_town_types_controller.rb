class BoatTownTypesController < ApplicationController
  # GET /boat_town_types
  # GET /boat_town_types.xml
  def index
    @boat_town_types = BoatTownType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_town_types }
    end
  end

  # GET /boat_town_types/1
  # GET /boat_town_types/1.xml
  def show
    @boat_town_type = BoatTownType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_town_type }
    end
  end

  # GET /boat_town_types/new
  # GET /boat_town_types/new.xml
  def new
    @boat_town_type = BoatTownType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_town_type }
    end
  end

  # GET /boat_town_types/1/edit
  def edit
    @boat_town_type = BoatTownType.find(params[:id])
  end

  # POST /boat_town_types
  # POST /boat_town_types.xml
  def create
    @boat_town_type = BoatTownType.new(params[:boat_town_type])

    respond_to do |format|
      if @boat_town_type.save
        format.html { redirect_to(@boat_town_type, :notice => 'Boat town type was successfully created.') }
        format.xml  { render :xml => @boat_town_type, :status => :created, :location => @boat_town_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_town_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_town_types/1
  # PUT /boat_town_types/1.xml
  def update
    @boat_town_type = BoatTownType.find(params[:id])

    respond_to do |format|
      if @boat_town_type.update_attributes(params[:boat_town_type])
        format.html { redirect_to(@boat_town_type, :notice => 'Boat town type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_town_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_town_types/1
  # DELETE /boat_town_types/1.xml
  def destroy
    @boat_town_type = BoatTownType.find(params[:id])
    @boat_town_type.destroy

    respond_to do |format|
      format.html { redirect_to(boat_town_types_url) }
      format.xml  { head :ok }
    end
  end
end
