class MotoUserNamesController < ApplicationController
  # GET /moto_user_names
  # GET /moto_user_names.xml
  def index
    @moto_user_names = MotoUserName.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_user_names }
    end
  end

  # GET /moto_user_names/1
  # GET /moto_user_names/1.xml
  def show
    @moto_user_name = MotoUserName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_user_name }
    end
  end

  # GET /moto_user_names/new
  # GET /moto_user_names/new.xml
  def new
    @moto_user_name = MotoUserName.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_user_name }
    end
  end

  # GET /moto_user_names/1/edit
  def edit
    @moto_user_name = MotoUserName.find(params[:id])
  end

  # POST /moto_user_names
  # POST /moto_user_names.xml
  def create
    @moto_user_name = MotoUserName.new(params[:moto_user_name])

    respond_to do |format|
      if @moto_user_name.save
        format.html { redirect_to(@moto_user_name, :notice => 'Moto user name was successfully created.') }
        format.xml  { render :xml => @moto_user_name, :status => :created, :location => @moto_user_name }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_user_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_user_names/1
  # PUT /moto_user_names/1.xml
  def update
    @moto_user_name = MotoUserName.find(params[:id])

    respond_to do |format|
      if @moto_user_name.update_attributes(params[:moto_user_name])
        format.html { redirect_to(@moto_user_name, :notice => 'Moto user name was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_user_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_user_names/1
  # DELETE /moto_user_names/1.xml
  def destroy
    @moto_user_name = MotoUserName.find(params[:id])
    @moto_user_name.destroy

    respond_to do |format|
      format.html { redirect_to(moto_user_names_url) }
      format.xml  { head :ok }
    end
  end
end
