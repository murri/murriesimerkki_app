class CarColorTypesController < ApplicationController
  # GET /car_color_types
  # GET /car_color_types.xml
  def index
    @car_color_types = CarColorType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_color_types }
    end
  end

  # GET /car_color_types/1
  # GET /car_color_types/1.xml
  def show
    @car_color_type = CarColorType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_color_type }
    end
  end

  # GET /car_color_types/new
  # GET /car_color_types/new.xml
  def new
    @car_color_type = CarColorType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_color_type }
    end
  end

  # GET /car_color_types/1/edit
  def edit
    @car_color_type = CarColorType.find(params[:id])
  end

  # POST /car_color_types
  # POST /car_color_types.xml
  def create
    @car_color_type = CarColorType.new(params[:car_color_type])

    respond_to do |format|
      if @car_color_type.save
        format.html { redirect_to(@car_color_type, :notice => 'Car color type was successfully created.') }
        format.xml  { render :xml => @car_color_type, :status => :created, :location => @car_color_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_color_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_color_types/1
  # PUT /car_color_types/1.xml
  def update
    @car_color_type = CarColorType.find(params[:id])

    respond_to do |format|
      if @car_color_type.update_attributes(params[:car_color_type])
        format.html { redirect_to(@car_color_type, :notice => 'Car color type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_color_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_color_types/1
  # DELETE /car_color_types/1.xml
  def destroy
    @car_color_type = CarColorType.find(params[:id])
    @car_color_type.destroy

    respond_to do |format|
      format.html { redirect_to(car_color_types_url) }
      format.xml  { head :ok }
    end
  end
end
