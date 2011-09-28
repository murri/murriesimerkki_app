class CarAccelerationsController < ApplicationController
  # GET /car_accelerations
  # GET /car_accelerations.xml
  def index
    @car_accelerations = CarAcceleration.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_accelerations }
    end
  end

  # GET /car_accelerations/1
  # GET /car_accelerations/1.xml
  def show
    @car_acceleration = CarAcceleration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_acceleration }
    end
  end

  # GET /car_accelerations/new
  # GET /car_accelerations/new.xml
  def new
    @car_acceleration = CarAcceleration.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_acceleration }
    end
  end

  # GET /car_accelerations/1/edit
  def edit
    @car_acceleration = CarAcceleration.find(params[:id])
  end

  # POST /car_accelerations
  # POST /car_accelerations.xml
  def create
    @car_acceleration = CarAcceleration.new(params[:car_acceleration])

    respond_to do |format|
      if @car_acceleration.save
        format.html { redirect_to(@car_acceleration, :notice => 'Car acceleration was successfully created.') }
        format.xml  { render :xml => @car_acceleration, :status => :created, :location => @car_acceleration }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_acceleration.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_accelerations/1
  # PUT /car_accelerations/1.xml
  def update
    @car_acceleration = CarAcceleration.find(params[:id])

    respond_to do |format|
      if @car_acceleration.update_attributes(params[:car_acceleration])
        format.html { redirect_to(@car_acceleration, :notice => 'Car acceleration was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_acceleration.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_accelerations/1
  # DELETE /car_accelerations/1.xml
  def destroy
    @car_acceleration = CarAcceleration.find(params[:id])
    @car_acceleration.destroy

    respond_to do |format|
      format.html { redirect_to(car_accelerations_url) }
      format.xml  { head :ok }
    end
  end
end
