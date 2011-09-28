class MotoTownTypeSectionsController < ApplicationController
  # GET /moto_town_type_sections
  # GET /moto_town_type_sections.xml
  def index
    @moto_town_type_sections = MotoTownTypeSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_town_type_sections }
    end
  end

  # GET /moto_town_type_sections/1
  # GET /moto_town_type_sections/1.xml
  def show
    @moto_town_type_section = MotoTownTypeSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_town_type_section }
    end
  end

  # GET /moto_town_type_sections/new
  # GET /moto_town_type_sections/new.xml
  def new
    @moto_town_type_section = MotoTownTypeSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_town_type_section }
    end
  end

  # GET /moto_town_type_sections/1/edit
  def edit
    @moto_town_type_section = MotoTownTypeSection.find(params[:id])
  end

  # POST /moto_town_type_sections
  # POST /moto_town_type_sections.xml
  def create
    @moto_town_type_section = MotoTownTypeSection.new(params[:moto_town_type_section])

    respond_to do |format|
      if @moto_town_type_section.save
        format.html { redirect_to(@moto_town_type_section, :notice => 'Moto town type section was successfully created.') }
        format.xml  { render :xml => @moto_town_type_section, :status => :created, :location => @moto_town_type_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_town_type_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_town_type_sections/1
  # PUT /moto_town_type_sections/1.xml
  def update
    @moto_town_type_section = MotoTownTypeSection.find(params[:id])

    respond_to do |format|
      if @moto_town_type_section.update_attributes(params[:moto_town_type_section])
        format.html { redirect_to(@moto_town_type_section, :notice => 'Moto town type section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_town_type_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_town_type_sections/1
  # DELETE /moto_town_type_sections/1.xml
  def destroy
    @moto_town_type_section = MotoTownTypeSection.find(params[:id])
    @moto_town_type_section.destroy

    respond_to do |format|
      format.html { redirect_to(moto_town_type_sections_url) }
      format.xml  { head :ok }
    end
  end
end
