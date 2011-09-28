class MakeSectionsController < ApplicationController
  # GET /make_sections
  # GET /make_sections.xml
  def index
    @make_sections = MakeSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @make_sections }
    end
  end

  # GET /make_sections/1
  # GET /make_sections/1.xml
  def show
    @make_section = MakeSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @make_section }
    end
  end

  # GET /make_sections/new
  # GET /make_sections/new.xml
  def new
    @make_section = MakeSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @make_section }
    end
  end

  # GET /make_sections/1/edit
  def edit
    @make_section = MakeSection.find(params[:id])
  end

  # POST /make_sections
  # POST /make_sections.xml
  def create
    @make_section = MakeSection.new(params[:make_section])

    respond_to do |format|
      if @make_section.save
        format.html { redirect_to(@make_section, :notice => 'Make section was successfully created.') }
        format.xml  { render :xml => @make_section, :status => :created, :location => @make_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @make_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /make_sections/1
  # PUT /make_sections/1.xml
  def update
    @make_section = MakeSection.find(params[:id])

    respond_to do |format|
      if @make_section.update_attributes(params[:make_section])
        format.html { redirect_to(@make_section, :notice => 'Make section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @make_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /make_sections/1
  # DELETE /make_sections/1.xml
  def destroy
    @make_section = MakeSection.find(params[:id])
    @make_section.destroy

    respond_to do |format|
      format.html { redirect_to(make_sections_url) }
      format.xml  { head :ok }
    end
 
 end
def for_typeid
    @makesections = MakeSection.find_all_by_type_id(params[:id]).sort_by{ |k| k['name'] }
    respond_to do |format|
      format.json  { render :json => @makesections }      
    end
  end
  
end
