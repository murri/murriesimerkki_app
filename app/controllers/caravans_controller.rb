class CaravansController < ApplicationController
  # GET /caravans
  # GET /caravans.xml
  def index
    @caravans = Caravan.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravans }
    end
  end

  # GET /caravans/1
  # GET /caravans/1.xml
  def show
    @caravan = Caravan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan }
    end
  end

  # GET /caravans/new
  # GET /caravans/new.xml
  def new
    @caravan = Caravan.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan }
    end
  end

  # GET /caravans/1/edit
  def edit
    @caravan = Caravan.find(params[:id])
  end

  # POST /caravans
  # POST /caravans.xml
  def create
    @caravan = Caravan.new(params[:caravan])

    respond_to do |format|
      if @caravan.save
        format.html { redirect_to(@caravan, :notice => 'Caravan was successfully created.') }
        format.xml  { render :xml => @caravan, :status => :created, :location => @caravan }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravans/1
  # PUT /caravans/1.xml
  def update
    @caravan = Caravan.find(params[:id])

    respond_to do |format|
      if @caravan.update_attributes(params[:caravan])
        format.html { redirect_to(@caravan, :notice => 'Caravan was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravans/1
  # DELETE /caravans/1.xml
  def destroy
    @caravan = Caravan.find(params[:id])
    @caravan.destroy

    respond_to do |format|
      format.html { redirect_to(caravans_url) }
      format.xml  { head :ok }
    end
  end
end
