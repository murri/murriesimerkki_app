class CaravanUserNamesController < ApplicationController
  # GET /caravan_user_names
  # GET /caravan_user_names.xml
  def index
    @caravan_user_names = CaravanUserName.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravan_user_names }
    end
  end

  # GET /caravan_user_names/1
  # GET /caravan_user_names/1.xml
  def show
    @caravan_user_name = CaravanUserName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan_user_name }
    end
  end

  # GET /caravan_user_names/new
  # GET /caravan_user_names/new.xml
  def new
    @caravan_user_name = CaravanUserName.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan_user_name }
    end
  end

  # GET /caravan_user_names/1/edit
  def edit
    @caravan_user_name = CaravanUserName.find(params[:id])
  end

  # POST /caravan_user_names
  # POST /caravan_user_names.xml
  def create
    @caravan_user_name = CaravanUserName.new(params[:caravan_user_name])

    respond_to do |format|
      if @caravan_user_name.save
        format.html { redirect_to(@caravan_user_name, :notice => 'Caravan user name was successfully created.') }
        format.xml  { render :xml => @caravan_user_name, :status => :created, :location => @caravan_user_name }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan_user_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravan_user_names/1
  # PUT /caravan_user_names/1.xml
  def update
    @caravan_user_name = CaravanUserName.find(params[:id])

    respond_to do |format|
      if @caravan_user_name.update_attributes(params[:caravan_user_name])
        format.html { redirect_to(@caravan_user_name, :notice => 'Caravan user name was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan_user_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravan_user_names/1
  # DELETE /caravan_user_names/1.xml
  def destroy
    @caravan_user_name = CaravanUserName.find(params[:id])
    @caravan_user_name.destroy

    respond_to do |format|
      format.html { redirect_to(caravan_user_names_url) }
      format.xml  { head :ok }
    end
  end
end
