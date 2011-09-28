class TownTypesController < ApplicationController
  # GET /town_types
  # GET /town_types.xml
  def index
    @town_types = TownType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @town_types }
    end
  end

  # GET /town_types/1
  # GET /town_types/1.xml
  def show
    @town_type = TownType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @town_type }
    end
  end

  # GET /town_types/new
  # GET /town_types/new.xml
  def new
    @town_type = TownType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @town_type }
    end
  end

  # GET /town_types/1/edit
  def edit
    @town_type = TownType.find(params[:id])
  end

  # POST /town_types
  # POST /town_types.xml
  def create
    @town_type = TownType.new(params[:town_type])

    respond_to do |format|
      if @town_type.save
        format.html { redirect_to(@town_type, :notice => 'Town type was successfully created.') }
        format.xml  { render :xml => @town_type, :status => :created, :location => @town_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @town_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /town_types/1
  # PUT /town_types/1.xml
  def update
    @town_type = TownType.find(params[:id])

    respond_to do |format|
      if @town_type.update_attributes(params[:town_type])
        format.html { redirect_to(@town_type, :notice => 'Town type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @town_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /town_types/1
  # DELETE /town_types/1.xml
  def destroy
    @town_type = TownType.find(params[:id])
    @town_type.destroy

    respond_to do |format|
      format.html { redirect_to(town_types_url) }
      format.xml  { head :ok }
    end
  end
end
