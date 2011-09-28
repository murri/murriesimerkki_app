class TotalOwnersController < ApplicationController
  # GET /total_owners
  # GET /total_owners.xml
  def index
    @total_owners = TotalOwner.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @total_owners }
    end
  end

  # GET /total_owners/1
  # GET /total_owners/1.xml
  def show
    @total_owner = TotalOwner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @total_owner }
    end
  end

  # GET /total_owners/new
  # GET /total_owners/new.xml
  def new
    @total_owner = TotalOwner.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @total_owner }
    end
  end

  # GET /total_owners/1/edit
  def edit
    @total_owner = TotalOwner.find(params[:id])
  end

  # POST /total_owners
  # POST /total_owners.xml
  def create
    @total_owner = TotalOwner.new(params[:total_owner])

    respond_to do |format|
      if @total_owner.save
        format.html { redirect_to(@total_owner, :notice => 'Total owner was successfully created.') }
        format.xml  { render :xml => @total_owner, :status => :created, :location => @total_owner }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @total_owner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /total_owners/1
  # PUT /total_owners/1.xml
  def update
    @total_owner = TotalOwner.find(params[:id])

    respond_to do |format|
      if @total_owner.update_attributes(params[:total_owner])
        format.html { redirect_to(@total_owner, :notice => 'Total owner was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @total_owner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /total_owners/1
  # DELETE /total_owners/1.xml
  def destroy
    @total_owner = TotalOwner.find(params[:id])
    @total_owner.destroy

    respond_to do |format|
      format.html { redirect_to(total_owners_url) }
      format.xml  { head :ok }
    end
  end
end
