class MotoMakesController < ApplicationController
  # GET /moto_makes
  # GET /moto_makes.xml
  def index
    @moto_makes = MotoMake.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_makes }
    end
  end

  # GET /moto_makes/1
  # GET /moto_makes/1.xml
  def show
    @moto_make = MotoMake.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_make }
    end
  end

  # GET /moto_makes/new
  # GET /moto_makes/new.xml
  def new
    @moto_make = MotoMake.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_make }
    end
  end

  # GET /moto_makes/1/edit
  def edit
    @moto_make = MotoMake.find(params[:id])
  end

  # POST /moto_makes
  # POST /moto_makes.xml
  def create
    @moto_make = MotoMake.new(params[:moto_make])

    respond_to do |format|
      if @moto_make.save
        format.html { redirect_to(@moto_make, :notice => 'Moto make was successfully created.') }
        format.xml  { render :xml => @moto_make, :status => :created, :location => @moto_make }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_make.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_makes/1
  # PUT /moto_makes/1.xml
  def update
    @moto_make = MotoMake.find(params[:id])

    respond_to do |format|
      if @moto_make.update_attributes(params[:moto_make])
        format.html { redirect_to(@moto_make, :notice => 'Moto make was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_make.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_makes/1
  # DELETE /moto_makes/1.xml
  def destroy
    @moto_make = MotoMake.find(params[:id])
    @moto_make.destroy

    respond_to do |format|
      format.html { redirect_to(moto_makes_url) }
      format.xml  { head :ok }
    end
  end
end
