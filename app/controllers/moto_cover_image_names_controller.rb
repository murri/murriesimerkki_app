class MotoCoverImageNamesController < ApplicationController
  # GET /moto_cover_image_names
  # GET /moto_cover_image_names.xml
  def index
    @moto_cover_image_names = MotoCoverImageName.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_cover_image_names }
    end
  end

  # GET /moto_cover_image_names/1
  # GET /moto_cover_image_names/1.xml
  def show
    @moto_cover_image_name = MotoCoverImageName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_cover_image_name }
    end
  end

  # GET /moto_cover_image_names/new
  # GET /moto_cover_image_names/new.xml
  def new
    @moto_cover_image_name = MotoCoverImageName.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_cover_image_name }
    end
  end

  # GET /moto_cover_image_names/1/edit
  def edit
    @moto_cover_image_name = MotoCoverImageName.find(params[:id])
  end

  # POST /moto_cover_image_names
  # POST /moto_cover_image_names.xml
  def create
    @moto_cover_image_name = MotoCoverImageName.new(params[:moto_cover_image_name])

    respond_to do |format|
      if @moto_cover_image_name.save
        format.html { redirect_to(@moto_cover_image_name, :notice => 'Moto cover image name was successfully created.') }
        format.xml  { render :xml => @moto_cover_image_name, :status => :created, :location => @moto_cover_image_name }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_cover_image_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_cover_image_names/1
  # PUT /moto_cover_image_names/1.xml
  def update
    @moto_cover_image_name = MotoCoverImageName.find(params[:id])

    respond_to do |format|
      if @moto_cover_image_name.update_attributes(params[:moto_cover_image_name])
        format.html { redirect_to(@moto_cover_image_name, :notice => 'Moto cover image name was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_cover_image_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_cover_image_names/1
  # DELETE /moto_cover_image_names/1.xml
  def destroy
    @moto_cover_image_name = MotoCoverImageName.find(params[:id])
    @moto_cover_image_name.destroy

    respond_to do |format|
      format.html { redirect_to(moto_cover_image_names_url) }
      format.xml  { head :ok }
    end
  end
end
