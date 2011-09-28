class MotoFuelTypesController < ApplicationController
  # GET /moto_fuel_types
  # GET /moto_fuel_types.xml
  def index
    @moto_fuel_types = MotoFuelType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_fuel_types }
    end
  end

  # GET /moto_fuel_types/1
  # GET /moto_fuel_types/1.xml
  def show
    @moto_fuel_type = MotoFuelType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_fuel_type }
    end
  end

  # GET /moto_fuel_types/new
  # GET /moto_fuel_types/new.xml
  def new
    @moto_fuel_type = MotoFuelType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_fuel_type }
    end
  end

  # GET /moto_fuel_types/1/edit
  def edit
    @moto_fuel_type = MotoFuelType.find(params[:id])
  end

  # POST /moto_fuel_types
  # POST /moto_fuel_types.xml
  def create
    @moto_fuel_type = MotoFuelType.new(params[:moto_fuel_type])

    respond_to do |format|
      if @moto_fuel_type.save
        format.html { redirect_to(@moto_fuel_type, :notice => 'Moto fuel type was successfully created.') }
        format.xml  { render :xml => @moto_fuel_type, :status => :created, :location => @moto_fuel_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_fuel_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_fuel_types/1
  # PUT /moto_fuel_types/1.xml
  def update
    @moto_fuel_type = MotoFuelType.find(params[:id])

    respond_to do |format|
      if @moto_fuel_type.update_attributes(params[:moto_fuel_type])
        format.html { redirect_to(@moto_fuel_type, :notice => 'Moto fuel type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_fuel_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_fuel_types/1
  # DELETE /moto_fuel_types/1.xml
  def destroy
    @moto_fuel_type = MotoFuelType.find(params[:id])
    @moto_fuel_type.destroy

    respond_to do |format|
      format.html { redirect_to(moto_fuel_types_url) }
      format.xml  { head :ok }
    end
  end
end
