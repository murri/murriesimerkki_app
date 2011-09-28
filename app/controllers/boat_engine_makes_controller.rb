class BoatEngineMakesController < ApplicationController
  # GET /boat_engine_makes
  # GET /boat_engine_makes.xml
  def index
    @boat_engine_makes = BoatEngineMake.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_engine_makes }
    end
  end

  # GET /boat_engine_makes/1
  # GET /boat_engine_makes/1.xml
  def show
    @boat_engine_make = BoatEngineMake.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_engine_make }
    end
  end

  # GET /boat_engine_makes/new
  # GET /boat_engine_makes/new.xml
  def new
    @boat_engine_make = BoatEngineMake.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_engine_make }
    end
  end

  # GET /boat_engine_makes/1/edit
  def edit
    @boat_engine_make = BoatEngineMake.find(params[:id])
  end

  # POST /boat_engine_makes
  # POST /boat_engine_makes.xml
  def create
    @boat_engine_make = BoatEngineMake.new(params[:boat_engine_make])

    respond_to do |format|
      if @boat_engine_make.save
        format.html { redirect_to(@boat_engine_make, :notice => 'Boat engine make was successfully created.') }
        format.xml  { render :xml => @boat_engine_make, :status => :created, :location => @boat_engine_make }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_engine_make.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_engine_makes/1
  # PUT /boat_engine_makes/1.xml
  def update
    @boat_engine_make = BoatEngineMake.find(params[:id])

    respond_to do |format|
      if @boat_engine_make.update_attributes(params[:boat_engine_make])
        format.html { redirect_to(@boat_engine_make, :notice => 'Boat engine make was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_engine_make.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_engine_makes/1
  # DELETE /boat_engine_makes/1.xml
  def destroy
    @boat_engine_make = BoatEngineMake.find(params[:id])
    @boat_engine_make.destroy

    respond_to do |format|
      format.html { redirect_to(boat_engine_makes_url) }
      format.xml  { head :ok }
    end
  end
end
