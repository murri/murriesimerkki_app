class BoatHeightsController < ApplicationController
  # GET /boat_heights
  # GET /boat_heights.xml
  def index
    @boat_heights = BoatHeight.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_heights }
    end
  end

  # GET /boat_heights/1
  # GET /boat_heights/1.xml
  def show
    @boat_height = BoatHeight.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_height }
    end
  end

  # GET /boat_heights/new
  # GET /boat_heights/new.xml
  def new
    @boat_height = BoatHeight.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_height }
    end
  end

  # GET /boat_heights/1/edit
  def edit
    @boat_height = BoatHeight.find(params[:id])
  end

  # POST /boat_heights
  # POST /boat_heights.xml
  def create
    @boat_height = BoatHeight.new(params[:boat_height])

    respond_to do |format|
      if @boat_height.save
        format.html { redirect_to(@boat_height, :notice => 'Boat height was successfully created.') }
        format.xml  { render :xml => @boat_height, :status => :created, :location => @boat_height }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_height.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_heights/1
  # PUT /boat_heights/1.xml
  def update
    @boat_height = BoatHeight.find(params[:id])

    respond_to do |format|
      if @boat_height.update_attributes(params[:boat_height])
        format.html { redirect_to(@boat_height, :notice => 'Boat height was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_height.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_heights/1
  # DELETE /boat_heights/1.xml
  def destroy
    @boat_height = BoatHeight.find(params[:id])
    @boat_height.destroy

    respond_to do |format|
      format.html { redirect_to(boat_heights_url) }
      format.xml  { head :ok }
    end
  end
end
