class CarDomicileTypesController < ApplicationController
  # GET /car_domicile_types
  # GET /car_domicile_types.xml
  def index
    @car_domicile_types = CarDomicileType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_domicile_types }
    end
  end

  # GET /car_domicile_types/1
  # GET /car_domicile_types/1.xml
  def show
    @car_domicile_type = CarDomicileType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_domicile_type }
    end
  end

  # GET /car_domicile_types/new
  # GET /car_domicile_types/new.xml
  def new
    @car_domicile_type = CarDomicileType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_domicile_type }
    end
  end

  # GET /car_domicile_types/1/edit
  def edit
    @car_domicile_type = CarDomicileType.find(params[:id])
  end

  # POST /car_domicile_types
  # POST /car_domicile_types.xml
  def create
    @car_domicile_type = CarDomicileType.new(params[:car_domicile_type])

    respond_to do |format|
      if @car_domicile_type.save
        format.html { redirect_to(@car_domicile_type, :notice => 'Car domicile type was successfully created.') }
        format.xml  { render :xml => @car_domicile_type, :status => :created, :location => @car_domicile_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_domicile_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_domicile_types/1
  # PUT /car_domicile_types/1.xml
  def update
    @car_domicile_type = CarDomicileType.find(params[:id])

    respond_to do |format|
      if @car_domicile_type.update_attributes(params[:car_domicile_type])
        format.html { redirect_to(@car_domicile_type, :notice => 'Car domicile type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_domicile_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_domicile_types/1
  # DELETE /car_domicile_types/1.xml
  def destroy
    @car_domicile_type = CarDomicileType.find(params[:id])
    @car_domicile_type.destroy

    respond_to do |format|
      format.html { redirect_to(car_domicile_types_url) }
      format.xml  { head :ok }
    end
  end
end
