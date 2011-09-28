class CarSubTypesController < ApplicationController
  # GET /car_sub_types
  # GET /car_sub_types.xml
  def index
    @car_sub_types = CarSubType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_sub_types }
    end
  end

  # GET /car_sub_types/1
  # GET /car_sub_types/1.xml
  def show
    @car_sub_type = CarSubType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_sub_type }
    end
  end

  # GET /car_sub_types/new
  # GET /car_sub_types/new.xml
  def new
    @car_sub_type = CarSubType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_sub_type }
    end
  end

  # GET /car_sub_types/1/edit
  def edit
    @car_sub_type = CarSubType.find(params[:id])
  end

  # POST /car_sub_types
  # POST /car_sub_types.xml
  def create
    @car_sub_type = CarSubType.new(params[:car_sub_type])

    respond_to do |format|
      if @car_sub_type.save
        format.html { redirect_to(@car_sub_type, :notice => 'Car sub type was successfully created.') }
        format.xml  { render :xml => @car_sub_type, :status => :created, :location => @car_sub_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_sub_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_sub_types/1
  # PUT /car_sub_types/1.xml
  def update
    @car_sub_type = CarSubType.find(params[:id])

    respond_to do |format|
      if @car_sub_type.update_attributes(params[:car_sub_type])
        format.html { redirect_to(@car_sub_type, :notice => 'Car sub type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_sub_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_sub_types/1
  # DELETE /car_sub_types/1.xml
  def destroy
    @car_sub_type = CarSubType.find(params[:id])
    @car_sub_type.destroy

    respond_to do |format|
      format.html { redirect_to(car_sub_types_url) }
      format.xml  { head :ok }
    end
  end
end
