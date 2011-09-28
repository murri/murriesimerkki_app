class BoatWidthsController < ApplicationController
  # GET /boat_widths
  # GET /boat_widths.xml
  def index
    @boat_widths = BoatWidth.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_widths }
    end
  end

  # GET /boat_widths/1
  # GET /boat_widths/1.xml
  def show
    @boat_width = BoatWidth.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_width }
    end
  end

  # GET /boat_widths/new
  # GET /boat_widths/new.xml
  def new
    @boat_width = BoatWidth.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_width }
    end
  end

  # GET /boat_widths/1/edit
  def edit
    @boat_width = BoatWidth.find(params[:id])
  end

  # POST /boat_widths
  # POST /boat_widths.xml
  def create
    @boat_width = BoatWidth.new(params[:boat_width])

    respond_to do |format|
      if @boat_width.save
        format.html { redirect_to(@boat_width, :notice => 'Boat width was successfully created.') }
        format.xml  { render :xml => @boat_width, :status => :created, :location => @boat_width }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_width.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_widths/1
  # PUT /boat_widths/1.xml
  def update
    @boat_width = BoatWidth.find(params[:id])

    respond_to do |format|
      if @boat_width.update_attributes(params[:boat_width])
        format.html { redirect_to(@boat_width, :notice => 'Boat width was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_width.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_widths/1
  # DELETE /boat_widths/1.xml
  def destroy
    @boat_width = BoatWidth.find(params[:id])
    @boat_width.destroy

    respond_to do |format|
      format.html { redirect_to(boat_widths_url) }
      format.xml  { head :ok }
    end
  end
end
