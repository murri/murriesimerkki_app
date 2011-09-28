class CaravanTownTypeSectionsController < ApplicationController
  # GET /caravan_town_type_sections
  # GET /caravan_town_type_sections.xml
  def index
    @caravan_town_type_sections = CaravanTownTypeSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravan_town_type_sections }
    end
  end

  # GET /caravan_town_type_sections/1
  # GET /caravan_town_type_sections/1.xml
  def show
    @caravan_town_type_section = CaravanTownTypeSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan_town_type_section }
    end
  end

  # GET /caravan_town_type_sections/new
  # GET /caravan_town_type_sections/new.xml
  def new
    @caravan_town_type_section = CaravanTownTypeSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan_town_type_section }
    end
  end

  # GET /caravan_town_type_sections/1/edit
  def edit
    @caravan_town_type_section = CaravanTownTypeSection.find(params[:id])
  end

  # POST /caravan_town_type_sections
  # POST /caravan_town_type_sections.xml
  def create
    @caravan_town_type_section = CaravanTownTypeSection.new(params[:caravan_town_type_section])

    respond_to do |format|
      if @caravan_town_type_section.save
        format.html { redirect_to(@caravan_town_type_section, :notice => 'Caravan town type section was successfully created.') }
        format.xml  { render :xml => @caravan_town_type_section, :status => :created, :location => @caravan_town_type_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan_town_type_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravan_town_type_sections/1
  # PUT /caravan_town_type_sections/1.xml
  def update
    @caravan_town_type_section = CaravanTownTypeSection.find(params[:id])

    respond_to do |format|
      if @caravan_town_type_section.update_attributes(params[:caravan_town_type_section])
        format.html { redirect_to(@caravan_town_type_section, :notice => 'Caravan town type section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan_town_type_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravan_town_type_sections/1
  # DELETE /caravan_town_type_sections/1.xml
  def destroy
    @caravan_town_type_section = CaravanTownTypeSection.find(params[:id])
    @caravan_town_type_section.destroy

    respond_to do |format|
      format.html { redirect_to(caravan_town_type_sections_url) }
      format.xml  { head :ok }
    end
  end
end
