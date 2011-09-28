class WindowsController < ApplicationController
  # GET /windows
  # GET /windows.xml
  def index
    @windows = Window.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @windows }
    end
  end

  # GET /windows/1
  # GET /windows/1.xml
  def show
    @window = Window.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @window }
    end
  end

  # GET /windows/new
  # GET /windows/new.xml
  def new
    @window = Window.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @window }
    end
  end

  # GET /windows/1/edit
  def edit
    @window = Window.find(params[:id])
  end

  # POST /windows
  # POST /windows.xml
  def create
    @window = Window.new(params[:window])

    respond_to do |format|
      if @window.save
        format.html { redirect_to(@window, :notice => 'Window was successfully created.') }
        format.xml  { render :xml => @window, :status => :created, :location => @window }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @window.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /windows/1
  # PUT /windows/1.xml
  def update
    @window = Window.find(params[:id])

    respond_to do |format|
      if @window.update_attributes(params[:window])
        format.html { redirect_to(@window, :notice => 'Window was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @window.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /windows/1
  # DELETE /windows/1.xml
  def destroy
    @window = Window.find(params[:id])
    @window.destroy

    respond_to do |format|
      format.html { redirect_to(windows_url) }
      format.xml  { head :ok }
    end
  end
end
