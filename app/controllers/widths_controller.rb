class WidthsController < ApplicationController
  # GET /widths
  # GET /widths.xml
  def index
    @widths = Width.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @widths }
    end
  end

  # GET /widths/1
  # GET /widths/1.xml
  def show
    @width = Width.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @width }
    end
  end

  # GET /widths/new
  # GET /widths/new.xml
  def new
    @width = Width.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @width }
    end
  end

  # GET /widths/1/edit
  def edit
    @width = Width.find(params[:id])
  end

  # POST /widths
  # POST /widths.xml
  def create
    @width = Width.new(params[:width])

    respond_to do |format|
      if @width.save
        format.html { redirect_to(@width, :notice => 'Width was successfully created.') }
        format.xml  { render :xml => @width, :status => :created, :location => @width }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @width.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /widths/1
  # PUT /widths/1.xml
  def update
    @width = Width.find(params[:id])

    respond_to do |format|
      if @width.update_attributes(params[:width])
        format.html { redirect_to(@width, :notice => 'Width was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @width.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /widths/1
  # DELETE /widths/1.xml
  def destroy
    @width = Width.find(params[:id])
    @width.destroy

    respond_to do |format|
      format.html { redirect_to(widths_url) }
      format.xml  { head :ok }
    end
  end
end
