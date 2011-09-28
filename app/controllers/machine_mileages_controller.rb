class MachineMileagesController < ApplicationController
  # GET /machine_mileages
  # GET /machine_mileages.xml
  def index
    @machine_mileages = MachineMileage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_mileages }
    end
  end

  # GET /machine_mileages/1
  # GET /machine_mileages/1.xml
  def show
    @machine_mileage = MachineMileage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_mileage }
    end
  end

  # GET /machine_mileages/new
  # GET /machine_mileages/new.xml
  def new
    @machine_mileage = MachineMileage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_mileage }
    end
  end

  # GET /machine_mileages/1/edit
  def edit
    @machine_mileage = MachineMileage.find(params[:id])
  end

  # POST /machine_mileages
  # POST /machine_mileages.xml
  def create
    @machine_mileage = MachineMileage.new(params[:machine_mileage])

    respond_to do |format|
      if @machine_mileage.save
        format.html { redirect_to(@machine_mileage, :notice => 'Machine mileage was successfully created.') }
        format.xml  { render :xml => @machine_mileage, :status => :created, :location => @machine_mileage }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_mileage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_mileages/1
  # PUT /machine_mileages/1.xml
  def update
    @machine_mileage = MachineMileage.find(params[:id])

    respond_to do |format|
      if @machine_mileage.update_attributes(params[:machine_mileage])
        format.html { redirect_to(@machine_mileage, :notice => 'Machine mileage was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_mileage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_mileages/1
  # DELETE /machine_mileages/1.xml
  def destroy
    @machine_mileage = MachineMileage.find(params[:id])
    @machine_mileage.destroy

    respond_to do |format|
      format.html { redirect_to(machine_mileages_url) }
      format.xml  { head :ok }
    end
  end
end
