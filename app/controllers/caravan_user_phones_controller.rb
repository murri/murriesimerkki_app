class CaravanUserPhonesController < ApplicationController
  # GET /caravan_user_phones
  # GET /caravan_user_phones.xml
  def index
    @caravan_user_phones = CaravanUserPhone.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravan_user_phones }
    end
  end

  # GET /caravan_user_phones/1
  # GET /caravan_user_phones/1.xml
  def show
    @caravan_user_phone = CaravanUserPhone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan_user_phone }
    end
  end

  # GET /caravan_user_phones/new
  # GET /caravan_user_phones/new.xml
  def new
    @caravan_user_phone = CaravanUserPhone.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan_user_phone }
    end
  end

  # GET /caravan_user_phones/1/edit
  def edit
    @caravan_user_phone = CaravanUserPhone.find(params[:id])
  end

  # POST /caravan_user_phones
  # POST /caravan_user_phones.xml
  def create
    @caravan_user_phone = CaravanUserPhone.new(params[:caravan_user_phone])

    respond_to do |format|
      if @caravan_user_phone.save
        format.html { redirect_to(@caravan_user_phone, :notice => 'Caravan user phone was successfully created.') }
        format.xml  { render :xml => @caravan_user_phone, :status => :created, :location => @caravan_user_phone }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan_user_phone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravan_user_phones/1
  # PUT /caravan_user_phones/1.xml
  def update
    @caravan_user_phone = CaravanUserPhone.find(params[:id])

    respond_to do |format|
      if @caravan_user_phone.update_attributes(params[:caravan_user_phone])
        format.html { redirect_to(@caravan_user_phone, :notice => 'Caravan user phone was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan_user_phone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravan_user_phones/1
  # DELETE /caravan_user_phones/1.xml
  def destroy
    @caravan_user_phone = CaravanUserPhone.find(params[:id])
    @caravan_user_phone.destroy

    respond_to do |format|
      format.html { redirect_to(caravan_user_phones_url) }
      format.xml  { head :ok }
    end
  end
end
