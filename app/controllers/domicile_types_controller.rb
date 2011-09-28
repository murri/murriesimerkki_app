class DomicileTypesController < ApplicationController
  # GET /domicile_types
  # GET /domicile_types.xml
  def index
    @domicile_types = DomicileType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @domicile_types }
    end
  end

  # GET /domicile_types/1
  # GET /domicile_types/1.xml
  def show
    @domicile_type = DomicileType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @domicile_type }
    end
  end

  # GET /domicile_types/new
  # GET /domicile_types/new.xml
  def new
    @domicile_type = DomicileType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @domicile_type }
    end
  end

  # GET /domicile_types/1/edit
  def edit
    @domicile_type = DomicileType.find(params[:id])
  end

  # POST /domicile_types
  # POST /domicile_types.xml
  def create
    @domicile_type = DomicileType.new(params[:domicile_type])

    respond_to do |format|
      if @domicile_type.save
        format.html { redirect_to(@domicile_type, :notice => 'Domicile type was successfully created.') }
        format.xml  { render :xml => @domicile_type, :status => :created, :location => @domicile_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @domicile_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /domicile_types/1
  # PUT /domicile_types/1.xml
  def update
    @domicile_type = DomicileType.find(params[:id])

    respond_to do |format|
      if @domicile_type.update_attributes(params[:domicile_type])
        format.html { redirect_to(@domicile_type, :notice => 'Domicile type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @domicile_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /domicile_types/1
  # DELETE /domicile_types/1.xml
  def destroy
    @domicile_type = DomicileType.find(params[:id])
    @domicile_type.destroy

    respond_to do |format|
      format.html { redirect_to(domicile_types_url) }
      format.xml  { head :ok }
    end
  end
end
