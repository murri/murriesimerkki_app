class DomicileTypeSectionsController < ApplicationController
  # GET /domicile_type_sections
  # GET /domicile_type_sections.xml
  def index
    @domicile_type_sections = DomicileTypeSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @domicile_type_sections }
    end
  end

  # GET /domicile_type_sections/1
  # GET /domicile_type_sections/1.xml
  def show
    @domicile_type_section = DomicileTypeSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @domicile_type_section }
    end
  end

  # GET /domicile_type_sections/new
  # GET /domicile_type_sections/new.xml
  def new
    @domicile_type_section = DomicileTypeSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @domicile_type_section }
    end
  end

  # GET /domicile_type_sections/1/edit
  def edit
    @domicile_type_section = DomicileTypeSection.find(params[:id])
  end

  # POST /domicile_type_sections
  # POST /domicile_type_sections.xml
  def create
    @domicile_type_section = DomicileTypeSection.new(params[:domicile_type_section])

    respond_to do |format|
      if @domicile_type_section.save
        format.html { redirect_to(@domicile_type_section, :notice => 'Domicile type section was successfully created.') }
        format.xml  { render :xml => @domicile_type_section, :status => :created, :location => @domicile_type_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @domicile_type_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /domicile_type_sections/1
  # PUT /domicile_type_sections/1.xml
  def update
    @domicile_type_section = DomicileTypeSection.find(params[:id])

    respond_to do |format|
      if @domicile_type_section.update_attributes(params[:domicile_type_section])
        format.html { redirect_to(@domicile_type_section, :notice => 'Domicile type section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @domicile_type_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /domicile_type_sections/1
  # DELETE /domicile_type_sections/1.xml
  def destroy
    @domicile_type_section = DomicileTypeSection.find(params[:id])
    @domicile_type_section.destroy

    respond_to do |format|
      format.html { redirect_to(domicile_type_sections_url) }
      format.xml  { head :ok }
    end
  end
end
