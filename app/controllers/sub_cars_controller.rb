class SubCarsController < ApplicationController
  # GET /sub_cars
  # GET /sub_cars.xml
  def index
    @sub_cars = SubCar.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sub_cars }
    end
  end

  # GET /sub_cars/1
  # GET /sub_cars/1.xml
  def show
    @sub_car = SubCar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sub_car }
    end
  end

  # GET /sub_cars/new
  # GET /sub_cars/new.xml
  def new
    @sub_car = SubCar.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sub_car }
    end
  end

  # GET /sub_cars/1/edit
  def edit
    @sub_car = SubCar.find(params[:id])
  end

  # POST /sub_cars
  # POST /sub_cars.xml
  def create
    @sub_car = SubCar.new(params[:sub_car])

    respond_to do |format|
      if @sub_car.save
        format.html { redirect_to(@sub_car, :notice => 'Sub car was successfully created.') }
        format.xml  { render :xml => @sub_car, :status => :created, :location => @sub_car }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sub_car.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sub_cars/1
  # PUT /sub_cars/1.xml
  def update
    @sub_car = SubCar.find(params[:id])

    respond_to do |format|
      if @sub_car.update_attributes(params[:sub_car])
        format.html { redirect_to(@sub_car, :notice => 'Sub car was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sub_car.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_cars/1
  # DELETE /sub_cars/1.xml
  def destroy
    @sub_car = SubCar.find(params[:id])
    @sub_car.destroy

    respond_to do |format|
      format.html { redirect_to(sub_cars_url) }
      format.xml  { head :ok }
    end
  end
end
