class CarColorsController < ApplicationController
  # GET /car_colors
  # GET /car_colors.xml
  def index
    @car_colors = CarColor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_colors }
    end
  end

  # GET /car_colors/1
  # GET /car_colors/1.xml
  def show
    @car_color = CarColor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_color }
    end
  end

  # GET /car_colors/new
  # GET /car_colors/new.xml
  def new
    @car_color = CarColor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_color }
    end
  end

  # GET /car_colors/1/edit
  def edit
    @car_color = CarColor.find(params[:id])
  end

  # POST /car_colors
  # POST /car_colors.xml
  def create
    @car_color = CarColor.new(params[:car_color])

    respond_to do |format|
      if @car_color.save
        format.html { redirect_to(@car_color, :notice => 'Car color was successfully created.') }
        format.xml  { render :xml => @car_color, :status => :created, :location => @car_color }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_color.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_colors/1
  # PUT /car_colors/1.xml
  def update
    @car_color = CarColor.find(params[:id])

    respond_to do |format|
      if @car_color.update_attributes(params[:car_color])
        format.html { redirect_to(@car_color, :notice => 'Car color was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_color.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_colors/1
  # DELETE /car_colors/1.xml
  def destroy
    @car_color = CarColor.find(params[:id])
    @car_color.destroy

    respond_to do |format|
      format.html { redirect_to(car_colors_url) }
      format.xml  { head :ok }
    end
  end
end
