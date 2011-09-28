class MotoTownTypesController < ApplicationController
  # GET /moto_town_types
  # GET /moto_town_types.xml
  def index
    @moto_town_types = MotoTownType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_town_types }
    end
  end

  # GET /moto_town_types/1
  # GET /moto_town_types/1.xml
  def show
    @moto_town_type = MotoTownType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_town_type }
    end
  end

  # GET /moto_town_types/new
  # GET /moto_town_types/new.xml
  def new
    @moto_town_type = MotoTownType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_town_type }
    end
  end

  # GET /moto_town_types/1/edit
  def edit
    @moto_town_type = MotoTownType.find(params[:id])
  end

  # POST /moto_town_types
  # POST /moto_town_types.xml
  def create
    @moto_town_type = MotoTownType.new(params[:moto_town_type])

    respond_to do |format|
      if @moto_town_type.save
        format.html { redirect_to(@moto_town_type, :notice => 'Moto town type was successfully created.') }
        format.xml  { render :xml => @moto_town_type, :status => :created, :location => @moto_town_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_town_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_town_types/1
  # PUT /moto_town_types/1.xml
  def update
    @moto_town_type = MotoTownType.find(params[:id])

    respond_to do |format|
      if @moto_town_type.update_attributes(params[:moto_town_type])
        format.html { redirect_to(@moto_town_type, :notice => 'Moto town type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_town_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_town_types/1
  # DELETE /moto_town_types/1.xml
  def destroy
    @moto_town_type = MotoTownType.find(params[:id])
    @moto_town_type.destroy

    respond_to do |format|
      format.html { redirect_to(moto_town_types_url) }
      format.xml  { head :ok }
    end
  end
end
