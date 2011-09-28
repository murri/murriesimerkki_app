class CaravanDomicileTypesController < ApplicationController
  # GET /caravan_domicile_types
  # GET /caravan_domicile_types.xml
  def index
    @caravan_domicile_types = CaravanDomicileType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravan_domicile_types }
    end
  end

  # GET /caravan_domicile_types/1
  # GET /caravan_domicile_types/1.xml
  def show
    @caravan_domicile_type = CaravanDomicileType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan_domicile_type }
    end
  end

  # GET /caravan_domicile_types/new
  # GET /caravan_domicile_types/new.xml
  def new
    @caravan_domicile_type = CaravanDomicileType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan_domicile_type }
    end
  end

  # GET /caravan_domicile_types/1/edit
  def edit
    @caravan_domicile_type = CaravanDomicileType.find(params[:id])
  end

  # POST /caravan_domicile_types
  # POST /caravan_domicile_types.xml
  def create
    @caravan_domicile_type = CaravanDomicileType.new(params[:caravan_domicile_type])

    respond_to do |format|
      if @caravan_domicile_type.save
        format.html { redirect_to(@caravan_domicile_type, :notice => 'Caravan domicile type was successfully created.') }
        format.xml  { render :xml => @caravan_domicile_type, :status => :created, :location => @caravan_domicile_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan_domicile_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravan_domicile_types/1
  # PUT /caravan_domicile_types/1.xml
  def update
    @caravan_domicile_type = CaravanDomicileType.find(params[:id])

    respond_to do |format|
      if @caravan_domicile_type.update_attributes(params[:caravan_domicile_type])
        format.html { redirect_to(@caravan_domicile_type, :notice => 'Caravan domicile type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan_domicile_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravan_domicile_types/1
  # DELETE /caravan_domicile_types/1.xml
  def destroy
    @caravan_domicile_type = CaravanDomicileType.find(params[:id])
    @caravan_domicile_type.destroy

    respond_to do |format|
      format.html { redirect_to(caravan_domicile_types_url) }
      format.xml  { head :ok }
    end
  end
end
