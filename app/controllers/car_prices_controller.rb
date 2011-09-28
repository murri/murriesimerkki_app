class CarPricesController < ApplicationController
  # GET /car_prices
  # GET /car_prices.xml
  def index
    @car_prices = CarPrice.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_prices }
    end
  end

  # GET /car_prices/1
  # GET /car_prices/1.xml
  def show
    @car_price = CarPrice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_price }
    end
  end

  # GET /car_prices/new
  # GET /car_prices/new.xml
  def new
    @car_price = CarPrice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_price }
    end
  end

  # GET /car_prices/1/edit
  def edit
    @car_price = CarPrice.find(params[:id])
  end

  # POST /car_prices
  # POST /car_prices.xml
  def create
    @car_price = CarPrice.new(params[:car_price])

    respond_to do |format|
      if @car_price.save
        format.html { redirect_to(@car_price, :notice => 'Car price was successfully created.') }
        format.xml  { render :xml => @car_price, :status => :created, :location => @car_price }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_prices/1
  # PUT /car_prices/1.xml
  def update
    @car_price = CarPrice.find(params[:id])

    respond_to do |format|
      if @car_price.update_attributes(params[:car_price])
        format.html { redirect_to(@car_price, :notice => 'Car price was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_prices/1
  # DELETE /car_prices/1.xml
  def destroy
    @car_price = CarPrice.find(params[:id])
    @car_price.destroy

    respond_to do |format|
      format.html { redirect_to(car_prices_url) }
      format.xml  { head :ok }
    end
  end
end
