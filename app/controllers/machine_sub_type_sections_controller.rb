class MachineSubTypeSectionsController < ApplicationController
  # GET /machine_sub_type_sections
  # GET /machine_sub_type_sections.xml
  def index
    @machine_sub_type_sections = MachineSubTypeSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_sub_type_sections }
    end
  end

  # GET /machine_sub_type_sections/1
  # GET /machine_sub_type_sections/1.xml
  def show
    @machine_sub_type_section = MachineSubTypeSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_sub_type_section }
    end
  end

  # GET /machine_sub_type_sections/new
  # GET /machine_sub_type_sections/new.xml
  def new
    @machine_sub_type_section = MachineSubTypeSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_sub_type_section }
    end
  end

  # GET /machine_sub_type_sections/1/edit
  def edit
    @machine_sub_type_section = MachineSubTypeSection.find(params[:id])
  end

  # POST /machine_sub_type_sections
  # POST /machine_sub_type_sections.xml
  def create
    @machine_sub_type_section = MachineSubTypeSection.new(params[:machine_sub_type_section])

    respond_to do |format|
      if @machine_sub_type_section.save
        format.html { redirect_to(@machine_sub_type_section, :notice => 'Machine sub type section was successfully created.') }
        format.xml  { render :xml => @machine_sub_type_section, :status => :created, :location => @machine_sub_type_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_sub_type_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_sub_type_sections/1
  # PUT /machine_sub_type_sections/1.xml
  def update
    @machine_sub_type_section = MachineSubTypeSection.find(params[:id])

    respond_to do |format|
      if @machine_sub_type_section.update_attributes(params[:machine_sub_type_section])
        format.html { redirect_to(@machine_sub_type_section, :notice => 'Machine sub type section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_sub_type_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_sub_type_sections/1
  # DELETE /machine_sub_type_sections/1.xml
  def destroy
    @machine_sub_type_section = MachineSubTypeSection.find(params[:id])
    @machine_sub_type_section.destroy

    respond_to do |format|
      format.html { redirect_to(machine_sub_type_sections_url) }
      format.xml  { head :ok }
    end
  end
end
