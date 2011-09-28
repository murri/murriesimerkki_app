class MachineCategorySectionsController < ApplicationController
  # GET /machine_category_sections
  # GET /machine_category_sections.xml
  def index
    @machine_category_sections = MachineCategorySection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_category_sections }
    end
  end

  # GET /machine_category_sections/1
  # GET /machine_category_sections/1.xml
  def show
    @machine_category_section = MachineCategorySection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_category_section }
    end
  end

  # GET /machine_category_sections/new
  # GET /machine_category_sections/new.xml
  def new
    @machine_category_section = MachineCategorySection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_category_section }
    end
  end

  # GET /machine_category_sections/1/edit
  def edit
    @machine_category_section = MachineCategorySection.find(params[:id])
  end

  # POST /machine_category_sections
  # POST /machine_category_sections.xml
  def create
    @machine_category_section = MachineCategorySection.new(params[:machine_category_section])

    respond_to do |format|
      if @machine_category_section.save
        format.html { redirect_to(@machine_category_section, :notice => 'Machine category section was successfully created.') }
        format.xml  { render :xml => @machine_category_section, :status => :created, :location => @machine_category_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_category_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_category_sections/1
  # PUT /machine_category_sections/1.xml
  def update
    @machine_category_section = MachineCategorySection.find(params[:id])

    respond_to do |format|
      if @machine_category_section.update_attributes(params[:machine_category_section])
        format.html { redirect_to(@machine_category_section, :notice => 'Machine category section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_category_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_category_sections/1
  # DELETE /machine_category_sections/1.xml
  def destroy
    @machine_category_section = MachineCategorySection.find(params[:id])
    @machine_category_section.destroy

    respond_to do |format|
      format.html { redirect_to(machine_category_sections_url) }
      format.xml  { head :ok }
    end
  end
def for_machinetypeid
    @machinecategorysections = MachineType.find_all_by_machine_type_id(params[:id]).sort_by{ |k| k['name'] }
    respond_to do |format|
      format.json  { render :json => @machinecategorysections }      
    end
  end
  
end
