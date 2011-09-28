class CaravanLenghtsController < ApplicationController
  # GET /caravan_lenghts
  # GET /caravan_lenghts.xml
  def index
    @caravan_lenghts = CaravanLenght.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravan_lenghts }
    end
  end

  # GET /caravan_lenghts/1
  # GET /caravan_lenghts/1.xml
  def show
    @caravan_lenght = CaravanLenght.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan_lenght }
    end
  end

  # GET /caravan_lenghts/new
  # GET /caravan_lenghts/new.xml
  def new
    @caravan_lenght = CaravanLenght.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan_lenght }
    end
  end

  # GET /caravan_lenghts/1/edit
  def edit
    @caravan_lenght = CaravanLenght.find(params[:id])
  end

  # POST /caravan_lenghts
  # POST /caravan_lenghts.xml
  def create
    @caravan_lenght = CaravanLenght.new(params[:caravan_lenght])

    respond_to do |format|
      if @caravan_lenght.save
        format.html { redirect_to(@caravan_lenght, :notice => 'Caravan lenght was successfully created.') }
        format.xml  { render :xml => @caravan_lenght, :status => :created, :location => @caravan_lenght }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan_lenght.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravan_lenghts/1
  # PUT /caravan_lenghts/1.xml
  def update
    @caravan_lenght = CaravanLenght.find(params[:id])

    respond_to do |format|
      if @caravan_lenght.update_attributes(params[:caravan_lenght])
        format.html { redirect_to(@caravan_lenght, :notice => 'Caravan lenght was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan_lenght.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravan_lenghts/1
  # DELETE /caravan_lenghts/1.xml
  def destroy
    @caravan_lenght = CaravanLenght.find(params[:id])
    @caravan_lenght.destroy

    respond_to do |format|
      format.html { redirect_to(caravan_lenghts_url) }
      format.xml  { head :ok }
    end
  end
end
