class BoatTypesController < ApplicationController
  # GET /boat_types
  # GET /boat_types.xml
  def index
    @boat_types = BoatType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_types }
    end
  end

  # GET /boat_types/1
  # GET /boat_types/1.xml
  def show
    @boat_type = BoatType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_type }
    end
  end

  # GET /boat_types/new
  # GET /boat_types/new.xml
  def new
    @boat_type = BoatType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_type }
    end
  end

  # GET /boat_types/1/edit
  def edit
    @boat_type = BoatType.find(params[:id])
  end

  # POST /boat_types
  # POST /boat_types.xml
  def create
    @boat_type = BoatType.new(params[:boat_type])

    respond_to do |format|
      if @boat_type.save
        format.html { redirect_to(@boat_type, :notice => 'Boat type was successfully created.') }
        format.xml  { render :xml => @boat_type, :status => :created, :location => @boat_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_types/1
  # PUT /boat_types/1.xml
  def update
    @boat_type = BoatType.find(params[:id])

    respond_to do |format|
      if @boat_type.update_attributes(params[:boat_type])
        format.html { redirect_to(@boat_type, :notice => 'Boat type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_types/1
  # DELETE /boat_types/1.xml
  def destroy
    @boat_type = BoatType.find(params[:id])
    @boat_type.destroy

    respond_to do |format|
      format.html { redirect_to(boat_types_url) }
      format.xml  { head :ok }
    end
  end
end
