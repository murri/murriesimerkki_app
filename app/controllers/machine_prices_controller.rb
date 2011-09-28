class MachinePricesController < ApplicationController
  # GET /machine_prices
  # GET /machine_prices.xml
  def index
    @machine_prices = MachinePrice.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_prices }
    end
  end

  # GET /machine_prices/1
  # GET /machine_prices/1.xml
  def show
    @machine_price = MachinePrice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_price }
    end
  end

  # GET /machine_prices/new
  # GET /machine_prices/new.xml
  def new
    @machine_price = MachinePrice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_price }
    end
  end

  # GET /machine_prices/1/edit
  def edit
    @machine_price = MachinePrice.find(params[:id])
  end

  # POST /machine_prices
  # POST /machine_prices.xml
  def create
    @machine_price = MachinePrice.new(params[:machine_price])

    respond_to do |format|
      if @machine_price.save
        format.html { redirect_to(@machine_price, :notice => 'Machine price was successfully created.') }
        format.xml  { render :xml => @machine_price, :status => :created, :location => @machine_price }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_prices/1
  # PUT /machine_prices/1.xml
  def update
    @machine_price = MachinePrice.find(params[:id])

    respond_to do |format|
      if @machine_price.update_attributes(params[:machine_price])
        format.html { redirect_to(@machine_price, :notice => 'Machine price was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_prices/1
  # DELETE /machine_prices/1.xml
  def destroy
    @machine_price = MachinePrice.find(params[:id])
    @machine_price.destroy

    respond_to do |format|
      format.html { redirect_to(machine_prices_url) }
      format.xml  { head :ok }
    end
  end
end
