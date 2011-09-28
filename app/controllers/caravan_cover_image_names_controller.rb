class CaravanCoverImageNamesController < ApplicationController
  # GET /caravan_cover_image_names
  # GET /caravan_cover_image_names.xml
  def index
    @caravan_cover_image_names = CaravanCoverImageName.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravan_cover_image_names }
    end
  end

  # GET /caravan_cover_image_names/1
  # GET /caravan_cover_image_names/1.xml
  def show
    @caravan_cover_image_name = CaravanCoverImageName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan_cover_image_name }
    end
  end

  # GET /caravan_cover_image_names/new
  # GET /caravan_cover_image_names/new.xml
  def new
    @caravan_cover_image_name = CaravanCoverImageName.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan_cover_image_name }
    end
  end

  # GET /caravan_cover_image_names/1/edit
  def edit
    @caravan_cover_image_name = CaravanCoverImageName.find(params[:id])
  end

  # POST /caravan_cover_image_names
  # POST /caravan_cover_image_names.xml
  def create
    @caravan_cover_image_name = CaravanCoverImageName.new(params[:caravan_cover_image_name])

    respond_to do |format|
      if @caravan_cover_image_name.save
        format.html { redirect_to(@caravan_cover_image_name, :notice => 'Caravan cover image name was successfully created.') }
        format.xml  { render :xml => @caravan_cover_image_name, :status => :created, :location => @caravan_cover_image_name }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan_cover_image_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravan_cover_image_names/1
  # PUT /caravan_cover_image_names/1.xml
  def update
    @caravan_cover_image_name = CaravanCoverImageName.find(params[:id])

    respond_to do |format|
      if @caravan_cover_image_name.update_attributes(params[:caravan_cover_image_name])
        format.html { redirect_to(@caravan_cover_image_name, :notice => 'Caravan cover image name was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan_cover_image_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravan_cover_image_names/1
  # DELETE /caravan_cover_image_names/1.xml
  def destroy
    @caravan_cover_image_name = CaravanCoverImageName.find(params[:id])
    @caravan_cover_image_name.destroy

    respond_to do |format|
      format.html { redirect_to(caravan_cover_image_names_url) }
      format.xml  { head :ok }
    end
  end
end
