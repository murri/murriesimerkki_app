class BoatStorageEquipmentsController < ApplicationController
  # GET /boat_storage_equipments
  # GET /boat_storage_equipments.xml
  def index
    @boat_storage_equipments = BoatStorageEquipment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_storage_equipments }
    end
  end

  # GET /boat_storage_equipments/1
  # GET /boat_storage_equipments/1.xml
  def show
    @boat_storage_equipment = BoatStorageEquipment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_storage_equipment }
    end
  end

  # GET /boat_storage_equipments/new
  # GET /boat_storage_equipments/new.xml
  def new
    @boat_storage_equipment = BoatStorageEquipment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_storage_equipment }
    end
  end

  # GET /boat_storage_equipments/1/edit
  def edit
    @boat_storage_equipment = BoatStorageEquipment.find(params[:id])
  end

  # POST /boat_storage_equipments
  # POST /boat_storage_equipments.xml
  def create
    @boat_storage_equipment = BoatStorageEquipment.new(params[:boat_storage_equipment])

    respond_to do |format|
      if @boat_storage_equipment.save
        format.html { redirect_to(@boat_storage_equipment, :notice => 'Boat storage equipment was successfully created.') }
        format.xml  { render :xml => @boat_storage_equipment, :status => :created, :location => @boat_storage_equipment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_storage_equipment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_storage_equipments/1
  # PUT /boat_storage_equipments/1.xml
  def update
    @boat_storage_equipment = BoatStorageEquipment.find(params[:id])

    respond_to do |format|
      if @boat_storage_equipment.update_attributes(params[:boat_storage_equipment])
        format.html { redirect_to(@boat_storage_equipment, :notice => 'Boat storage equipment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_storage_equipment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_storage_equipments/1
  # DELETE /boat_storage_equipments/1.xml
  def destroy
    @boat_storage_equipment = BoatStorageEquipment.find(params[:id])
    @boat_storage_equipment.destroy

    respond_to do |format|
      format.html { redirect_to(boat_storage_equipments_url) }
      format.xml  { head :ok }
    end
  end
end
