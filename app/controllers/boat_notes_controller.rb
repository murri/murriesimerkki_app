class BoatNotesController < ApplicationController
  # GET /boat_notes
  # GET /boat_notes.xml
  def index
    @boat_notes = BoatNote.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_notes }
    end
  end

  # GET /boat_notes/1
  # GET /boat_notes/1.xml
  def show
    @boat_note = BoatNote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_note }
    end
  end

  # GET /boat_notes/new
  # GET /boat_notes/new.xml
  def new
    @boat_note = BoatNote.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_note }
    end
  end

  # GET /boat_notes/1/edit
  def edit
    @boat_note = BoatNote.find(params[:id])
  end

  # POST /boat_notes
  # POST /boat_notes.xml
  def create
    @boat_note = BoatNote.new(params[:boat_note])

    respond_to do |format|
      if @boat_note.save
        format.html { redirect_to(@boat_note, :notice => 'Boat note was successfully created.') }
        format.xml  { render :xml => @boat_note, :status => :created, :location => @boat_note }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_note.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_notes/1
  # PUT /boat_notes/1.xml
  def update
    @boat_note = BoatNote.find(params[:id])

    respond_to do |format|
      if @boat_note.update_attributes(params[:boat_note])
        format.html { redirect_to(@boat_note, :notice => 'Boat note was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_note.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_notes/1
  # DELETE /boat_notes/1.xml
  def destroy
    @boat_note = BoatNote.find(params[:id])
    @boat_note.destroy

    respond_to do |format|
      format.html { redirect_to(boat_notes_url) }
      format.xml  { head :ok }
    end
  end
end
