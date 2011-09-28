class MotoMileagesController < ApplicationController
  # GET /moto_mileages
  # GET /moto_mileages.xml
  def index
    @moto_mileages = MotoMileage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_mileages }
    end
  end

  # GET /moto_mileages/1
  # GET /moto_mileages/1.xml
  def show
    @moto_mileage = MotoMileage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_mileage }
    end
  end

  # GET /moto_mileages/new
  # GET /moto_mileages/new.xml
  def new
    @moto_mileage = MotoMileage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_mileage }
    end
  end

  # GET /moto_mileages/1/edit
  def edit
    @moto_mileage = MotoMileage.find(params[:id])
  end

  # POST /moto_mileages
  # POST /moto_mileages.xml
  def create
    @moto_mileage = MotoMileage.new(params[:moto_mileage])

    respond_to do |format|
      if @moto_mileage.save
        format.html { redirect_to(@moto_mileage, :notice => 'Moto mileage was successfully created.') }
        format.xml  { render :xml => @moto_mileage, :status => :created, :location => @moto_mileage }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_mileage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_mileages/1
  # PUT /moto_mileages/1.xml
  def update
    @moto_mileage = MotoMileage.find(params[:id])

    respond_to do |format|
      if @moto_mileage.update_attributes(params[:moto_mileage])
        format.html { redirect_to(@moto_mileage, :notice => 'Moto mileage was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_mileage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_mileages/1
  # DELETE /moto_mileages/1.xml
  def destroy
    @moto_mileage = MotoMileage.find(params[:id])
    @moto_mileage.destroy

    respond_to do |format|
      format.html { redirect_to(moto_mileages_url) }
      format.xml  { head :ok }
    end
  end
end
