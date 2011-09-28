class CarWeightsController < ApplicationController
  # GET /car_weights
  # GET /car_weights.xml
  def index
    @car_weights = CarWeight.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_weights }
    end
  end

  # GET /car_weights/1
  # GET /car_weights/1.xml
  def show
    @car_weight = CarWeight.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_weight }
    end
  end

  # GET /car_weights/new
  # GET /car_weights/new.xml
  def new
    @car_weight = CarWeight.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_weight }
    end
  end

  # GET /car_weights/1/edit
  def edit
    @car_weight = CarWeight.find(params[:id])
  end

  # POST /car_weights
  # POST /car_weights.xml
  def create
    @car_weight = CarWeight.new(params[:car_weight])

    respond_to do |format|
      if @car_weight.save
        format.html { redirect_to(@car_weight, :notice => 'Car weight was successfully created.') }
        format.xml  { render :xml => @car_weight, :status => :created, :location => @car_weight }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_weight.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_weights/1
  # PUT /car_weights/1.xml
  def update
    @car_weight = CarWeight.find(params[:id])

    respond_to do |format|
      if @car_weight.update_attributes(params[:car_weight])
        format.html { redirect_to(@car_weight, :notice => 'Car weight was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_weight.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_weights/1
  # DELETE /car_weights/1.xml
  def destroy
    @car_weight = CarWeight.find(params[:id])
    @car_weight.destroy

    respond_to do |format|
      format.html { redirect_to(car_weights_url) }
      format.xml  { head :ok }
    end
  end
end
