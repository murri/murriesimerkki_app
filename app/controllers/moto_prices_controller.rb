class MotoPricesController < ApplicationController
  # GET /moto_prices
  # GET /moto_prices.xml
  def index
    @moto_prices = MotoPrice.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_prices }
    end
  end

  # GET /moto_prices/1
  # GET /moto_prices/1.xml
  def show
    @moto_price = MotoPrice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_price }
    end
  end

  # GET /moto_prices/new
  # GET /moto_prices/new.xml
  def new
    @moto_price = MotoPrice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_price }
    end
  end

  # GET /moto_prices/1/edit
  def edit
    @moto_price = MotoPrice.find(params[:id])
  end

  # POST /moto_prices
  # POST /moto_prices.xml
  def create
    @moto_price = MotoPrice.new(params[:moto_price])

    respond_to do |format|
      if @moto_price.save
        format.html { redirect_to(@moto_price, :notice => 'Moto price was successfully created.') }
        format.xml  { render :xml => @moto_price, :status => :created, :location => @moto_price }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_prices/1
  # PUT /moto_prices/1.xml
  def update
    @moto_price = MotoPrice.find(params[:id])

    respond_to do |format|
      if @moto_price.update_attributes(params[:moto_price])
        format.html { redirect_to(@moto_price, :notice => 'Moto price was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_prices/1
  # DELETE /moto_prices/1.xml
  def destroy
    @moto_price = MotoPrice.find(params[:id])
    @moto_price.destroy

    respond_to do |format|
      format.html { redirect_to(moto_prices_url) }
      format.xml  { head :ok }
    end
  end
end
