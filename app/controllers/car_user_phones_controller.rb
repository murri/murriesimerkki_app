class CarUserPhonesController < ApplicationController
  # GET /car_user_phones
  # GET /car_user_phones.xml
  def index
    @car_user_phones = CarUserPhone.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_user_phones }
    end
  end

  # GET /car_user_phones/1
  # GET /car_user_phones/1.xml
  def show
    @car_user_phone = CarUserPhone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_user_phone }
    end
  end

  # GET /car_user_phones/new
  # GET /car_user_phones/new.xml
  def new
    @car_user_phone = CarUserPhone.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_user_phone }
    end
  end

  # GET /car_user_phones/1/edit
  def edit
    @car_user_phone = CarUserPhone.find(params[:id])
  end

  # POST /car_user_phones
  # POST /car_user_phones.xml
  def create
    @car_user_phone = CarUserPhone.new(params[:car_user_phone])

    respond_to do |format|
      if @car_user_phone.save
        format.html { redirect_to(@car_user_phone, :notice => 'Car user phone was successfully created.') }
        format.xml  { render :xml => @car_user_phone, :status => :created, :location => @car_user_phone }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_user_phone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_user_phones/1
  # PUT /car_user_phones/1.xml
  def update
    @car_user_phone = CarUserPhone.find(params[:id])

    respond_to do |format|
      if @car_user_phone.update_attributes(params[:car_user_phone])
        format.html { redirect_to(@car_user_phone, :notice => 'Car user phone was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_user_phone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_user_phones/1
  # DELETE /car_user_phones/1.xml
  def destroy
    @car_user_phone = CarUserPhone.find(params[:id])
    @car_user_phone.destroy

    respond_to do |format|
      format.html { redirect_to(car_user_phones_url) }
      format.xml  { head :ok }
    end
  end
end
