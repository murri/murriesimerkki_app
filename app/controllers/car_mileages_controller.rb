class CarMileagesController < ApplicationController
  # GET /car_mileages
  # GET /car_mileages.xml
  def index
    @car_mileages = CarMileage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_mileages }
    end
  end

  # GET /car_mileages/1
  # GET /car_mileages/1.xml
  def show
    @car_mileage = CarMileage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_mileage }
    end
  end

  # GET /car_mileages/new
  # GET /car_mileages/new.xml
  def new
    @car_mileage = CarMileage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_mileage }
    end
  end

  # GET /car_mileages/1/edit
  def edit
    @car_mileage = CarMileage.find(params[:id])
  end

  # POST /car_mileages
  # POST /car_mileages.xml
  def create
    @car_mileage = CarMileage.new(params[:car_mileage])

    respond_to do |format|
      if @car_mileage.save
        format.html { redirect_to(@car_mileage, :notice => 'Car mileage was successfully created.') }
        format.xml  { render :xml => @car_mileage, :status => :created, :location => @car_mileage }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_mileage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_mileages/1
  # PUT /car_mileages/1.xml
  def update
    @car_mileage = CarMileage.find(params[:id])

    respond_to do |format|
      if @car_mileage.update_attributes(params[:car_mileage])
        format.html { redirect_to(@car_mileage, :notice => 'Car mileage was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_mileage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_mileages/1
  # DELETE /car_mileages/1.xml
  def destroy
    @car_mileage = CarMileage.find(params[:id])
    @car_mileage.destroy

    respond_to do |format|
      format.html { redirect_to(car_mileages_url) }
      format.xml  { head :ok }
    end
  end
end
