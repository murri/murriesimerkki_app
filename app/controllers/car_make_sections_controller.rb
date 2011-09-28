class CarMakeSectionsController < ApplicationController
  # GET /car_make_sections
  # GET /car_make_sections.xml
  def index
    @car_make_sections = CarMakeSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_make_sections }
    end
  end

  # GET /car_make_sections/1
  # GET /car_make_sections/1.xml
  def show
    @car_make_section = CarMakeSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_make_section }
    end
  end

  # GET /car_make_sections/new
  # GET /car_make_sections/new.xml
  def new
    @car_make_section = CarMakeSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_make_section }
    end
  end

  # GET /car_make_sections/1/edit
  def edit
    @car_make_section = CarMakeSection.find(params[:id])
  end

  # POST /car_make_sections
  # POST /car_make_sections.xml
  def create
    @car_make_section = CarMakeSection.new(params[:car_make_section])

    respond_to do |format|
      if @car_make_section.save
        format.html { redirect_to(@car_make_section, :notice => 'Car make section was successfully created.') }
        format.xml  { render :xml => @car_make_section, :status => :created, :location => @car_make_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_make_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_make_sections/1
  # PUT /car_make_sections/1.xml
  def update
    @car_make_section = CarMakeSection.find(params[:id])

    respond_to do |format|
      if @car_make_section.update_attributes(params[:car_make_section])
        format.html { redirect_to(@car_make_section, :notice => 'Car make section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_make_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_make_sections/1
  # DELETE /car_make_sections/1.xml
  def destroy
    @car_make_section = CarMakeSection.find(params[:id])
    @car_make_section.destroy

    respond_to do |format|
      format.html { redirect_to(car_make_sections_url) }
      format.xml  { head :ok }
    end
  end
 def for_cartypeid
    @carmakesections = CarType.find_all_by_car_type_id(params[:id]).sort_by{ |k| k['name'] }
    respond_to do |format|
      format.json  { render :json => @carmakesections }      
    end
  end
  
end
