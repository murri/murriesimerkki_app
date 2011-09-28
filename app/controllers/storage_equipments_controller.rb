class StorageEquipmentsController < ApplicationController
  # GET /storage_equipments
  # GET /storage_equipments.xml
  def index
    @storage_equipments = StorageEquipment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @storage_equipments }
    end
  end

  # GET /storage_equipments/1
  # GET /storage_equipments/1.xml
  def show
    @storage_equipment = StorageEquipment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @storage_equipment }
    end
  end

  # GET /storage_equipments/new
  # GET /storage_equipments/new.xml
  def new
    @storage_equipment = StorageEquipment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @storage_equipment }
    end
  end

  # GET /storage_equipments/1/edit
  def edit
    @storage_equipment = StorageEquipment.find(params[:id])
  end

  # POST /storage_equipments
  # POST /storage_equipments.xml
  def create
    @storage_equipment = StorageEquipment.new(params[:storage_equipment])

    respond_to do |format|
      if @storage_equipment.save
        format.html { redirect_to(@storage_equipment, :notice => 'Storage equipment was successfully created.') }
        format.xml  { render :xml => @storage_equipment, :status => :created, :location => @storage_equipment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @storage_equipment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /storage_equipments/1
  # PUT /storage_equipments/1.xml
  def update
    @storage_equipment = StorageEquipment.find(params[:id])

    respond_to do |format|
      if @storage_equipment.update_attributes(params[:storage_equipment])
        format.html { redirect_to(@storage_equipment, :notice => 'Storage equipment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @storage_equipment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /storage_equipments/1
  # DELETE /storage_equipments/1.xml
  def destroy
    @storage_equipment = StorageEquipment.find(params[:id])
    @storage_equipment.destroy

    respond_to do |format|
      format.html { redirect_to(storage_equipments_url) }
      format.xml  { head :ok }
    end
  end
end
