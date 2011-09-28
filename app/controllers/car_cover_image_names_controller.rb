class CarCoverImageNamesController < ApplicationController
  # GET /car_cover_image_names
  # GET /car_cover_image_names.xml
  def index
    @car_cover_image_names = CarCoverImageName.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_cover_image_names }
    end
  end

  # GET /car_cover_image_names/1
  # GET /car_cover_image_names/1.xml
  def show
    @car_cover_image_name = CarCoverImageName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_cover_image_name }
    end
  end

  # GET /car_cover_image_names/new
  # GET /car_cover_image_names/new.xml
  def new
    @car_cover_image_name = CarCoverImageName.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_cover_image_name }
    end
  end

  # GET /car_cover_image_names/1/edit
  def edit
    @car_cover_image_name = CarCoverImageName.find(params[:id])
  end

  # POST /car_cover_image_names
  # POST /car_cover_image_names.xml
  def create
    @car_cover_image_name = CarCoverImageName.new(params[:car_cover_image_name])

    respond_to do |format|
      if @car_cover_image_name.save
        format.html { redirect_to(@car_cover_image_name, :notice => 'Car cover image name was successfully created.') }
        format.xml  { render :xml => @car_cover_image_name, :status => :created, :location => @car_cover_image_name }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_cover_image_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_cover_image_names/1
  # PUT /car_cover_image_names/1.xml
  def update
    @car_cover_image_name = CarCoverImageName.find(params[:id])

    respond_to do |format|
      if @car_cover_image_name.update_attributes(params[:car_cover_image_name])
        format.html { redirect_to(@car_cover_image_name, :notice => 'Car cover image name was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_cover_image_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_cover_image_names/1
  # DELETE /car_cover_image_names/1.xml
  def destroy
    @car_cover_image_name = CarCoverImageName.find(params[:id])
    @car_cover_image_name.destroy

    respond_to do |format|
      format.html { redirect_to(car_cover_image_names_url) }
      format.xml  { head :ok }
    end
  end
end
