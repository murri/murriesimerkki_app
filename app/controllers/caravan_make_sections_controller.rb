class CaravanMakeSectionsController < ApplicationController
  # GET /caravan_make_sections
  # GET /caravan_make_sections.xml
  def index
    @caravan_make_sections = CaravanMakeSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravan_make_sections }
    end
  end

  # GET /caravan_make_sections/1
  # GET /caravan_make_sections/1.xml
  def show
    @caravan_make_section = CaravanMakeSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan_make_section }
    end
  end

  # GET /caravan_make_sections/new
  # GET /caravan_make_sections/new.xml
  def new
    @caravan_make_section = CaravanMakeSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan_make_section }
    end
  end

  # GET /caravan_make_sections/1/edit
  def edit
    @caravan_make_section = CaravanMakeSection.find(params[:id])
  end

  # POST /caravan_make_sections
  # POST /caravan_make_sections.xml
  def create
    @caravan_make_section = CaravanMakeSection.new(params[:caravan_make_section])

    respond_to do |format|
      if @caravan_make_section.save
        format.html { redirect_to(@caravan_make_section, :notice => 'Caravan make section was successfully created.') }
        format.xml  { render :xml => @caravan_make_section, :status => :created, :location => @caravan_make_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan_make_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravan_make_sections/1
  # PUT /caravan_make_sections/1.xml
  def update
    @caravan_make_section = CaravanMakeSection.find(params[:id])

    respond_to do |format|
      if @caravan_make_section.update_attributes(params[:caravan_make_section])
        format.html { redirect_to(@caravan_make_section, :notice => 'Caravan make section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan_make_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravan_make_sections/1
  # DELETE /caravan_make_sections/1.xml
  def destroy
    @caravan_make_section = CaravanMakeSection.find(params[:id])
    @caravan_make_section.destroy

    respond_to do |format|
      format.html { redirect_to(caravan_make_sections_url) }
      format.xml  { head :ok }
    end
  end
end
