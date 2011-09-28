class BoatDomicileTypesController < ApplicationController
  # GET /boat_domicile_types
  # GET /boat_domicile_types.xml
  def index
    @boat_domicile_types = BoatDomicileType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_domicile_types }
    end
  end

  # GET /boat_domicile_types/1
  # GET /boat_domicile_types/1.xml
  def show
    @boat_domicile_type = BoatDomicileType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_domicile_type }
    end
  end

  # GET /boat_domicile_types/new
  # GET /boat_domicile_types/new.xml
  def new
    @boat_domicile_type = BoatDomicileType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_domicile_type }
    end
  end

  # GET /boat_domicile_types/1/edit
  def edit
    @boat_domicile_type = BoatDomicileType.find(params[:id])
  end

  # POST /boat_domicile_types
  # POST /boat_domicile_types.xml
  def create
    @boat_domicile_type = BoatDomicileType.new(params[:boat_domicile_type])

    respond_to do |format|
      if @boat_domicile_type.save
        format.html { redirect_to(@boat_domicile_type, :notice => 'Boat domicile type was successfully created.') }
        format.xml  { render :xml => @boat_domicile_type, :status => :created, :location => @boat_domicile_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_domicile_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_domicile_types/1
  # PUT /boat_domicile_types/1.xml
  def update
    @boat_domicile_type = BoatDomicileType.find(params[:id])

    respond_to do |format|
      if @boat_domicile_type.update_attributes(params[:boat_domicile_type])
        format.html { redirect_to(@boat_domicile_type, :notice => 'Boat domicile type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_domicile_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_domicile_types/1
  # DELETE /boat_domicile_types/1.xml
  def destroy
    @boat_domicile_type = BoatDomicileType.find(params[:id])
    @boat_domicile_type.destroy

    respond_to do |format|
      format.html { redirect_to(boat_domicile_types_url) }
      format.xml  { head :ok }
    end
  end
end
