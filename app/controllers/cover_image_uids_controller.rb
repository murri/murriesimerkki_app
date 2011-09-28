class CoverImageUidsController < ApplicationController
  # GET /cover_image_uids
  # GET /cover_image_uids.xml
  def index
    @cover_image_uids = CoverImageUid.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cover_image_uids }
    end
  end

  # GET /cover_image_uids/1
  # GET /cover_image_uids/1.xml
  def show
    @cover_image_uid = CoverImageUid.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cover_image_uid }
    end
  end

  # GET /cover_image_uids/new
  # GET /cover_image_uids/new.xml
  def new
    @cover_image_uid = CoverImageUid.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cover_image_uid }
    end
  end

  # GET /cover_image_uids/1/edit
  def edit
    @cover_image_uid = CoverImageUid.find(params[:id])
  end

  # POST /cover_image_uids
  # POST /cover_image_uids.xml
  def create
    @cover_image_uid = CoverImageUid.new(params[:cover_image_uid])

    respond_to do |format|
      if @cover_image_uid.save
        format.html { redirect_to(@cover_image_uid, :notice => 'Cover image uid was successfully created.') }
        format.xml  { render :xml => @cover_image_uid, :status => :created, :location => @cover_image_uid }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cover_image_uid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cover_image_uids/1
  # PUT /cover_image_uids/1.xml
  def update
    @cover_image_uid = CoverImageUid.find(params[:id])

    respond_to do |format|
      if @cover_image_uid.update_attributes(params[:cover_image_uid])
        format.html { redirect_to(@cover_image_uid, :notice => 'Cover image uid was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cover_image_uid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cover_image_uids/1
  # DELETE /cover_image_uids/1.xml
  def destroy
    @cover_image_uid = CoverImageUid.find(params[:id])
    @cover_image_uid.destroy

    respond_to do |format|
      format.html { redirect_to(cover_image_uids_url) }
      format.xml  { head :ok }
    end
  end
end
