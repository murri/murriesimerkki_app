class CarTopSpeedsController < ApplicationController
  # GET /car_top_speeds
  # GET /car_top_speeds.xml
  def index
    @car_top_speeds = CarTopSpeed.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_top_speeds }
    end
  end

  # GET /car_top_speeds/1
  # GET /car_top_speeds/1.xml
  def show
    @car_top_speed = CarTopSpeed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_top_speed }
    end
  end

  # GET /car_top_speeds/new
  # GET /car_top_speeds/new.xml
  def new
    @car_top_speed = CarTopSpeed.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_top_speed }
    end
  end

  # GET /car_top_speeds/1/edit
  def edit
    @car_top_speed = CarTopSpeed.find(params[:id])
  end

  # POST /car_top_speeds
  # POST /car_top_speeds.xml
  def create
    @car_top_speed = CarTopSpeed.new(params[:car_top_speed])

    respond_to do |format|
      if @car_top_speed.save
        format.html { redirect_to(@car_top_speed, :notice => 'Car top speed was successfully created.') }
        format.xml  { render :xml => @car_top_speed, :status => :created, :location => @car_top_speed }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_top_speed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_top_speeds/1
  # PUT /car_top_speeds/1.xml
  def update
    @car_top_speed = CarTopSpeed.find(params[:id])

    respond_to do |format|
      if @car_top_speed.update_attributes(params[:car_top_speed])
        format.html { redirect_to(@car_top_speed, :notice => 'Car top speed was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_top_speed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_top_speeds/1
  # DELETE /car_top_speeds/1.xml
  def destroy
    @car_top_speed = CarTopSpeed.find(params[:id])
    @car_top_speed.destroy

    respond_to do |format|
      format.html { redirect_to(car_top_speeds_url) }
      format.xml  { head :ok }
    end
  end
end
