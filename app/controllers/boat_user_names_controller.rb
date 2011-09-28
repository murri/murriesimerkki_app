class BoatUserNamesController < ApplicationController
  # GET /boat_user_names
  # GET /boat_user_names.xml
  def index
    @boat_user_names = BoatUserName.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_user_names }
    end
  end

  # GET /boat_user_names/1
  # GET /boat_user_names/1.xml
  def show
    @boat_user_name = BoatUserName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_user_name }
    end
  end

  # GET /boat_user_names/new
  # GET /boat_user_names/new.xml
  def new
    @boat_user_name = BoatUserName.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_user_name }
    end
  end

  # GET /boat_user_names/1/edit
  def edit
    @boat_user_name = BoatUserName.find(params[:id])
  end

  # POST /boat_user_names
  # POST /boat_user_names.xml
  def create
    @boat_user_name = BoatUserName.new(params[:boat_user_name])

    respond_to do |format|
      if @boat_user_name.save
        format.html { redirect_to(@boat_user_name, :notice => 'Boat user name was successfully created.') }
        format.xml  { render :xml => @boat_user_name, :status => :created, :location => @boat_user_name }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_user_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_user_names/1
  # PUT /boat_user_names/1.xml
  def update
    @boat_user_name = BoatUserName.find(params[:id])

    respond_to do |format|
      if @boat_user_name.update_attributes(params[:boat_user_name])
        format.html { redirect_to(@boat_user_name, :notice => 'Boat user name was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_user_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_user_names/1
  # DELETE /boat_user_names/1.xml
  def destroy
    @boat_user_name = BoatUserName.find(params[:id])
    @boat_user_name.destroy

    respond_to do |format|
      format.html { redirect_to(boat_user_names_url) }
      format.xml  { head :ok }
    end
  end
end
