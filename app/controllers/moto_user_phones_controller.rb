class MotoUserPhonesController < ApplicationController
  # GET /moto_user_phones
  # GET /moto_user_phones.xml
  def index
    @moto_user_phones = MotoUserPhone.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_user_phones }
    end
  end

  # GET /moto_user_phones/1
  # GET /moto_user_phones/1.xml
  def show
    @moto_user_phone = MotoUserPhone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_user_phone }
    end
  end

  # GET /moto_user_phones/new
  # GET /moto_user_phones/new.xml
  def new
    @moto_user_phone = MotoUserPhone.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_user_phone }
    end
  end

  # GET /moto_user_phones/1/edit
  def edit
    @moto_user_phone = MotoUserPhone.find(params[:id])
  end

  # POST /moto_user_phones
  # POST /moto_user_phones.xml
  def create
    @moto_user_phone = MotoUserPhone.new(params[:moto_user_phone])

    respond_to do |format|
      if @moto_user_phone.save
        format.html { redirect_to(@moto_user_phone, :notice => 'Moto user phone was successfully created.') }
        format.xml  { render :xml => @moto_user_phone, :status => :created, :location => @moto_user_phone }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_user_phone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_user_phones/1
  # PUT /moto_user_phones/1.xml
  def update
    @moto_user_phone = MotoUserPhone.find(params[:id])

    respond_to do |format|
      if @moto_user_phone.update_attributes(params[:moto_user_phone])
        format.html { redirect_to(@moto_user_phone, :notice => 'Moto user phone was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_user_phone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_user_phones/1
  # DELETE /moto_user_phones/1.xml
  def destroy
    @moto_user_phone = MotoUserPhone.find(params[:id])
    @moto_user_phone.destroy

    respond_to do |format|
      format.html { redirect_to(moto_user_phones_url) }
      format.xml  { head :ok }
    end
  end
end
