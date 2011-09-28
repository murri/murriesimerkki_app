class BoatSubTypesController < ApplicationController
  # GET /boat_sub_types
  # GET /boat_sub_types.xml
  def index
    @boat_sub_types = BoatSubType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_sub_types }
    end
  end

  # GET /boat_sub_types/1
  # GET /boat_sub_types/1.xml
  def show
    @boat_sub_type = BoatSubType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_sub_type }
    end
  end

  # GET /boat_sub_types/new
  # GET /boat_sub_types/new.xml
  def new
    @boat_sub_type = BoatSubType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_sub_type }
    end
  end

  # GET /boat_sub_types/1/edit
  def edit
    @boat_sub_type = BoatSubType.find(params[:id])
  end

  # POST /boat_sub_types
  # POST /boat_sub_types.xml
  def create
    @boat_sub_type = BoatSubType.new(params[:boat_sub_type])

    respond_to do |format|
      if @boat_sub_type.save
        format.html { redirect_to(@boat_sub_type, :notice => 'Boat sub type was successfully created.') }
        format.xml  { render :xml => @boat_sub_type, :status => :created, :location => @boat_sub_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_sub_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_sub_types/1
  # PUT /boat_sub_types/1.xml
  def update
    @boat_sub_type = BoatSubType.find(params[:id])

    respond_to do |format|
      if @boat_sub_type.update_attributes(params[:boat_sub_type])
        format.html { redirect_to(@boat_sub_type, :notice => 'Boat sub type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_sub_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_sub_types/1
  # DELETE /boat_sub_types/1.xml
  def destroy
    @boat_sub_type = BoatSubType.find(params[:id])
    @boat_sub_type.destroy

    respond_to do |format|
      format.html { redirect_to(boat_sub_types_url) }
      format.xml  { head :ok }
    end
  end
end
