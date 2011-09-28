class ModelSectionsController < ApplicationController
  # GET /model_sections
  # GET /model_sections.xml
  def index
    @model_sections = ModelSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @model_sections }
    end
  end

  # GET /model_sections/1
  # GET /model_sections/1.xml
  def show
    @model_section = ModelSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @model_section }
    end
  end

  # GET /model_sections/new
  # GET /model_sections/new.xml
  def new
    @model_section = ModelSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @model_section }
    end
  end

  # GET /model_sections/1/edit
  def edit
    @model_section = ModelSection.find(params[:id])
  end

  # POST /model_sections
  # POST /model_sections.xml
  def create
    @model_section = ModelSection.new(params[:model_section])

    respond_to do |format|
      if @model_section.save
        format.html { redirect_to(@model_section, :notice => 'Model section was successfully created.') }
        format.xml  { render :xml => @model_section, :status => :created, :location => @model_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @model_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /model_sections/1
  # PUT /model_sections/1.xml
  def update
    @model_section = ModelSection.find(params[:id])

    respond_to do |format|
      if @model_section.update_attributes(params[:model_section])
        format.html { redirect_to(@model_section, :notice => 'Model section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @model_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /model_sections/1
  # DELETE /model_sections/1.xml
  def destroy
    @model_section = ModelSection.find(params[:id])
    @model_section.destroy

    respond_to do |format|
      format.html { redirect_to(model_sections_url) }
      format.xml  { head :ok }
    end
  end
 def for_make_sectionid
    @modelsections = ModelSection.find_all_by_make_section_id(params[:id]).sort_by{ |k| k['name'] }
    respond_to do |format|
      format.json  { render :json => @modelsections }      
    end
  end
  
end
