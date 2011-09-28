class MotoColorTypesController < ApplicationController
  # GET /moto_color_types
  # GET /moto_color_types.xml
  def index
    @moto_color_types = MotoColorType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_color_types }
    end
  end

  # GET /moto_color_types/1
  # GET /moto_color_types/1.xml
  def show
    @moto_color_type = MotoColorType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_color_type }
    end
  end

  # GET /moto_color_types/new
  # GET /moto_color_types/new.xml
  def new
    @moto_color_type = MotoColorType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_color_type }
    end
  end

  # GET /moto_color_types/1/edit
  def edit
    @moto_color_type = MotoColorType.find(params[:id])
  end

  # POST /moto_color_types
  # POST /moto_color_types.xml
  def create
    @moto_color_type = MotoColorType.new(params[:moto_color_type])

    respond_to do |format|
      if @moto_color_type.save
        format.html { redirect_to(@moto_color_type, :notice => 'Moto color type was successfully created.') }
        format.xml  { render :xml => @moto_color_type, :status => :created, :location => @moto_color_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_color_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_color_types/1
  # PUT /moto_color_types/1.xml
  def update
    @moto_color_type = MotoColorType.find(params[:id])

    respond_to do |format|
      if @moto_color_type.update_attributes(params[:moto_color_type])
        format.html { redirect_to(@moto_color_type, :notice => 'Moto color type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_color_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_color_types/1
  # DELETE /moto_color_types/1.xml
  def destroy
    @moto_color_type = MotoColorType.find(params[:id])
    @moto_color_type.destroy

    respond_to do |format|
      format.html { redirect_to(moto_color_types_url) }
      format.xml  { head :ok }
    end
  end
end
