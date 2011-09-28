class CarCoverImageUidsController < ApplicationController
  # GET /car_cover_image_uids
  # GET /car_cover_image_uids.xml
  def index
    @car_cover_image_uids = CarCoverImageUid.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_cover_image_uids }
    end
  end

  # GET /car_cover_image_uids/1
  # GET /car_cover_image_uids/1.xml
  def show
    @car_cover_image_uid = CarCoverImageUid.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_cover_image_uid }
    end
  end

  # GET /car_cover_image_uids/new
  # GET /car_cover_image_uids/new.xml
  def new
    @car_cover_image_uid = CarCoverImageUid.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_cover_image_uid }
    end
  end

  # GET /car_cover_image_uids/1/edit
  def edit
    @car_cover_image_uid = CarCoverImageUid.find(params[:id])
  end

  # POST /car_cover_image_uids
  # POST /car_cover_image_uids.xml
  def create
    @car_cover_image_uid = CarCoverImageUid.new(params[:car_cover_image_uid])

    respond_to do |format|
      if @car_cover_image_uid.save
        format.html { redirect_to(@car_cover_image_uid, :notice => 'Car cover image uid was successfully created.') }
        format.xml  { render :xml => @car_cover_image_uid, :status => :created, :location => @car_cover_image_uid }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_cover_image_uid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_cover_image_uids/1
  # PUT /car_cover_image_uids/1.xml
  def update
    @car_cover_image_uid = CarCoverImageUid.find(params[:id])

    respond_to do |format|
      if @car_cover_image_uid.update_attributes(params[:car_cover_image_uid])
        format.html { redirect_to(@car_cover_image_uid, :notice => 'Car cover image uid was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_cover_image_uid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_cover_image_uids/1
  # DELETE /car_cover_image_uids/1.xml
  def destroy
    @car_cover_image_uid = CarCoverImageUid.find(params[:id])
    @car_cover_image_uid.destroy

    respond_to do |format|
      format.html { redirect_to(car_cover_image_uids_url) }
      format.xml  { head :ok }
    end
  end
end
