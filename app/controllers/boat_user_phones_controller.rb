class BoatUserPhonesController < ApplicationController
  # GET /boat_user_phones
  # GET /boat_user_phones.xml
  def index
    @boat_user_phones = BoatUserPhone.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_user_phones }
    end
  end

  # GET /boat_user_phones/1
  # GET /boat_user_phones/1.xml
  def show
    @boat_user_phone = BoatUserPhone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_user_phone }
    end
  end

  # GET /boat_user_phones/new
  # GET /boat_user_phones/new.xml
  def new
    @boat_user_phone = BoatUserPhone.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_user_phone }
    end
  end

  # GET /boat_user_phones/1/edit
  def edit
    @boat_user_phone = BoatUserPhone.find(params[:id])
  end

  # POST /boat_user_phones
  # POST /boat_user_phones.xml
  def create
    @boat_user_phone = BoatUserPhone.new(params[:boat_user_phone])

    respond_to do |format|
      if @boat_user_phone.save
        format.html { redirect_to(@boat_user_phone, :notice => 'Boat user phone was successfully created.') }
        format.xml  { render :xml => @boat_user_phone, :status => :created, :location => @boat_user_phone }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_user_phone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_user_phones/1
  # PUT /boat_user_phones/1.xml
  def update
    @boat_user_phone = BoatUserPhone.find(params[:id])

    respond_to do |format|
      if @boat_user_phone.update_attributes(params[:boat_user_phone])
        format.html { redirect_to(@boat_user_phone, :notice => 'Boat user phone was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_user_phone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_user_phones/1
  # DELETE /boat_user_phones/1.xml
  def destroy
    @boat_user_phone = BoatUserPhone.find(params[:id])
    @boat_user_phone.destroy

    respond_to do |format|
      format.html { redirect_to(boat_user_phones_url) }
      format.xml  { head :ok }
    end
  end
end
