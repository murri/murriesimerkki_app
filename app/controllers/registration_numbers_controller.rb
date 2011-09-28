class RegistrationNumbersController < ApplicationController
  # GET /registration_numbers
  # GET /registration_numbers.xml
  def index
    @registration_numbers = RegistrationNumber.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @registration_numbers }
    end
  end

  # GET /registration_numbers/1
  # GET /registration_numbers/1.xml
  def show
    @registration_number = RegistrationNumber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @registration_number }
    end
  end

  # GET /registration_numbers/new
  # GET /registration_numbers/new.xml
  def new
    @registration_number = RegistrationNumber.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @registration_number }
    end
  end

  # GET /registration_numbers/1/edit
  def edit
    @registration_number = RegistrationNumber.find(params[:id])
  end

  # POST /registration_numbers
  # POST /registration_numbers.xml
  def create
    @registration_number = RegistrationNumber.new(params[:registration_number])

    respond_to do |format|
      if @registration_number.save
        format.html { redirect_to(@registration_number, :notice => 'Registration number was successfully created.') }
        format.xml  { render :xml => @registration_number, :status => :created, :location => @registration_number }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @registration_number.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /registration_numbers/1
  # PUT /registration_numbers/1.xml
  def update
    @registration_number = RegistrationNumber.find(params[:id])

    respond_to do |format|
      if @registration_number.update_attributes(params[:registration_number])
        format.html { redirect_to(@registration_number, :notice => 'Registration number was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @registration_number.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /registration_numbers/1
  # DELETE /registration_numbers/1.xml
  def destroy
    @registration_number = RegistrationNumber.find(params[:id])
    @registration_number.destroy

    respond_to do |format|
      format.html { redirect_to(registration_numbers_url) }
      format.xml  { head :ok }
    end
  end
end
