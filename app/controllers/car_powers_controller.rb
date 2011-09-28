class CarPowersController < ApplicationController
  # GET /car_powers
  # GET /car_powers.xml
  def index
    @car_powers = CarPower.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_powers }
    end
  end

  # GET /car_powers/1
  # GET /car_powers/1.xml
  def show
    @car_power = CarPower.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_power }
    end
  end

  # GET /car_powers/new
  # GET /car_powers/new.xml
  def new
    @car_power = CarPower.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_power }
    end
  end

  # GET /car_powers/1/edit
  def edit
    @car_power = CarPower.find(params[:id])
  end

  # POST /car_powers
  # POST /car_powers.xml
  def create
    @car_power = CarPower.new(params[:car_power])

    respond_to do |format|
      if @car_power.save
        format.html { redirect_to(@car_power, :notice => 'Car power was successfully created.') }
        format.xml  { render :xml => @car_power, :status => :created, :location => @car_power }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_power.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_powers/1
  # PUT /car_powers/1.xml
  def update
    @car_power = CarPower.find(params[:id])

    respond_to do |format|
      if @car_power.update_attributes(params[:car_power])
        format.html { redirect_to(@car_power, :notice => 'Car power was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_power.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_powers/1
  # DELETE /car_powers/1.xml
  def destroy
    @car_power = CarPower.find(params[:id])
    @car_power.destroy

    respond_to do |format|
      format.html { redirect_to(car_powers_url) }
      format.xml  { head :ok }
    end
  end
end
