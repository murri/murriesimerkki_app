class MotoUserEmailsController < ApplicationController
  # GET /moto_user_emails
  # GET /moto_user_emails.xml
  def index
    @moto_user_emails = MotoUserEmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_user_emails }
    end
  end

  # GET /moto_user_emails/1
  # GET /moto_user_emails/1.xml
  def show
    @moto_user_email = MotoUserEmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_user_email }
    end
  end

  # GET /moto_user_emails/new
  # GET /moto_user_emails/new.xml
  def new
    @moto_user_email = MotoUserEmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_user_email }
    end
  end

  # GET /moto_user_emails/1/edit
  def edit
    @moto_user_email = MotoUserEmail.find(params[:id])
  end

  # POST /moto_user_emails
  # POST /moto_user_emails.xml
  def create
    @moto_user_email = MotoUserEmail.new(params[:moto_user_email])

    respond_to do |format|
      if @moto_user_email.save
        format.html { redirect_to(@moto_user_email, :notice => 'Moto user email was successfully created.') }
        format.xml  { render :xml => @moto_user_email, :status => :created, :location => @moto_user_email }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_user_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_user_emails/1
  # PUT /moto_user_emails/1.xml
  def update
    @moto_user_email = MotoUserEmail.find(params[:id])

    respond_to do |format|
      if @moto_user_email.update_attributes(params[:moto_user_email])
        format.html { redirect_to(@moto_user_email, :notice => 'Moto user email was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_user_email.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_user_emails/1
  # DELETE /moto_user_emails/1.xml
  def destroy
    @moto_user_email = MotoUserEmail.find(params[:id])
    @moto_user_email.destroy

    respond_to do |format|
      format.html { redirect_to(moto_user_emails_url) }
      format.xml  { head :ok }
    end
  end
end
