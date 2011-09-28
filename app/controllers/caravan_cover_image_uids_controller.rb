class CaravanCoverImageUidsController < ApplicationController
  # GET /caravan_cover_image_uids
  # GET /caravan_cover_image_uids.xml
  def index
    @caravan_cover_image_uids = CaravanCoverImageUid.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravan_cover_image_uids }
    end
  end

  # GET /caravan_cover_image_uids/1
  # GET /caravan_cover_image_uids/1.xml
  def show
    @caravan_cover_image_uid = CaravanCoverImageUid.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan_cover_image_uid }
    end
  end

  # GET /caravan_cover_image_uids/new
  # GET /caravan_cover_image_uids/new.xml
  def new
    @caravan_cover_image_uid = CaravanCoverImageUid.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan_cover_image_uid }
    end
  end

  # GET /caravan_cover_image_uids/1/edit
  def edit
    @caravan_cover_image_uid = CaravanCoverImageUid.find(params[:id])
  end

  # POST /caravan_cover_image_uids
  # POST /caravan_cover_image_uids.xml
  def create
    @caravan_cover_image_uid = CaravanCoverImageUid.new(params[:caravan_cover_image_uid])

    respond_to do |format|
      if @caravan_cover_image_uid.save
        format.html { redirect_to(@caravan_cover_image_uid, :notice => 'Caravan cover image uid was successfully created.') }
        format.xml  { render :xml => @caravan_cover_image_uid, :status => :created, :location => @caravan_cover_image_uid }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan_cover_image_uid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravan_cover_image_uids/1
  # PUT /caravan_cover_image_uids/1.xml
  def update
    @caravan_cover_image_uid = CaravanCoverImageUid.find(params[:id])

    respond_to do |format|
      if @caravan_cover_image_uid.update_attributes(params[:caravan_cover_image_uid])
        format.html { redirect_to(@caravan_cover_image_uid, :notice => 'Caravan cover image uid was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan_cover_image_uid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravan_cover_image_uids/1
  # DELETE /caravan_cover_image_uids/1.xml
  def destroy
    @caravan_cover_image_uid = CaravanCoverImageUid.find(params[:id])
    @caravan_cover_image_uid.destroy

    respond_to do |format|
      format.html { redirect_to(caravan_cover_image_uids_url) }
      format.xml  { head :ok }
    end
  end
end
