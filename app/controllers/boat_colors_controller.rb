class BoatColorsController < ApplicationController
  # GET /boat_colors
  # GET /boat_colors.xml
  def index
    @boat_colors = BoatColor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_colors }
    end
  end

  # GET /boat_colors/1
  # GET /boat_colors/1.xml
  def show
    @boat_color = BoatColor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_color }
    end
  end

  # GET /boat_colors/new
  # GET /boat_colors/new.xml
  def new
    @boat_color = BoatColor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_color }
    end
  end

  # GET /boat_colors/1/edit
  def edit
    @boat_color = BoatColor.find(params[:id])
  end

  # POST /boat_colors
  # POST /boat_colors.xml
  def create
    @boat_color = BoatColor.new(params[:boat_color])

    respond_to do |format|
      if @boat_color.save
        format.html { redirect_to(@boat_color, :notice => 'Boat color was successfully created.') }
        format.xml  { render :xml => @boat_color, :status => :created, :location => @boat_color }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_color.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_colors/1
  # PUT /boat_colors/1.xml
  def update
    @boat_color = BoatColor.find(params[:id])

    respond_to do |format|
      if @boat_color.update_attributes(params[:boat_color])
        format.html { redirect_to(@boat_color, :notice => 'Boat color was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_color.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_colors/1
  # DELETE /boat_colors/1.xml
  def destroy
    @boat_color = BoatColor.find(params[:id])
    @boat_color.destroy

    respond_to do |format|
      format.html { redirect_to(boat_colors_url) }
      format.xml  { head :ok }
    end
  end
end
