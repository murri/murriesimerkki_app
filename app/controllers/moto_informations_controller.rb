class MotoInformationsController < ApplicationController
  # GET /moto_informations
  # GET /moto_informations.xml
  def index
    @moto_informations = MotoInformation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_informations }
    end
  end

  # GET /moto_informations/1
  # GET /moto_informations/1.xml
  def show
    @moto_information = MotoInformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_information }
    end
  end

  # GET /moto_informations/new
  # GET /moto_informations/new.xml
  def new
    @moto_information = MotoInformation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_information }
    end
  end

  # GET /moto_informations/1/edit
  def edit
    @moto_information = MotoInformation.find(params[:id])
  end

  # POST /moto_informations
  # POST /moto_informations.xml
  def create
    @moto_information = MotoInformation.new(params[:moto_information])

    respond_to do |format|
      if @moto_information.save
        format.html { redirect_to(@moto_information, :notice => 'Moto information was successfully created.') }
        format.xml  { render :xml => @moto_information, :status => :created, :location => @moto_information }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_informations/1
  # PUT /moto_informations/1.xml
  def update
    @moto_information = MotoInformation.find(params[:id])

    respond_to do |format|
      if @moto_information.update_attributes(params[:moto_information])
        format.html { redirect_to(@moto_information, :notice => 'Moto information was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_informations/1
  # DELETE /moto_informations/1.xml
  def destroy
    @moto_information = MotoInformation.find(params[:id])
    @moto_information.destroy

    respond_to do |format|
      format.html { redirect_to(moto_informations_url) }
      format.xml  { head :ok }
    end
  end
end
