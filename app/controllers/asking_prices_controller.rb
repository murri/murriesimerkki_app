class AskingPricesController < ApplicationController
  # GET /asking_prices
  # GET /asking_prices.xml
  def index
    @asking_prices = AskingPrice.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @asking_prices }
    end
  end

  # GET /asking_prices/1
  # GET /asking_prices/1.xml
  def show
    @asking_price = AskingPrice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @asking_price }
    end
  end

  # GET /asking_prices/new
  # GET /asking_prices/new.xml
  def new
    @asking_price = AskingPrice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @asking_price }
    end
  end

  # GET /asking_prices/1/edit
  def edit
    @asking_price = AskingPrice.find(params[:id])
  end

  # POST /asking_prices
  # POST /asking_prices.xml
  def create
    @asking_price = AskingPrice.new(params[:asking_price])

    respond_to do |format|
      if @asking_price.save
        format.html { redirect_to(@asking_price, :notice => 'Asking price was successfully created.') }
        format.xml  { render :xml => @asking_price, :status => :created, :location => @asking_price }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @asking_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /asking_prices/1
  # PUT /asking_prices/1.xml
  def update
    @asking_price = AskingPrice.find(params[:id])

    respond_to do |format|
      if @asking_price.update_attributes(params[:asking_price])
        format.html { redirect_to(@asking_price, :notice => 'Asking price was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @asking_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /asking_prices/1
  # DELETE /asking_prices/1.xml
  def destroy
    @asking_price = AskingPrice.find(params[:id])
    @asking_price.destroy

    respond_to do |format|
      format.html { redirect_to(asking_prices_url) }
      format.xml  { head :ok }
    end
  end
end
