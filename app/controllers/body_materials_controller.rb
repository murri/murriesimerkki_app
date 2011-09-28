class BodyMaterialsController < ApplicationController
  # GET /body_materials
  # GET /body_materials.xml
  def index
    @body_materials = BodyMaterial.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @body_materials }
    end
  end

  # GET /body_materials/1
  # GET /body_materials/1.xml
  def show
    @body_material = BodyMaterial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @body_material }
    end
  end

  # GET /body_materials/new
  # GET /body_materials/new.xml
  def new
    @body_material = BodyMaterial.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @body_material }
    end
  end

  # GET /body_materials/1/edit
  def edit
    @body_material = BodyMaterial.find(params[:id])
  end

  # POST /body_materials
  # POST /body_materials.xml
  def create
    @body_material = BodyMaterial.new(params[:body_material])

    respond_to do |format|
      if @body_material.save
        format.html { redirect_to(@body_material, :notice => 'Body material was successfully created.') }
        format.xml  { render :xml => @body_material, :status => :created, :location => @body_material }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @body_material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /body_materials/1
  # PUT /body_materials/1.xml
  def update
    @body_material = BodyMaterial.find(params[:id])

    respond_to do |format|
      if @body_material.update_attributes(params[:body_material])
        format.html { redirect_to(@body_material, :notice => 'Body material was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @body_material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /body_materials/1
  # DELETE /body_materials/1.xml
  def destroy
    @body_material = BodyMaterial.find(params[:id])
    @body_material.destroy

    respond_to do |format|
      format.html { redirect_to(body_materials_url) }
      format.xml  { head :ok }
    end
  end
end
