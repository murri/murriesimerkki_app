class CarUserNamesController < ApplicationController
  # GET /car_user_names
  # GET /car_user_names.xml
  def index
    @car_user_names = CarUserName.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_user_names }
    end
  end

  # GET /car_user_names/1
  # GET /car_user_names/1.xml
  def show
    @car_user_name = CarUserName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_user_name }
    end
  end

  # GET /car_user_names/new
  # GET /car_user_names/new.xml
  def new
    @car_user_name = CarUserName.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_user_name }
    end
  end

  # GET /car_user_names/1/edit
  def edit
    @car_user_name = CarUserName.find(params[:id])
  end

  # POST /car_user_names
  # POST /car_user_names.xml
  def create
    @car_user_name = CarUserName.new(params[:car_user_name])

    respond_to do |format|
      if @car_user_name.save
        format.html { redirect_to(@car_user_name, :notice => 'Car user name was successfully created.') }
        format.xml  { render :xml => @car_user_name, :status => :created, :location => @car_user_name }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_user_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_user_names/1
  # PUT /car_user_names/1.xml
  def update
    @car_user_name = CarUserName.find(params[:id])

    respond_to do |format|
      if @car_user_name.update_attributes(params[:car_user_name])
        format.html { redirect_to(@car_user_name, :notice => 'Car user name was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_user_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_user_names/1
  # DELETE /car_user_names/1.xml
  def destroy
    @car_user_name = CarUserName.find(params[:id])
    @car_user_name.destroy

    respond_to do |format|
      format.html { redirect_to(car_user_names_url) }
      format.xml  { head :ok }
    end
  end
end
