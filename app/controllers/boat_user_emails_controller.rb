class BoatUserEmailsController < ApplicationController
  # GET /boat_user_emails
  # GET /boat_user_emails.xml
  def index
    @boat_user_emails = BoatUserEmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_user_emails }
    end
  end

  # GET /boat_user_emails/1
  # GET /boat_user_emails/1.xml
  def show
    @boat_user_email = BoatUserEmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_user_email }
    end
  end

  # GET /boat_user_emails/new
  # GET /boat_user_emails/new.xml
  def new
    @boat_user_email = BoatUserEmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_user_email }
    end
  end

  # GET /boat_user_emails/1/edit
  def edit
    @boat_user_email = BoatUserEmail.find(params[:id])
  end

  # POST /boat_user_emails
  # POST /boat_user_emails.xml
  def create
    @boat_user_email = BoatUserEmail.new(params[:boat_user_email])

    respond_to do |format|
      if @boat_user_email.save
        format.html { redirect_to(@boat_user_email, :notice => 'Boat user email was successfully created.') }
        format.xml  { render :xml => @boat_user_email, :status => :created, :location => @boat_user_email }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_user_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_user_emails/1
  # PUT /boat_user_emails/1.xml
  def update
    @boat_user_email = BoatUserEmail.find(params[:id])

    respond_to do |format|
      if @boat_user_email.update_attributes(params[:boat_user_email])
        format.html { redirect_to(@boat_user_email, :notice => 'Boat user email was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_user_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_user_emails/1
  # DELETE /boat_user_emails/1.xml
  def destroy
    @boat_user_email = BoatUserEmail.find(params[:id])
    @boat_user_email.destroy

    respond_to do |format|
      format.html { redirect_to(boat_user_emails_url) }
      format.xml  { head :ok }
    end
  end
end
