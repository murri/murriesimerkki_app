class MotoModelSectionsController < ApplicationController
  # GET /moto_model_sections
  # GET /moto_model_sections.xml
  def index
    @moto_model_sections = MotoModelSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_model_sections }
    end
  end

  # GET /moto_model_sections/1
  # GET /moto_model_sections/1.xml
  def show
    @moto_model_section = MotoModelSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_model_section }
    end
  end

  # GET /moto_model_sections/new
  # GET /moto_model_sections/new.xml
  def new
    @moto_model_section = MotoModelSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_model_section }
    end
  end

  # GET /moto_model_sections/1/edit
  def edit
    @moto_model_section = MotoModelSection.find(params[:id])
  end

  # POST /moto_model_sections
  # POST /moto_model_sections.xml
  def create
    @moto_model_section = MotoModelSection.new(params[:moto_model_section])

    respond_to do |format|
      if @moto_model_section.save
        format.html { redirect_to(@moto_model_section, :notice => 'Moto model section was successfully created.') }
        format.xml  { render :xml => @moto_model_section, :status => :created, :location => @moto_model_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_model_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_model_sections/1
  # PUT /moto_model_sections/1.xml
  def update
    @moto_model_section = MotoModelSection.find(params[:id])

    respond_to do |format|
      if @moto_model_section.update_attributes(params[:moto_model_section])
        format.html { redirect_to(@moto_model_section, :notice => 'Moto model section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_model_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_model_sections/1
  # DELETE /moto_model_sections/1.xml
  def destroy
    @moto_model_section = MotoModelSection.find(params[:id])
    @moto_model_section.destroy

    respond_to do |format|
      format.html { redirect_to(moto_model_sections_url) }
      format.xml  { head :ok }
    end
  end
end
