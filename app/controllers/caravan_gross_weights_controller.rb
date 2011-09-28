class CaravanGrossWeightsController < ApplicationController
  # GET /caravan_gross_weights
  # GET /caravan_gross_weights.xml
  def index
    @caravan_gross_weights = CaravanGrossWeight.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravan_gross_weights }
    end
  end

  # GET /caravan_gross_weights/1
  # GET /caravan_gross_weights/1.xml
  def show
    @caravan_gross_weight = CaravanGrossWeight.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan_gross_weight }
    end
  end

  # GET /caravan_gross_weights/new
  # GET /caravan_gross_weights/new.xml
  def new
    @caravan_gross_weight = CaravanGrossWeight.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan_gross_weight }
    end
  end

  # GET /caravan_gross_weights/1/edit
  def edit
    @caravan_gross_weight = CaravanGrossWeight.find(params[:id])
  end

  # POST /caravan_gross_weights
  # POST /caravan_gross_weights.xml
  def create
    @caravan_gross_weight = CaravanGrossWeight.new(params[:caravan_gross_weight])

    respond_to do |format|
      if @caravan_gross_weight.save
        format.html { redirect_to(@caravan_gross_weight, :notice => 'Caravan gross weight was successfully created.') }
        format.xml  { render :xml => @caravan_gross_weight, :status => :created, :location => @caravan_gross_weight }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan_gross_weight.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravan_gross_weights/1
  # PUT /caravan_gross_weights/1.xml
  def update
    @caravan_gross_weight = CaravanGrossWeight.find(params[:id])

    respond_to do |format|
      if @caravan_gross_weight.update_attributes(params[:caravan_gross_weight])
        format.html { redirect_to(@caravan_gross_weight, :notice => 'Caravan gross weight was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan_gross_weight.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravan_gross_weights/1
  # DELETE /caravan_gross_weights/1.xml
  def destroy
    @caravan_gross_weight = CaravanGrossWeight.find(params[:id])
    @caravan_gross_weight.destroy

    respond_to do |format|
      format.html { redirect_to(caravan_gross_weights_url) }
      format.xml  { head :ok }
    end
  end
end
