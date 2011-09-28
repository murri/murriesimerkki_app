class CarTotalOwnersController < ApplicationController
  # GET /car_total_owners
  # GET /car_total_owners.xml
  def index
    @car_total_owners = CarTotalOwner.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_total_owners }
    end
  end

  # GET /car_total_owners/1
  # GET /car_total_owners/1.xml
  def show
    @car_total_owner = CarTotalOwner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_total_owner }
    end
  end

  # GET /car_total_owners/new
  # GET /car_total_owners/new.xml
  def new
    @car_total_owner = CarTotalOwner.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_total_owner }
    end
  end

  # GET /car_total_owners/1/edit
  def edit
    @car_total_owner = CarTotalOwner.find(params[:id])
  end

  # POST /car_total_owners
  # POST /car_total_owners.xml
  def create
    @car_total_owner = CarTotalOwner.new(params[:car_total_owner])

    respond_to do |format|
      if @car_total_owner.save
        format.html { redirect_to(@car_total_owner, :notice => 'Car total owner was successfully created.') }
        format.xml  { render :xml => @car_total_owner, :status => :created, :location => @car_total_owner }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_total_owner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_total_owners/1
  # PUT /car_total_owners/1.xml
  def update
    @car_total_owner = CarTotalOwner.find(params[:id])

    respond_to do |format|
      if @car_total_owner.update_attributes(params[:car_total_owner])
        format.html { redirect_to(@car_total_owner, :notice => 'Car total owner was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_total_owner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_total_owners/1
  # DELETE /car_total_owners/1.xml
  def destroy
    @car_total_owner = CarTotalOwner.find(params[:id])
    @car_total_owner.destroy

    respond_to do |format|
      format.html { redirect_to(car_total_owners_url) }
      format.xml  { head :ok }
    end
  end
end
