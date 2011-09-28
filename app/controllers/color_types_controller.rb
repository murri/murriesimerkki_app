class ColorTypesController < ApplicationController
  # GET /color_types
  # GET /color_types.xml
  def index
    @color_types = ColorType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @color_types }
    end
  end

  # GET /color_types/1
  # GET /color_types/1.xml
  def show
    @color_type = ColorType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @color_type }
    end
  end

  # GET /color_types/new
  # GET /color_types/new.xml
  def new
    @color_type = ColorType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @color_type }
    end
  end

  # GET /color_types/1/edit
  def edit
    @color_type = ColorType.find(params[:id])
  end

  # POST /color_types
  # POST /color_types.xml
  def create
    @color_type = ColorType.new(params[:color_type])

    respond_to do |format|
      if @color_type.save
        format.html { redirect_to(@color_type, :notice => 'Color type was successfully created.') }
        format.xml  { render :xml => @color_type, :status => :created, :location => @color_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @color_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /color_types/1
  # PUT /color_types/1.xml
  def update
    @color_type = ColorType.find(params[:id])

    respond_to do |format|
      if @color_type.update_attributes(params[:color_type])
        format.html { redirect_to(@color_type, :notice => 'Color type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @color_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /color_types/1
  # DELETE /color_types/1.xml
  def destroy
    @color_type = ColorType.find(params[:id])
    @color_type.destroy

    respond_to do |format|
      format.html { redirect_to(color_types_url) }
      format.xml  { head :ok }
    end
  end
end
