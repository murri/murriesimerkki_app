class BoatTownTypeSectionsController < ApplicationController
  # GET /boat_town_type_sections
  # GET /boat_town_type_sections.xml
  def index
    @boat_town_type_sections = BoatTownTypeSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_town_type_sections }
    end
  end

  # GET /boat_town_type_sections/1
  # GET /boat_town_type_sections/1.xml
  def show
    @boat_town_type_section = BoatTownTypeSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_town_type_section }
    end
  end

  # GET /boat_town_type_sections/new
  # GET /boat_town_type_sections/new.xml
  def new
    @boat_town_type_section = BoatTownTypeSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_town_type_section }
    end
  end

  # GET /boat_town_type_sections/1/edit
  def edit
    @boat_town_type_section = BoatTownTypeSection.find(params[:id])
  end

  # POST /boat_town_type_sections
  # POST /boat_town_type_sections.xml
  def create
    @boat_town_type_section = BoatTownTypeSection.new(params[:boat_town_type_section])

    respond_to do |format|
      if @boat_town_type_section.save
        format.html { redirect_to(@boat_town_type_section, :notice => 'Boat town type section was successfully created.') }
        format.xml  { render :xml => @boat_town_type_section, :status => :created, :location => @boat_town_type_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_town_type_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_town_type_sections/1
  # PUT /boat_town_type_sections/1.xml
  def update
    @boat_town_type_section = BoatTownTypeSection.find(params[:id])

    respond_to do |format|
      if @boat_town_type_section.update_attributes(params[:boat_town_type_section])
        format.html { redirect_to(@boat_town_type_section, :notice => 'Boat town type section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_town_type_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_town_type_sections/1
  # DELETE /boat_town_type_sections/1.xml
  def destroy
    @boat_town_type_section = BoatTownTypeSection.find(params[:id])
    @boat_town_type_section.destroy

    respond_to do |format|
      format.html { redirect_to(boat_town_type_sections_url) }
      format.xml  { head :ok }
    end
  end
end
