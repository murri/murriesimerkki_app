class CoverImageNamesController < ApplicationController
  # GET /cover_image_names
  # GET /cover_image_names.xml
  def index
    @cover_image_names = CoverImageName.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cover_image_names }
    end
  end

  # GET /cover_image_names/1
  # GET /cover_image_names/1.xml
  def show
    @cover_image_name = CoverImageName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cover_image_name }
    end
  end

  # GET /cover_image_names/new
  # GET /cover_image_names/new.xml
  def new
    @cover_image_name = CoverImageName.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cover_image_name }
    end
  end

  # GET /cover_image_names/1/edit
  def edit
    @cover_image_name = CoverImageName.find(params[:id])
  end

  # POST /cover_image_names
  # POST /cover_image_names.xml
  def create
    @cover_image_name = CoverImageName.new(params[:cover_image_name])

    respond_to do |format|
      if @cover_image_name.save
        format.html { redirect_to(@cover_image_name, :notice => 'Cover image name was successfully created.') }
        format.xml  { render :xml => @cover_image_name, :status => :created, :location => @cover_image_name }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cover_image_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cover_image_names/1
  # PUT /cover_image_names/1.xml
  def update
    @cover_image_name = CoverImageName.find(params[:id])

    respond_to do |format|
      if @cover_image_name.update_attributes(params[:cover_image_name])
        format.html { redirect_to(@cover_image_name, :notice => 'Cover image name was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cover_image_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cover_image_names/1
  # DELETE /cover_image_names/1.xml
  def destroy
    @cover_image_name = CoverImageName.find(params[:id])
    @cover_image_name.destroy

    respond_to do |format|
      format.html { redirect_to(cover_image_names_url) }
      format.xml  { head :ok }
    end
  end
end
