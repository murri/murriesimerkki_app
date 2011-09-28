class MachineCoverImageUidsController < ApplicationController
  # GET /machine_cover_image_uids
  # GET /machine_cover_image_uids.xml
  def index
    @machine_cover_image_uids = MachineCoverImageUid.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_cover_image_uids }
    end
  end

  # GET /machine_cover_image_uids/1
  # GET /machine_cover_image_uids/1.xml
  def show
    @machine_cover_image_uid = MachineCoverImageUid.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_cover_image_uid }
    end
  end

  # GET /machine_cover_image_uids/new
  # GET /machine_cover_image_uids/new.xml
  def new
    @machine_cover_image_uid = MachineCoverImageUid.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_cover_image_uid }
    end
  end

  # GET /machine_cover_image_uids/1/edit
  def edit
    @machine_cover_image_uid = MachineCoverImageUid.find(params[:id])
  end

  # POST /machine_cover_image_uids
  # POST /machine_cover_image_uids.xml
  def create
    @machine_cover_image_uid = MachineCoverImageUid.new(params[:machine_cover_image_uid])

    respond_to do |format|
      if @machine_cover_image_uid.save
        format.html { redirect_to(@machine_cover_image_uid, :notice => 'Machine cover image uid was successfully created.') }
        format.xml  { render :xml => @machine_cover_image_uid, :status => :created, :location => @machine_cover_image_uid }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_cover_image_uid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_cover_image_uids/1
  # PUT /machine_cover_image_uids/1.xml
  def update
    @machine_cover_image_uid = MachineCoverImageUid.find(params[:id])

    respond_to do |format|
      if @machine_cover_image_uid.update_attributes(params[:machine_cover_image_uid])
        format.html { redirect_to(@machine_cover_image_uid, :notice => 'Machine cover image uid was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_cover_image_uid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_cover_image_uids/1
  # DELETE /machine_cover_image_uids/1.xml
  def destroy
    @machine_cover_image_uid = MachineCoverImageUid.find(params[:id])
    @machine_cover_image_uid.destroy

    respond_to do |format|
      format.html { redirect_to(machine_cover_image_uids_url) }
      format.xml  { head :ok }
    end
  end
end
