class MotoCoverImageUidsController < ApplicationController
  # GET /moto_cover_image_uids
  # GET /moto_cover_image_uids.xml
  def index
    @moto_cover_image_uids = MotoCoverImageUid.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_cover_image_uids }
    end
  end

  # GET /moto_cover_image_uids/1
  # GET /moto_cover_image_uids/1.xml
  def show
    @moto_cover_image_uid = MotoCoverImageUid.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_cover_image_uid }
    end
  end

  # GET /moto_cover_image_uids/new
  # GET /moto_cover_image_uids/new.xml
  def new
    @moto_cover_image_uid = MotoCoverImageUid.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_cover_image_uid }
    end
  end

  # GET /moto_cover_image_uids/1/edit
  def edit
    @moto_cover_image_uid = MotoCoverImageUid.find(params[:id])
  end

  # POST /moto_cover_image_uids
  # POST /moto_cover_image_uids.xml
  def create
    @moto_cover_image_uid = MotoCoverImageUid.new(params[:moto_cover_image_uid])

    respond_to do |format|
      if @moto_cover_image_uid.save
        format.html { redirect_to(@moto_cover_image_uid, :notice => 'Moto cover image uid was successfully created.') }
        format.xml  { render :xml => @moto_cover_image_uid, :status => :created, :location => @moto_cover_image_uid }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_cover_image_uid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_cover_image_uids/1
  # PUT /moto_cover_image_uids/1.xml
  def update
    @moto_cover_image_uid = MotoCoverImageUid.find(params[:id])

    respond_to do |format|
      if @moto_cover_image_uid.update_attributes(params[:moto_cover_image_uid])
        format.html { redirect_to(@moto_cover_image_uid, :notice => 'Moto cover image uid was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_cover_image_uid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_cover_image_uids/1
  # DELETE /moto_cover_image_uids/1.xml
  def destroy
    @moto_cover_image_uid = MotoCoverImageUid.find(params[:id])
    @moto_cover_image_uid.destroy

    respond_to do |format|
      format.html { redirect_to(moto_cover_image_uids_url) }
      format.xml  { head :ok }
    end
  end
end
