class CaravanDeadWeightsController < ApplicationController
  # GET /caravan_dead_weights
  # GET /caravan_dead_weights.xml
  def index
    @caravan_dead_weights = CaravanDeadWeight.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravan_dead_weights }
    end
  end

  # GET /caravan_dead_weights/1
  # GET /caravan_dead_weights/1.xml
  def show
    @caravan_dead_weight = CaravanDeadWeight.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan_dead_weight }
    end
  end

  # GET /caravan_dead_weights/new
  # GET /caravan_dead_weights/new.xml
  def new
    @caravan_dead_weight = CaravanDeadWeight.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan_dead_weight }
    end
  end

  # GET /caravan_dead_weights/1/edit
  def edit
    @caravan_dead_weight = CaravanDeadWeight.find(params[:id])
  end

  # POST /caravan_dead_weights
  # POST /caravan_dead_weights.xml
  def create
    @caravan_dead_weight = CaravanDeadWeight.new(params[:caravan_dead_weight])

    respond_to do |format|
      if @caravan_dead_weight.save
        format.html { redirect_to(@caravan_dead_weight, :notice => 'Caravan dead weight was successfully created.') }
        format.xml  { render :xml => @caravan_dead_weight, :status => :created, :location => @caravan_dead_weight }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan_dead_weight.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravan_dead_weights/1
  # PUT /caravan_dead_weights/1.xml
  def update
    @caravan_dead_weight = CaravanDeadWeight.find(params[:id])

    respond_to do |format|
      if @caravan_dead_weight.update_attributes(params[:caravan_dead_weight])
        format.html { redirect_to(@caravan_dead_weight, :notice => 'Caravan dead weight was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan_dead_weight.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravan_dead_weights/1
  # DELETE /caravan_dead_weights/1.xml
  def destroy
    @caravan_dead_weight = CaravanDeadWeight.find(params[:id])
    @caravan_dead_weight.destroy

    respond_to do |format|
      format.html { redirect_to(caravan_dead_weights_url) }
      format.xml  { head :ok }
    end
  end
end
