class MachineMakeSectionsController < ApplicationController
  # GET /machine_make_sections
  # GET /machine_make_sections.xml
  def index
    @machine_make_sections = MachineMakeSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_make_sections }
    end
  end

  # GET /machine_make_sections/1
  # GET /machine_make_sections/1.xml
  def show
    @machine_make_section = MachineMakeSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_make_section }
    end
  end

  # GET /machine_make_sections/new
  # GET /machine_make_sections/new.xml
  def new
    @machine_make_section = MachineMakeSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_make_section }
    end
  end

  # GET /machine_make_sections/1/edit
  def edit
    @machine_make_section = MachineMakeSection.find(params[:id])
  end

  # POST /machine_make_sections
  # POST /machine_make_sections.xml
  def create
    @machine_make_section = MachineMakeSection.new(params[:machine_make_section])

    respond_to do |format|
      if @machine_make_section.save
        format.html { redirect_to(@machine_make_section, :notice => 'Machine make section was successfully created.') }
        format.xml  { render :xml => @machine_make_section, :status => :created, :location => @machine_make_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_make_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_make_sections/1
  # PUT /machine_make_sections/1.xml
  def update
    @machine_make_section = MachineMakeSection.find(params[:id])

    respond_to do |format|
      if @machine_make_section.update_attributes(params[:machine_make_section])
        format.html { redirect_to(@machine_make_section, :notice => 'Machine make section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_make_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_make_sections/1
  # DELETE /machine_make_sections/1.xml
  def destroy
    @machine_make_section = MachineMakeSection.find(params[:id])
    @machine_make_section.destroy

    respond_to do |format|
      format.html { redirect_to(machine_make_sections_url) }
      format.xml  { head :ok }
    end
  end
end
