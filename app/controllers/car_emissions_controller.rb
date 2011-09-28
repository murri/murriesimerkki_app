class CarEmissionsController < ApplicationController
  # GET /car_emissions
  # GET /car_emissions.xml
  def index
    @car_emissions = CarEmission.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_emissions }
    end
  end

  # GET /car_emissions/1
  # GET /car_emissions/1.xml
  def show
    @car_emission = CarEmission.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_emission }
    end
  end

  # GET /car_emissions/new
  # GET /car_emissions/new.xml
  def new
    @car_emission = CarEmission.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_emission }
    end
  end

  # GET /car_emissions/1/edit
  def edit
    @car_emission = CarEmission.find(params[:id])
  end

  # POST /car_emissions
  # POST /car_emissions.xml
  def create
    @car_emission = CarEmission.new(params[:car_emission])

    respond_to do |format|
      if @car_emission.save
        format.html { redirect_to(@car_emission, :notice => 'Car emission was successfully created.') }
        format.xml  { render :xml => @car_emission, :status => :created, :location => @car_emission }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_emission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_emissions/1
  # PUT /car_emissions/1.xml
  def update
    @car_emission = CarEmission.find(params[:id])

    respond_to do |format|
      if @car_emission.update_attributes(params[:car_emission])
        format.html { redirect_to(@car_emission, :notice => 'Car emission was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_emission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_emissions/1
  # DELETE /car_emissions/1.xml
  def destroy
    @car_emission = CarEmission.find(params[:id])
    @car_emission.destroy

    respond_to do |format|
      format.html { redirect_to(car_emissions_url) }
      format.xml  { head :ok }
    end
  end
end
