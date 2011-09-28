class LengthsController < ApplicationController
  # GET /lengths
  # GET /lengths.xml
  def index
    @lengths = Length.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lengths }
    end
  end

  # GET /lengths/1
  # GET /lengths/1.xml
  def show
    @length = Length.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @length }
    end
  end

  # GET /lengths/new
  # GET /lengths/new.xml
  def new
    @length = Length.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @length }
    end
  end

  # GET /lengths/1/edit
  def edit
    @length = Length.find(params[:id])
  end

  # POST /lengths
  # POST /lengths.xml
  def create
    @length = Length.new(params[:length])

    respond_to do |format|
      if @length.save
        format.html { redirect_to(@length, :notice => 'Length was successfully created.') }
        format.xml  { render :xml => @length, :status => :created, :location => @length }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @length.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lengths/1
  # PUT /lengths/1.xml
  def update
    @length = Length.find(params[:id])

    respond_to do |format|
      if @length.update_attributes(params[:length])
        format.html { redirect_to(@length, :notice => 'Length was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @length.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lengths/1
  # DELETE /lengths/1.xml
  def destroy
    @length = Length.find(params[:id])
    @length.destroy

    respond_to do |format|
      format.html { redirect_to(lengths_url) }
      format.xml  { head :ok }
    end
  end
end
