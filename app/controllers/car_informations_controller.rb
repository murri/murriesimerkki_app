class CarInformationsController < ApplicationController
  # GET /car_informations
  # GET /car_informations.xml
  def index
    @car_informations = CarInformation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_informations }
    end
  end

  # GET /car_informations/1
  # GET /car_informations/1.xml
  def show
    @car_information = CarInformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_information }
    end
  end

  # GET /car_informations/new
  # GET /car_informations/new.xml
  def new
    @car_information = CarInformation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_information }
    end
  end

  # GET /car_informations/1/edit
  def edit
    @car_information = CarInformation.find(params[:id])
  end

  # POST /car_informations
  # POST /car_informations.xml
  def create
    @car_information = CarInformation.new(params[:car_information])

    respond_to do |format|
      if @car_information.save
        format.html { redirect_to(@car_information, :notice => 'Car information was successfully created.') }
        format.xml  { render :xml => @car_information, :status => :created, :location => @car_information }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_informations/1
  # PUT /car_informations/1.xml
  def update
    @car_information = CarInformation.find(params[:id])

    respond_to do |format|
      if @car_information.update_attributes(params[:car_information])
        format.html { redirect_to(@car_information, :notice => 'Car information was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_informations/1
  # DELETE /car_informations/1.xml
  def destroy
    @car_information = CarInformation.find(params[:id])
    @car_information.destroy

    respond_to do |format|
      format.html { redirect_to(car_informations_url) }
      format.xml  { head :ok }
    end
  end
end
