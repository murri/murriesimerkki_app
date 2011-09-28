class BoatBodyMaterialsController < ApplicationController
  # GET /boat_body_materials
  # GET /boat_body_materials.xml
  def index
    @boat_body_materials = BoatBodyMaterial.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_body_materials }
    end
  end

  # GET /boat_body_materials/1
  # GET /boat_body_materials/1.xml
  def show
    @boat_body_material = BoatBodyMaterial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_body_material }
    end
  end

  # GET /boat_body_materials/new
  # GET /boat_body_materials/new.xml
  def new
    @boat_body_material = BoatBodyMaterial.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_body_material }
    end
  end

  # GET /boat_body_materials/1/edit
  def edit
    @boat_body_material = BoatBodyMaterial.find(params[:id])
  end

  # POST /boat_body_materials
  # POST /boat_body_materials.xml
  def create
    @boat_body_material = BoatBodyMaterial.new(params[:boat_body_material])

    respond_to do |format|
      if @boat_body_material.save
        format.html { redirect_to(@boat_body_material, :notice => 'Boat body material was successfully created.') }
        format.xml  { render :xml => @boat_body_material, :status => :created, :location => @boat_body_material }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_body_material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_body_materials/1
  # PUT /boat_body_materials/1.xml
  def update
    @boat_body_material = BoatBodyMaterial.find(params[:id])

    respond_to do |format|
      if @boat_body_material.update_attributes(params[:boat_body_material])
        format.html { redirect_to(@boat_body_material, :notice => 'Boat body material was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_body_material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_body_materials/1
  # DELETE /boat_body_materials/1.xml
  def destroy
    @boat_body_material = BoatBodyMaterial.find(params[:id])
    @boat_body_material.destroy

    respond_to do |format|
      format.html { redirect_to(boat_body_materials_url) }
      format.xml  { head :ok }
    end
  end
end
