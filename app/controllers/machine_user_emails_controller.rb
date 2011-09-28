class MachineUserEmailsController < ApplicationController
  # GET /machine_user_emails
  # GET /machine_user_emails.xml
  def index
    @machine_user_emails = MachineUserEmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_user_emails }
    end
  end

  # GET /machine_user_emails/1
  # GET /machine_user_emails/1.xml
  def show
    @machine_user_email = MachineUserEmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_user_email }
    end
  end

  # GET /machine_user_emails/new
  # GET /machine_user_emails/new.xml
  def new
    @machine_user_email = MachineUserEmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_user_email }
    end
  end

  # GET /machine_user_emails/1/edit
  def edit
    @machine_user_email = MachineUserEmail.find(params[:id])
  end

  # POST /machine_user_emails
  # POST /machine_user_emails.xml
  def create
    @machine_user_email = MachineUserEmail.new(params[:machine_user_email])

    respond_to do |format|
      if @machine_user_email.save
        format.html { redirect_to(@machine_user_email, :notice => 'Machine user email was successfully created.') }
        format.xml  { render :xml => @machine_user_email, :status => :created, :location => @machine_user_email }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_user_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_user_emails/1
  # PUT /machine_user_emails/1.xml
  def update
    @machine_user_email = MachineUserEmail.find(params[:id])

    respond_to do |format|
      if @machine_user_email.update_attributes(params[:machine_user_email])
        format.html { redirect_to(@machine_user_email, :notice => 'Machine user email was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_user_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_user_emails/1
  # DELETE /machine_user_emails/1.xml
  def destroy
    @machine_user_email = MachineUserEmail.find(params[:id])
    @machine_user_email.destroy

    respond_to do |format|
      format.html { redirect_to(machine_user_emails_url) }
      format.xml  { head :ok }
    end
  end
end
