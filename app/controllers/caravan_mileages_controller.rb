class CaravanMileagesController < ApplicationController
  # GET /caravan_mileages
  # GET /caravan_mileages.xml
  def index
    @caravan_mileages = CaravanMileage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravan_mileages }
    end
  end

  # GET /caravan_mileages/1
  # GET /caravan_mileages/1.xml
  def show
    @caravan_mileage = CaravanMileage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan_mileage }
    end
  end

  # GET /caravan_mileages/new
  # GET /caravan_mileages/new.xml
  def new
    @caravan_mileage = CaravanMileage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan_mileage }
    end
  end

  # GET /caravan_mileages/1/edit
  def edit
    @caravan_mileage = CaravanMileage.find(params[:id])
  end

  # POST /caravan_mileages
  # POST /caravan_mileages.xml
  def create
    @caravan_mileage = CaravanMileage.new(params[:caravan_mileage])

    respond_to do |format|
      if @caravan_mileage.save
        format.html { redirect_to(@caravan_mileage, :notice => 'Caravan mileage was successfully created.') }
        format.xml  { render :xml => @caravan_mileage, :status => :created, :location => @caravan_mileage }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan_mileage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravan_mileages/1
  # PUT /caravan_mileages/1.xml
  def update
    @caravan_mileage = CaravanMileage.find(params[:id])

    respond_to do |format|
      if @caravan_mileage.update_attributes(params[:caravan_mileage])
        format.html { redirect_to(@caravan_mileage, :notice => 'Caravan mileage was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan_mileage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravan_mileages/1
  # DELETE /caravan_mileages/1.xml
  def destroy
    @caravan_mileage = CaravanMileage.find(params[:id])
    @caravan_mileage.destroy

    respond_to do |format|
      format.html { redirect_to(caravan_mileages_url) }
      format.xml  { head :ok }
    end
  end
end
