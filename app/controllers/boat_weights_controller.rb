class BoatWeightsController < ApplicationController
  # GET /boat_weights
  # GET /boat_weights.xml
  def index
    @boat_weights = BoatWeight.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_weights }
    end
  end

  # GET /boat_weights/1
  # GET /boat_weights/1.xml
  def show
    @boat_weight = BoatWeight.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_weight }
    end
  end

  # GET /boat_weights/new
  # GET /boat_weights/new.xml
  def new
    @boat_weight = BoatWeight.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_weight }
    end
  end

  # GET /boat_weights/1/edit
  def edit
    @boat_weight = BoatWeight.find(params[:id])
  end

  # POST /boat_weights
  # POST /boat_weights.xml
  def create
    @boat_weight = BoatWeight.new(params[:boat_weight])

    respond_to do |format|
      if @boat_weight.save
        format.html { redirect_to(@boat_weight, :notice => 'Boat weight was successfully created.') }
        format.xml  { render :xml => @boat_weight, :status => :created, :location => @boat_weight }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_weight.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_weights/1
  # PUT /boat_weights/1.xml
  def update
    @boat_weight = BoatWeight.find(params[:id])

    respond_to do |format|
      if @boat_weight.update_attributes(params[:boat_weight])
        format.html { redirect_to(@boat_weight, :notice => 'Boat weight was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_weight.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_weights/1
  # DELETE /boat_weights/1.xml
  def destroy
    @boat_weight = BoatWeight.find(params[:id])
    @boat_weight.destroy

    respond_to do |format|
      format.html { redirect_to(boat_weights_url) }
      format.xml  { head :ok }
    end
  end
end
