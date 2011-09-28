class MachineUserPhonesController < ApplicationController
  # GET /machine_user_phones
  # GET /machine_user_phones.xml
  def index
    @machine_user_phones = MachineUserPhone.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_user_phones }
    end
  end

  # GET /machine_user_phones/1
  # GET /machine_user_phones/1.xml
  def show
    @machine_user_phone = MachineUserPhone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_user_phone }
    end
  end

  # GET /machine_user_phones/new
  # GET /machine_user_phones/new.xml
  def new
    @machine_user_phone = MachineUserPhone.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_user_phone }
    end
  end

  # GET /machine_user_phones/1/edit
  def edit
    @machine_user_phone = MachineUserPhone.find(params[:id])
  end

  # POST /machine_user_phones
  # POST /machine_user_phones.xml
  def create
    @machine_user_phone = MachineUserPhone.new(params[:machine_user_phone])

    respond_to do |format|
      if @machine_user_phone.save
        format.html { redirect_to(@machine_user_phone, :notice => 'Machine user phone was successfully created.') }
        format.xml  { render :xml => @machine_user_phone, :status => :created, :location => @machine_user_phone }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_user_phone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_user_phones/1
  # PUT /machine_user_phones/1.xml
  def update
    @machine_user_phone = MachineUserPhone.find(params[:id])

    respond_to do |format|
      if @machine_user_phone.update_attributes(params[:machine_user_phone])
        format.html { redirect_to(@machine_user_phone, :notice => 'Machine user phone was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_user_phone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_user_phones/1
  # DELETE /machine_user_phones/1.xml
  def destroy
    @machine_user_phone = MachineUserPhone.find(params[:id])
    @machine_user_phone.destroy

    respond_to do |format|
      format.html { redirect_to(machine_user_phones_url) }
      format.xml  { head :ok }
    end
  end
end
