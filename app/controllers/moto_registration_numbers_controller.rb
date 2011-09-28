class MotoRegistrationNumbersController < ApplicationController
  # GET /moto_registration_numbers
  # GET /moto_registration_numbers.xml
  def index
    @moto_registration_numbers = MotoRegistrationNumber.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_registration_numbers }
    end
  end

  # GET /moto_registration_numbers/1
  # GET /moto_registration_numbers/1.xml
  def show
    @moto_registration_number = MotoRegistrationNumber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_registration_number }
    end
  end

  # GET /moto_registration_numbers/new
  # GET /moto_registration_numbers/new.xml
  def new
    @moto_registration_number = MotoRegistrationNumber.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_registration_number }
    end
  end

  # GET /moto_registration_numbers/1/edit
  def edit
    @moto_registration_number = MotoRegistrationNumber.find(params[:id])
  end

  # POST /moto_registration_numbers
  # POST /moto_registration_numbers.xml
  def create
    @moto_registration_number = MotoRegistrationNumber.new(params[:moto_registration_number])

    respond_to do |format|
      if @moto_registration_number.save
        format.html { redirect_to(@moto_registration_number, :notice => 'Moto registration number was successfully created.') }
        format.xml  { render :xml => @moto_registration_number, :status => :created, :location => @moto_registration_number }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_registration_number.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_registration_numbers/1
  # PUT /moto_registration_numbers/1.xml
  def update
    @moto_registration_number = MotoRegistrationNumber.find(params[:id])

    respond_to do |format|
      if @moto_registration_number.update_attributes(params[:moto_registration_number])
        format.html { redirect_to(@moto_registration_number, :notice => 'Moto registration number was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_registration_number.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_registration_numbers/1
  # DELETE /moto_registration_numbers/1.xml
  def destroy
    @moto_registration_number = MotoRegistrationNumber.find(params[:id])
    @moto_registration_number.destroy

    respond_to do |format|
      format.html { redirect_to(moto_registration_numbers_url) }
      format.xml  { head :ok }
    end
  end
end
