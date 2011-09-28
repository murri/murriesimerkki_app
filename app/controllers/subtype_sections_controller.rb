class SubtypeSectionsController < ApplicationController
  # GET /subtype_sections
  # GET /subtype_sections.xml
  def index
    @subtype_sections = SubtypeSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subtype_sections }
    end
  end

  # GET /subtype_sections/1
  # GET /subtype_sections/1.xml
  def show
    @subtype_section = SubtypeSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subtype_section }
    end
  end

  # GET /subtype_sections/new
  # GET /subtype_sections/new.xml
  def new
    @subtype_section = SubtypeSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @subtype_section }
    end
  end

  # GET /subtype_sections/1/edit
  def edit
    @subtype_section = SubtypeSection.find(params[:id])
  end

  # POST /subtype_sections
  # POST /subtype_sections.xml
  def create
    @subtype_section = SubtypeSection.new(params[:subtype_section])

    respond_to do |format|
      if @subtype_section.save
        format.html { redirect_to(@subtype_section, :notice => 'Subtype section was successfully created.') }
        format.xml  { render :xml => @subtype_section, :status => :created, :location => @subtype_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @subtype_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /subtype_sections/1
  # PUT /subtype_sections/1.xml
  def update
    @subtype_section = SubtypeSection.find(params[:id])

    respond_to do |format|
      if @subtype_section.update_attributes(params[:subtype_section])
        format.html { redirect_to(@subtype_section, :notice => 'Subtype section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @subtype_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /subtype_sections/1
  # DELETE /subtype_sections/1.xml
  def destroy
    @subtype_section = SubtypeSection.find(params[:id])
    @subtype_section.destroy

    respond_to do |format|
      format.html { redirect_to(subtype_sections_url) }
      format.xml  { head :ok }
    end
  end
def for_boat_type
    @subtypesections = SubtypeSection.find_all_by_industry_id(params[:id]).sort_by{ |k| k['name'] }
    respond_to do |format|
      format.json  { render :json => @subtypesections }      
    end
  end
  
end
