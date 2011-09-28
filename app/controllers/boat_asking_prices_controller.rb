class BoatAskingPricesController < ApplicationController
  # GET /boat_asking_prices
  # GET /boat_asking_prices.xml
  def index
    @boat_asking_prices = BoatAskingPrice.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_asking_prices }
    end
  end

  # GET /boat_asking_prices/1
  # GET /boat_asking_prices/1.xml
  def show
    @boat_asking_price = BoatAskingPrice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_asking_price }
    end
  end

  # GET /boat_asking_prices/new
  # GET /boat_asking_prices/new.xml
  def new
    @boat_asking_price = BoatAskingPrice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_asking_price }
    end
  end

  # GET /boat_asking_prices/1/edit
  def edit
    @boat_asking_price = BoatAskingPrice.find(params[:id])
  end

  # POST /boat_asking_prices
  # POST /boat_asking_prices.xml
  def create
    @boat_asking_price = BoatAskingPrice.new(params[:boat_asking_price])

    respond_to do |format|
      if @boat_asking_price.save
        format.html { redirect_to(@boat_asking_price, :notice => 'Boat asking price was successfully created.') }
        format.xml  { render :xml => @boat_asking_price, :status => :created, :location => @boat_asking_price }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_asking_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_asking_prices/1
  # PUT /boat_asking_prices/1.xml
  def update
    @boat_asking_price = BoatAskingPrice.find(params[:id])

    respond_to do |format|
      if @boat_asking_price.update_attributes(params[:boat_asking_price])
        format.html { redirect_to(@boat_asking_price, :notice => 'Boat asking price was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_asking_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_asking_prices/1
  # DELETE /boat_asking_prices/1.xml
  def destroy
    @boat_asking_price = BoatAskingPrice.find(params[:id])
    @boat_asking_price.destroy

    respond_to do |format|
      format.html { redirect_to(boat_asking_prices_url) }
      format.xml  { head :ok }
    end
  end
end
