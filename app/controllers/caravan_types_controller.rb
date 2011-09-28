class CaravanTypesController < ApplicationController
  # GET /caravan_types
  # GET /caravan_types.xml
  def index
    @caravan_types = CaravanType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravan_types }
    end
  end

  # GET /caravan_types/1
  # GET /caravan_types/1.xml
  def show
    @caravan_type = CaravanType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan_type }
    end
  end

  # GET /caravan_types/new
  # GET /caravan_types/new.xml
  def new
    @caravan_type = CaravanType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan_type }
    end
  end

  # GET /caravan_types/1/edit
  def edit
    @caravan_type = CaravanType.find(params[:id])
  end

  # POST /caravan_types
  # POST /caravan_types.xml
  def create
    @caravan_type = CaravanType.new(params[:caravan_type])

    respond_to do |format|
      if @caravan_type.save
        format.html { redirect_to(@caravan_type, :notice => 'Caravan type was successfully created.') }
        format.xml  { render :xml => @caravan_type, :status => :created, :location => @caravan_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravan_types/1
  # PUT /caravan_types/1.xml
  def update
    @caravan_type = CaravanType.find(params[:id])

    respond_to do |format|
      if @caravan_type.update_attributes(params[:caravan_type])
        format.html { redirect_to(@caravan_type, :notice => 'Caravan type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravan_types/1
  # DELETE /caravan_types/1.xml
  def destroy
    @caravan_type = CaravanType.find(params[:id])
    @caravan_type.destroy

    respond_to do |format|
      format.html { redirect_to(caravan_types_url) }
      format.xml  { head :ok }
    end
  end
end
