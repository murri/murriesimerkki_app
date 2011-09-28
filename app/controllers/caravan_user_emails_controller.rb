class CaravanUserEmailsController < ApplicationController
  # GET /caravan_user_emails
  # GET /caravan_user_emails.xml
  def index
    @caravan_user_emails = CaravanUserEmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravan_user_emails }
    end
  end

  # GET /caravan_user_emails/1
  # GET /caravan_user_emails/1.xml
  def show
    @caravan_user_email = CaravanUserEmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan_user_email }
    end
  end

  # GET /caravan_user_emails/new
  # GET /caravan_user_emails/new.xml
  def new
    @caravan_user_email = CaravanUserEmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan_user_email }
    end
  end

  # GET /caravan_user_emails/1/edit
  def edit
    @caravan_user_email = CaravanUserEmail.find(params[:id])
  end

  # POST /caravan_user_emails
  # POST /caravan_user_emails.xml
  def create
    @caravan_user_email = CaravanUserEmail.new(params[:caravan_user_email])

    respond_to do |format|
      if @caravan_user_email.save
        format.html { redirect_to(@caravan_user_email, :notice => 'Caravan user email was successfully created.') }
        format.xml  { render :xml => @caravan_user_email, :status => :created, :location => @caravan_user_email }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan_user_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravan_user_emails/1
  # PUT /caravan_user_emails/1.xml
  def update
    @caravan_user_email = CaravanUserEmail.find(params[:id])

    respond_to do |format|
      if @caravan_user_email.update_attributes(params[:caravan_user_email])
        format.html { redirect_to(@caravan_user_email, :notice => 'Caravan user email was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan_user_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravan_user_emails/1
  # DELETE /caravan_user_emails/1.xml
  def destroy
    @caravan_user_email = CaravanUserEmail.find(params[:id])
    @caravan_user_email.destroy

    respond_to do |format|
      format.html { redirect_to(caravan_user_emails_url) }
      format.xml  { head :ok }
    end
  end
end
