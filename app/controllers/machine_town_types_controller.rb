class MachineTownTypesController < ApplicationController
  # GET /machine_town_types
  # GET /machine_town_types.xml
  def index
    @machine_town_types = MachineTownType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_town_types }
    end
  end

  # GET /machine_town_types/1
  # GET /machine_town_types/1.xml
  def show
    @machine_town_type = MachineTownType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_town_type }
    end
  end

  # GET /machine_town_types/new
  # GET /machine_town_types/new.xml
  def new
    @machine_town_type = MachineTownType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_town_type }
    end
  end

  # GET /machine_town_types/1/edit
  def edit
    @machine_town_type = MachineTownType.find(params[:id])
  end

  # POST /machine_town_types
  # POST /machine_town_types.xml
  def create
    @machine_town_type = MachineTownType.new(params[:machine_town_type])

    respond_to do |format|
      if @machine_town_type.save
        format.html { redirect_to(@machine_town_type, :notice => 'Machine town type was successfully created.') }
        format.xml  { render :xml => @machine_town_type, :status => :created, :location => @machine_town_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_town_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_town_types/1
  # PUT /machine_town_types/1.xml
  def update
    @machine_town_type = MachineTownType.find(params[:id])

    respond_to do |format|
      if @machine_town_type.update_attributes(params[:machine_town_type])
        format.html { redirect_to(@machine_town_type, :notice => 'Machine town type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_town_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_town_types/1
  # DELETE /machine_town_types/1.xml
  def destroy
    @machine_town_type = MachineTownType.find(params[:id])
    @machine_town_type.destroy

    respond_to do |format|
      format.html { redirect_to(machine_town_types_url) }
      format.xml  { head :ok }
    end
  end
end
