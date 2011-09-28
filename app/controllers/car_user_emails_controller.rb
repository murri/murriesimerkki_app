class CarUserEmailsController < ApplicationController
  # GET /car_user_emails
  # GET /car_user_emails.xml
  def index
    @car_user_emails = CarUserEmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_user_emails }
    end
  end

  # GET /car_user_emails/1
  # GET /car_user_emails/1.xml
  def show
    @car_user_email = CarUserEmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_user_email }
    end
  end

  # GET /car_user_emails/new
  # GET /car_user_emails/new.xml
  def new
    @car_user_email = CarUserEmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_user_email }
    end
  end

  # GET /car_user_emails/1/edit
  def edit
    @car_user_email = CarUserEmail.find(params[:id])
  end

  # POST /car_user_emails
  # POST /car_user_emails.xml
  def create
    @car_user_email = CarUserEmail.new(params[:car_user_email])

    respond_to do |format|
      if @car_user_email.save
        format.html { redirect_to(@car_user_email, :notice => 'Car user email was successfully created.') }
        format.xml  { render :xml => @car_user_email, :status => :created, :location => @car_user_email }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_user_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_user_emails/1
  # PUT /car_user_emails/1.xml
  def update
    @car_user_email = CarUserEmail.find(params[:id])

    respond_to do |format|
      if @car_user_email.update_attributes(params[:car_user_email])
        format.html { redirect_to(@car_user_email, :notice => 'Car user email was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_user_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_user_emails/1
  # DELETE /car_user_emails/1.xml
  def destroy
    @car_user_email = CarUserEmail.find(params[:id])
    @car_user_email.destroy

    respond_to do |format|
      format.html { redirect_to(car_user_emails_url) }
      format.xml  { head :ok }
    end
  end
end
