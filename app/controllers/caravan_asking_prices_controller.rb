class CaravanAskingPricesController < ApplicationController
  # GET /caravan_asking_prices
  # GET /caravan_asking_prices.xml
  def index
    @caravan_asking_prices = CaravanAskingPrice.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravan_asking_prices }
    end
  end

  # GET /caravan_asking_prices/1
  # GET /caravan_asking_prices/1.xml
  def show
    @caravan_asking_price = CaravanAskingPrice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan_asking_price }
    end
  end

  # GET /caravan_asking_prices/new
  # GET /caravan_asking_prices/new.xml
  def new
    @caravan_asking_price = CaravanAskingPrice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan_asking_price }
    end
  end

  # GET /caravan_asking_prices/1/edit
  def edit
    @caravan_asking_price = CaravanAskingPrice.find(params[:id])
  end

  # POST /caravan_asking_prices
  # POST /caravan_asking_prices.xml
  def create
    @caravan_asking_price = CaravanAskingPrice.new(params[:caravan_asking_price])

    respond_to do |format|
      if @caravan_asking_price.save
        format.html { redirect_to(@caravan_asking_price, :notice => 'Caravan asking price was successfully created.') }
        format.xml  { render :xml => @caravan_asking_price, :status => :created, :location => @caravan_asking_price }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan_asking_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravan_asking_prices/1
  # PUT /caravan_asking_prices/1.xml
  def update
    @caravan_asking_price = CaravanAskingPrice.find(params[:id])

    respond_to do |format|
      if @caravan_asking_price.update_attributes(params[:caravan_asking_price])
        format.html { redirect_to(@caravan_asking_price, :notice => 'Caravan asking price was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan_asking_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravan_asking_prices/1
  # DELETE /caravan_asking_prices/1.xml
  def destroy
    @caravan_asking_price = CaravanAskingPrice.find(params[:id])
    @caravan_asking_price.destroy

    respond_to do |format|
      format.html { redirect_to(caravan_asking_prices_url) }
      format.xml  { head :ok }
    end
  end
end
