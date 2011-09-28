class CaravanModelSectionsController < ApplicationController
  # GET /caravan_model_sections
  # GET /caravan_model_sections.xml
  def index
    @caravan_model_sections = CaravanModelSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravan_model_sections }
    end
  end

  # GET /caravan_model_sections/1
  # GET /caravan_model_sections/1.xml
  def show
    @caravan_model_section = CaravanModelSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan_model_section }
    end
  end

  # GET /caravan_model_sections/new
  # GET /caravan_model_sections/new.xml
  def new
    @caravan_model_section = CaravanModelSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan_model_section }
    end
  end

  # GET /caravan_model_sections/1/edit
  def edit
    @caravan_model_section = CaravanModelSection.find(params[:id])
  end

  # POST /caravan_model_sections
  # POST /caravan_model_sections.xml
  def create
    @caravan_model_section = CaravanModelSection.new(params[:caravan_model_section])

    respond_to do |format|
      if @caravan_model_section.save
        format.html { redirect_to(@caravan_model_section, :notice => 'Caravan model section was successfully created.') }
        format.xml  { render :xml => @caravan_model_section, :status => :created, :location => @caravan_model_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan_model_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravan_model_sections/1
  # PUT /caravan_model_sections/1.xml
  def update
    @caravan_model_section = CaravanModelSection.find(params[:id])

    respond_to do |format|
      if @caravan_model_section.update_attributes(params[:caravan_model_section])
        format.html { redirect_to(@caravan_model_section, :notice => 'Caravan model section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan_model_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravan_model_sections/1
  # DELETE /caravan_model_sections/1.xml
  def destroy
    @caravan_model_section = CaravanModelSection.find(params[:id])
    @caravan_model_section.destroy

    respond_to do |format|
      format.html { redirect_to(caravan_model_sections_url) }
      format.xml  { head :ok }
    end
  end
end
