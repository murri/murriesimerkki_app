class MachineTotalOwnersController < ApplicationController
  # GET /machine_total_owners
  # GET /machine_total_owners.xml
  def index
    @machine_total_owners = MachineTotalOwner.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_total_owners }
    end
  end

  # GET /machine_total_owners/1
  # GET /machine_total_owners/1.xml
  def show
    @machine_total_owner = MachineTotalOwner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_total_owner }
    end
  end

  # GET /machine_total_owners/new
  # GET /machine_total_owners/new.xml
  def new
    @machine_total_owner = MachineTotalOwner.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_total_owner }
    end
  end

  # GET /machine_total_owners/1/edit
  def edit
    @machine_total_owner = MachineTotalOwner.find(params[:id])
  end

  # POST /machine_total_owners
  # POST /machine_total_owners.xml
  def create
    @machine_total_owner = MachineTotalOwner.new(params[:machine_total_owner])

    respond_to do |format|
      if @machine_total_owner.save
        format.html { redirect_to(@machine_total_owner, :notice => 'Machine total owner was successfully created.') }
        format.xml  { render :xml => @machine_total_owner, :status => :created, :location => @machine_total_owner }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_total_owner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_total_owners/1
  # PUT /machine_total_owners/1.xml
  def update
    @machine_total_owner = MachineTotalOwner.find(params[:id])

    respond_to do |format|
      if @machine_total_owner.update_attributes(params[:machine_total_owner])
        format.html { redirect_to(@machine_total_owner, :notice => 'Machine total owner was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_total_owner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_total_owners/1
  # DELETE /machine_total_owners/1.xml
  def destroy
    @machine_total_owner = MachineTotalOwner.find(params[:id])
    @machine_total_owner.destroy

    respond_to do |format|
      format.html { redirect_to(machine_total_owners_url) }
      format.xml  { head :ok }
    end
  end
end
