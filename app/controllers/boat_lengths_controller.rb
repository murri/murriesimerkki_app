class BoatLengthsController < ApplicationController
  # GET /boat_lengths
  # GET /boat_lengths.xml
  def index
    @boat_lengths = BoatLength.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_lengths }
    end
  end

  # GET /boat_lengths/1
  # GET /boat_lengths/1.xml
  def show
    @boat_length = BoatLength.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_length }
    end
  end

  # GET /boat_lengths/new
  # GET /boat_lengths/new.xml
  def new
    @boat_length = BoatLength.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_length }
    end
  end

  # GET /boat_lengths/1/edit
  def edit
    @boat_length = BoatLength.find(params[:id])
  end

  # POST /boat_lengths
  # POST /boat_lengths.xml
  def create
    @boat_length = BoatLength.new(params[:boat_length])

    respond_to do |format|
      if @boat_length.save
        format.html { redirect_to(@boat_length, :notice => 'Boat length was successfully created.') }
        format.xml  { render :xml => @boat_length, :status => :created, :location => @boat_length }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_length.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_lengths/1
  # PUT /boat_lengths/1.xml
  def update
    @boat_length = BoatLength.find(params[:id])

    respond_to do |format|
      if @boat_length.update_attributes(params[:boat_length])
        format.html { redirect_to(@boat_length, :notice => 'Boat length was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_length.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_lengths/1
  # DELETE /boat_lengths/1.xml
  def destroy
    @boat_length = BoatLength.find(params[:id])
    @boat_length.destroy

    respond_to do |format|
      format.html { redirect_to(boat_lengths_url) }
      format.xml  { head :ok }
    end
  end
end
