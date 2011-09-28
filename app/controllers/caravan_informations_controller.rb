class CaravanInformationsController < ApplicationController
  # GET /caravan_informations
  # GET /caravan_informations.xml
  def index
    @caravan_informations = CaravanInformation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravan_informations }
    end
  end

  # GET /caravan_informations/1
  # GET /caravan_informations/1.xml
  def show
    @caravan_information = CaravanInformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan_information }
    end
  end

  # GET /caravan_informations/new
  # GET /caravan_informations/new.xml
  def new
    @caravan_information = CaravanInformation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan_information }
    end
  end

  # GET /caravan_informations/1/edit
  def edit
    @caravan_information = CaravanInformation.find(params[:id])
  end

  # POST /caravan_informations
  # POST /caravan_informations.xml
  def create
    @caravan_information = CaravanInformation.new(params[:caravan_information])

    respond_to do |format|
      if @caravan_information.save
        format.html { redirect_to(@caravan_information, :notice => 'Caravan information was successfully created.') }
        format.xml  { render :xml => @caravan_information, :status => :created, :location => @caravan_information }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravan_informations/1
  # PUT /caravan_informations/1.xml
  def update
    @caravan_information = CaravanInformation.find(params[:id])

    respond_to do |format|
      if @caravan_information.update_attributes(params[:caravan_information])
        format.html { redirect_to(@caravan_information, :notice => 'Caravan information was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravan_informations/1
  # DELETE /caravan_informations/1.xml
  def destroy
    @caravan_information = CaravanInformation.find(params[:id])
    @caravan_information.destroy

    respond_to do |format|
      format.html { redirect_to(caravan_informations_url) }
      format.xml  { head :ok }
    end
  end
end
