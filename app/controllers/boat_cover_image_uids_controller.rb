class BoatCoverImageUidsController < ApplicationController
  # GET /boat_cover_image_uids
  # GET /boat_cover_image_uids.xml
  def index
    @boat_cover_image_uids = BoatCoverImageUid.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_cover_image_uids }
    end
  end

  # GET /boat_cover_image_uids/1
  # GET /boat_cover_image_uids/1.xml
  def show
    @boat_cover_image_uid = BoatCoverImageUid.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_cover_image_uid }
    end
  end

  # GET /boat_cover_image_uids/new
  # GET /boat_cover_image_uids/new.xml
  def new
    @boat_cover_image_uid = BoatCoverImageUid.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_cover_image_uid }
    end
  end

  # GET /boat_cover_image_uids/1/edit
  def edit
    @boat_cover_image_uid = BoatCoverImageUid.find(params[:id])
  end

  # POST /boat_cover_image_uids
  # POST /boat_cover_image_uids.xml
  def create
    @boat_cover_image_uid = BoatCoverImageUid.new(params[:boat_cover_image_uid])

    respond_to do |format|
      if @boat_cover_image_uid.save
        format.html { redirect_to(@boat_cover_image_uid, :notice => 'Boat cover image uid was successfully created.') }
        format.xml  { render :xml => @boat_cover_image_uid, :status => :created, :location => @boat_cover_image_uid }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_cover_image_uid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_cover_image_uids/1
  # PUT /boat_cover_image_uids/1.xml
  def update
    @boat_cover_image_uid = BoatCoverImageUid.find(params[:id])

    respond_to do |format|
      if @boat_cover_image_uid.update_attributes(params[:boat_cover_image_uid])
        format.html { redirect_to(@boat_cover_image_uid, :notice => 'Boat cover image uid was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_cover_image_uid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_cover_image_uids/1
  # DELETE /boat_cover_image_uids/1.xml
  def destroy
    @boat_cover_image_uid = BoatCoverImageUid.find(params[:id])
    @boat_cover_image_uid.destroy

    respond_to do |format|
      format.html { redirect_to(boat_cover_image_uids_url) }
      format.xml  { head :ok }
    end
  end
end
