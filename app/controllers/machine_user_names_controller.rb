class MachineUserNamesController < ApplicationController
  # GET /machine_user_names
  # GET /machine_user_names.xml
  def index
    @machine_user_names = MachineUserName.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_user_names }
    end
  end

  # GET /machine_user_names/1
  # GET /machine_user_names/1.xml
  def show
    @machine_user_name = MachineUserName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_user_name }
    end
  end

  # GET /machine_user_names/new
  # GET /machine_user_names/new.xml
  def new
    @machine_user_name = MachineUserName.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_user_name }
    end
  end

  # GET /machine_user_names/1/edit
  def edit
    @machine_user_name = MachineUserName.find(params[:id])
  end

  # POST /machine_user_names
  # POST /machine_user_names.xml
  def create
    @machine_user_name = MachineUserName.new(params[:machine_user_name])

    respond_to do |format|
      if @machine_user_name.save
        format.html { redirect_to(@machine_user_name, :notice => 'Machine user name was successfully created.') }
        format.xml  { render :xml => @machine_user_name, :status => :created, :location => @machine_user_name }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_user_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_user_names/1
  # PUT /machine_user_names/1.xml
  def update
    @machine_user_name = MachineUserName.find(params[:id])

    respond_to do |format|
      if @machine_user_name.update_attributes(params[:machine_user_name])
        format.html { redirect_to(@machine_user_name, :notice => 'Machine user name was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_user_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_user_names/1
  # DELETE /machine_user_names/1.xml
  def destroy
    @machine_user_name = MachineUserName.find(params[:id])
    @machine_user_name.destroy

    respond_to do |format|
      format.html { redirect_to(machine_user_names_url) }
      format.xml  { head :ok }
    end
  end
end
