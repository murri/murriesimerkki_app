class BoatSubTypeSectionsController < ApplicationController
  # GET /boat_sub_type_sections
  # GET /boat_sub_type_sections.xml
  def index
    @boat_sub_type_sections = BoatSubTypeSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_sub_type_sections }
    end
  end

  # GET /boat_sub_type_sections/1
  # GET /boat_sub_type_sections/1.xml
  def show
    @boat_sub_type_section = BoatSubTypeSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_sub_type_section }
    end
  end

  # GET /boat_sub_type_sections/new
  # GET /boat_sub_type_sections/new.xml
  def new
    @boat_sub_type_section = BoatSubTypeSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_sub_type_section }
    end
  end

  # GET /boat_sub_type_sections/1/edit
  def edit
    @boat_sub_type_section = BoatSubTypeSection.find(params[:id])
  end

  # POST /boat_sub_type_sections
  # POST /boat_sub_type_sections.xml
  def create
    @boat_sub_type_section = BoatSubTypeSection.new(params[:boat_sub_type_section])

    respond_to do |format|
      if @boat_sub_type_section.save
        format.html { redirect_to(@boat_sub_type_section, :notice => 'Boat sub type section was successfully created.') }
        format.xml  { render :xml => @boat_sub_type_section, :status => :created, :location => @boat_sub_type_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_sub_type_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_sub_type_sections/1
  # PUT /boat_sub_type_sections/1.xml
  def update
    @boat_sub_type_section = BoatSubTypeSection.find(params[:id])

    respond_to do |format|
      if @boat_sub_type_section.update_attributes(params[:boat_sub_type_section])
        format.html { redirect_to(@boat_sub_type_section, :notice => 'Boat sub type section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_sub_type_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_sub_type_sections/1
  # DELETE /boat_sub_type_sections/1.xml
  def destroy
    @boat_sub_type_section = BoatSubTypeSection.find(params[:id])
    @boat_sub_type_section.destroy

    respond_to do |format|
      format.html { redirect_to(boat_sub_type_sections_url) }
      format.xml  { head :ok }
    end
  end
end
