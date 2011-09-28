class BoatMakesController < ApplicationController
  # GET /boat_makes
  # GET /boat_makes.xml
  def index
    @boat_makes = BoatMake.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_makes }
    end
  end

  # GET /boat_makes/1
  # GET /boat_makes/1.xml
  def show
    @boat_make = BoatMake.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_make }
    end
  end

  # GET /boat_makes/new
  # GET /boat_makes/new.xml
  def new
    @boat_make = BoatMake.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_make }
    end
  end

  # GET /boat_makes/1/edit
  def edit
    @boat_make = BoatMake.find(params[:id])
  end

  # POST /boat_makes
  # POST /boat_makes.xml
  def create
    @boat_make = BoatMake.new(params[:boat_make])

    respond_to do |format|
      if @boat_make.save
        format.html { redirect_to(@boat_make, :notice => 'Boat make was successfully created.') }
        format.xml  { render :xml => @boat_make, :status => :created, :location => @boat_make }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_make.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_makes/1
  # PUT /boat_makes/1.xml
  def update
    @boat_make = BoatMake.find(params[:id])

    respond_to do |format|
      if @boat_make.update_attributes(params[:boat_make])
        format.html { redirect_to(@boat_make, :notice => 'Boat make was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_make.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_makes/1
  # DELETE /boat_makes/1.xml
  def destroy
    @boat_make = BoatMake.find(params[:id])
    @boat_make.destroy

    respond_to do |format|
      format.html { redirect_to(boat_makes_url) }
      format.xml  { head :ok }
    end
  end
def for_boattypeid
    @boatmake = BoatType.find_all_by_boat_type_id(params[:id]).sort_by{ |k| k['name'] }
    respond_to do |format|
      format.json  { render :json => @boatmake }      
    end
  end
  
end
