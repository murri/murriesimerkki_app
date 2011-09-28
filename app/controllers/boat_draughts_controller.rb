class BoatDraughtsController < ApplicationController
  # GET /boat_draughts
  # GET /boat_draughts.xml
  def index
    @boat_draughts = BoatDraught.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_draughts }
    end
  end

  # GET /boat_draughts/1
  # GET /boat_draughts/1.xml
  def show
    @boat_draught = BoatDraught.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_draught }
    end
  end

  # GET /boat_draughts/new
  # GET /boat_draughts/new.xml
  def new
    @boat_draught = BoatDraught.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_draught }
    end
  end

  # GET /boat_draughts/1/edit
  def edit
    @boat_draught = BoatDraught.find(params[:id])
  end

  # POST /boat_draughts
  # POST /boat_draughts.xml
  def create
    @boat_draught = BoatDraught.new(params[:boat_draught])

    respond_to do |format|
      if @boat_draught.save
        format.html { redirect_to(@boat_draught, :notice => 'Boat draught was successfully created.') }
        format.xml  { render :xml => @boat_draught, :status => :created, :location => @boat_draught }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_draught.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_draughts/1
  # PUT /boat_draughts/1.xml
  def update
    @boat_draught = BoatDraught.find(params[:id])

    respond_to do |format|
      if @boat_draught.update_attributes(params[:boat_draught])
        format.html { redirect_to(@boat_draught, :notice => 'Boat draught was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_draught.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_draughts/1
  # DELETE /boat_draughts/1.xml
  def destroy
    @boat_draught = BoatDraught.find(params[:id])
    @boat_draught.destroy

    respond_to do |format|
      format.html { redirect_to(boat_draughts_url) }
      format.xml  { head :ok }
    end
  end
end
