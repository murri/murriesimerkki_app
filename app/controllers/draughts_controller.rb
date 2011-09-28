class DraughtsController < ApplicationController
  # GET /draughts
  # GET /draughts.xml
  def index
    @draughts = Draught.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @draughts }
    end
  end

  # GET /draughts/1
  # GET /draughts/1.xml
  def show
    @draught = Draught.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @draught }
    end
  end

  # GET /draughts/new
  # GET /draughts/new.xml
  def new
    @draught = Draught.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @draught }
    end
  end

  # GET /draughts/1/edit
  def edit
    @draught = Draught.find(params[:id])
  end

  # POST /draughts
  # POST /draughts.xml
  def create
    @draught = Draught.new(params[:draught])

    respond_to do |format|
      if @draught.save
        format.html { redirect_to(@draught, :notice => 'Draught was successfully created.') }
        format.xml  { render :xml => @draught, :status => :created, :location => @draught }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @draught.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /draughts/1
  # PUT /draughts/1.xml
  def update
    @draught = Draught.find(params[:id])

    respond_to do |format|
      if @draught.update_attributes(params[:draught])
        format.html { redirect_to(@draught, :notice => 'Draught was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @draught.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /draughts/1
  # DELETE /draughts/1.xml
  def destroy
    @draught = Draught.find(params[:id])
    @draught.destroy

    respond_to do |format|
      format.html { redirect_to(draughts_url) }
      format.xml  { head :ok }
    end
  end
end
