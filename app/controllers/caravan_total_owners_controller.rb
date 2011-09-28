class CaravanTotalOwnersController < ApplicationController
  # GET /caravan_total_owners
  # GET /caravan_total_owners.xml
  def index
    @caravan_total_owners = CaravanTotalOwner.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravan_total_owners }
    end
  end

  # GET /caravan_total_owners/1
  # GET /caravan_total_owners/1.xml
  def show
    @caravan_total_owner = CaravanTotalOwner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan_total_owner }
    end
  end

  # GET /caravan_total_owners/new
  # GET /caravan_total_owners/new.xml
  def new
    @caravan_total_owner = CaravanTotalOwner.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan_total_owner }
    end
  end

  # GET /caravan_total_owners/1/edit
  def edit
    @caravan_total_owner = CaravanTotalOwner.find(params[:id])
  end

  # POST /caravan_total_owners
  # POST /caravan_total_owners.xml
  def create
    @caravan_total_owner = CaravanTotalOwner.new(params[:caravan_total_owner])

    respond_to do |format|
      if @caravan_total_owner.save
        format.html { redirect_to(@caravan_total_owner, :notice => 'Caravan total owner was successfully created.') }
        format.xml  { render :xml => @caravan_total_owner, :status => :created, :location => @caravan_total_owner }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan_total_owner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravan_total_owners/1
  # PUT /caravan_total_owners/1.xml
  def update
    @caravan_total_owner = CaravanTotalOwner.find(params[:id])

    respond_to do |format|
      if @caravan_total_owner.update_attributes(params[:caravan_total_owner])
        format.html { redirect_to(@caravan_total_owner, :notice => 'Caravan total owner was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan_total_owner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravan_total_owners/1
  # DELETE /caravan_total_owners/1.xml
  def destroy
    @caravan_total_owner = CaravanTotalOwner.find(params[:id])
    @caravan_total_owner.destroy

    respond_to do |format|
      format.html { redirect_to(caravan_total_owners_url) }
      format.xml  { head :ok }
    end
  end
end
