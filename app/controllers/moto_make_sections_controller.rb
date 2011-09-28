class MotoMakeSectionsController < ApplicationController
  # GET /moto_make_sections
  # GET /moto_make_sections.xml
  def index
    @moto_make_sections = MotoMakeSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_make_sections }
    end
  end

  # GET /moto_make_sections/1
  # GET /moto_make_sections/1.xml
  def show
    @moto_make_section = MotoMakeSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_make_section }
    end
  end

  # GET /moto_make_sections/new
  # GET /moto_make_sections/new.xml
  def new
    @moto_make_section = MotoMakeSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_make_section }
    end
  end

  # GET /moto_make_sections/1/edit
  def edit
    @moto_make_section = MotoMakeSection.find(params[:id])
  end

  # POST /moto_make_sections
  # POST /moto_make_sections.xml
  def create
    @moto_make_section = MotoMakeSection.new(params[:moto_make_section])

    respond_to do |format|
      if @moto_make_section.save
        format.html { redirect_to(@moto_make_section, :notice => 'Moto make section was successfully created.') }
        format.xml  { render :xml => @moto_make_section, :status => :created, :location => @moto_make_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_make_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_make_sections/1
  # PUT /moto_make_sections/1.xml
  def update
    @moto_make_section = MotoMakeSection.find(params[:id])

    respond_to do |format|
      if @moto_make_section.update_attributes(params[:moto_make_section])
        format.html { redirect_to(@moto_make_section, :notice => 'Moto make section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_make_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_make_sections/1
  # DELETE /moto_make_sections/1.xml
  def destroy
    @moto_make_section = MotoMakeSection.find(params[:id])
    @moto_make_section.destroy

    respond_to do |format|
      format.html { redirect_to(moto_make_sections_url) }
      format.xml  { head :ok }
    end
  end
end
