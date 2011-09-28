class CarModelSectionsController < ApplicationController
  # GET /car_model_sections
  # GET /car_model_sections.xml
  def index
    @car_model_sections = CarModelSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_model_sections }
    end
  end

  # GET /car_model_sections/1
  # GET /car_model_sections/1.xml
  def show
    @car_model_section = CarModelSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_model_section }
    end
  end

  # GET /car_model_sections/new
  # GET /car_model_sections/new.xml
  def new
    @car_model_section = CarModelSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_model_section }
    end
  end

  # GET /car_model_sections/1/edit
  def edit
    @car_model_section = CarModelSection.find(params[:id])
  end

  # POST /car_model_sections
  # POST /car_model_sections.xml
  def create
    @car_model_section = CarModelSection.new(params[:car_model_section])

    respond_to do |format|
      if @car_model_section.save
        format.html { redirect_to(@car_model_section, :notice => 'Car model section was successfully created.') }
        format.xml  { render :xml => @car_model_section, :status => :created, :location => @car_model_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_model_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_model_sections/1
  # PUT /car_model_sections/1.xml
  def update
    @car_model_section = CarModelSection.find(params[:id])

    respond_to do |format|
      if @car_model_section.update_attributes(params[:car_model_section])
        format.html { redirect_to(@car_model_section, :notice => 'Car model section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_model_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_model_sections/1
  # DELETE /car_model_sections/1.xml
  def destroy
    @car_model_section = CarModelSection.find(params[:id])
    @car_model_section.destroy

    respond_to do |format|
      format.html { redirect_to(car_model_sections_url) }
      format.xml  { head :ok }
    end
  end
end
