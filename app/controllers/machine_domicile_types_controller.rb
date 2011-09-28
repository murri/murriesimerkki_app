class MachineDomicileTypesController < ApplicationController
  # GET /machine_domicile_types
  # GET /machine_domicile_types.xml
  def index
    @machine_domicile_types = MachineDomicileType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_domicile_types }
    end
  end

  # GET /machine_domicile_types/1
  # GET /machine_domicile_types/1.xml
  def show
    @machine_domicile_type = MachineDomicileType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_domicile_type }
    end
  end

  # GET /machine_domicile_types/new
  # GET /machine_domicile_types/new.xml
  def new
    @machine_domicile_type = MachineDomicileType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_domicile_type }
    end
  end

  # GET /machine_domicile_types/1/edit
  def edit
    @machine_domicile_type = MachineDomicileType.find(params[:id])
  end

  # POST /machine_domicile_types
  # POST /machine_domicile_types.xml
  def create
    @machine_domicile_type = MachineDomicileType.new(params[:machine_domicile_type])

    respond_to do |format|
      if @machine_domicile_type.save
        format.html { redirect_to(@machine_domicile_type, :notice => 'Machine domicile type was successfully created.') }
        format.xml  { render :xml => @machine_domicile_type, :status => :created, :location => @machine_domicile_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_domicile_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_domicile_types/1
  # PUT /machine_domicile_types/1.xml
  def update
    @machine_domicile_type = MachineDomicileType.find(params[:id])

    respond_to do |format|
      if @machine_domicile_type.update_attributes(params[:machine_domicile_type])
        format.html { redirect_to(@machine_domicile_type, :notice => 'Machine domicile type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_domicile_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_domicile_types/1
  # DELETE /machine_domicile_types/1.xml
  def destroy
    @machine_domicile_type = MachineDomicileType.find(params[:id])
    @machine_domicile_type.destroy

    respond_to do |format|
      format.html { redirect_to(machine_domicile_types_url) }
      format.xml  { head :ok }
    end
  end
end
