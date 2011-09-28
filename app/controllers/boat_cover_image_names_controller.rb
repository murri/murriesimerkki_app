class BoatCoverImageNamesController < ApplicationController
  # GET /boat_cover_image_names
  # GET /boat_cover_image_names.xml
  def index
    @boat_cover_image_names = BoatCoverImageName.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_cover_image_names }
    end
  end

  # GET /boat_cover_image_names/1
  # GET /boat_cover_image_names/1.xml
  def show
    @boat_cover_image_name = BoatCoverImageName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_cover_image_name }
    end
  end

  # GET /boat_cover_image_names/new
  # GET /boat_cover_image_names/new.xml
  def new
    @boat_cover_image_name = BoatCoverImageName.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_cover_image_name }
    end
  end

  # GET /boat_cover_image_names/1/edit
  def edit
    @boat_cover_image_name = BoatCoverImageName.find(params[:id])
  end

  # POST /boat_cover_image_names
  # POST /boat_cover_image_names.xml
  def create
    @boat_cover_image_name = BoatCoverImageName.new(params[:boat_cover_image_name])

    respond_to do |format|
      if @boat_cover_image_name.save
        format.html { redirect_to(@boat_cover_image_name, :notice => 'Boat cover image name was successfully created.') }
        format.xml  { render :xml => @boat_cover_image_name, :status => :created, :location => @boat_cover_image_name }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_cover_image_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_cover_image_names/1
  # PUT /boat_cover_image_names/1.xml
  def update
    @boat_cover_image_name = BoatCoverImageName.find(params[:id])

    respond_to do |format|
      if @boat_cover_image_name.update_attributes(params[:boat_cover_image_name])
        format.html { redirect_to(@boat_cover_image_name, :notice => 'Boat cover image name was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_cover_image_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_cover_image_names/1
  # DELETE /boat_cover_image_names/1.xml
  def destroy
    @boat_cover_image_name = BoatCoverImageName.find(params[:id])
    @boat_cover_image_name.destroy

    respond_to do |format|
      format.html { redirect_to(boat_cover_image_names_url) }
      format.xml  { head :ok }
    end
  end
end
