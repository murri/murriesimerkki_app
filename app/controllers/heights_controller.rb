class HeightsController < ApplicationController
  # GET /heights
  # GET /heights.xml
  def index
    @heights = Height.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @heights }
    end
  end

  # GET /heights/1
  # GET /heights/1.xml
  def show
    @height = Height.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @height }
    end
  end

  # GET /heights/new
  # GET /heights/new.xml
  def new
    @height = Height.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @height }
    end
  end

  # GET /heights/1/edit
  def edit
    @height = Height.find(params[:id])
  end

  # POST /heights
  # POST /heights.xml
  def create
    @height = Height.new(params[:height])

    respond_to do |format|
      if @height.save
        format.html { redirect_to(@height, :notice => 'Height was successfully created.') }
        format.xml  { render :xml => @height, :status => :created, :location => @height }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @height.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /heights/1
  # PUT /heights/1.xml
  def update
    @height = Height.find(params[:id])

    respond_to do |format|
      if @height.update_attributes(params[:height])
        format.html { redirect_to(@height, :notice => 'Height was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @height.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /heights/1
  # DELETE /heights/1.xml
  def destroy
    @height = Height.find(params[:id])
    @height.destroy

    respond_to do |format|
      format.html { redirect_to(heights_url) }
      format.xml  { head :ok }
    end
  end
end
