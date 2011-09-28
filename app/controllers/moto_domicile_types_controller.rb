class MotoDomicileTypesController < ApplicationController
  # GET /moto_domicile_types
  # GET /moto_domicile_types.xml
  def index
    @moto_domicile_types = MotoDomicileType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_domicile_types }
    end
  end

  # GET /moto_domicile_types/1
  # GET /moto_domicile_types/1.xml
  def show
    @moto_domicile_type = MotoDomicileType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_domicile_type }
    end
  end

  # GET /moto_domicile_types/new
  # GET /moto_domicile_types/new.xml
  def new
    @moto_domicile_type = MotoDomicileType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_domicile_type }
    end
  end

  # GET /moto_domicile_types/1/edit
  def edit
    @moto_domicile_type = MotoDomicileType.find(params[:id])
  end

  # POST /moto_domicile_types
  # POST /moto_domicile_types.xml
  def create
    @moto_domicile_type = MotoDomicileType.new(params[:moto_domicile_type])

    respond_to do |format|
      if @moto_domicile_type.save
        format.html { redirect_to(@moto_domicile_type, :notice => 'Moto domicile type was successfully created.') }
        format.xml  { render :xml => @moto_domicile_type, :status => :created, :location => @moto_domicile_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_domicile_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_domicile_types/1
  # PUT /moto_domicile_types/1.xml
  def update
    @moto_domicile_type = MotoDomicileType.find(params[:id])

    respond_to do |format|
      if @moto_domicile_type.update_attributes(params[:moto_domicile_type])
        format.html { redirect_to(@moto_domicile_type, :notice => 'Moto domicile type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_domicile_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_domicile_types/1
  # DELETE /moto_domicile_types/1.xml
  def destroy
    @moto_domicile_type = MotoDomicileType.find(params[:id])
    @moto_domicile_type.destroy

    respond_to do |format|
      format.html { redirect_to(moto_domicile_types_url) }
      format.xml  { head :ok }
    end
  end
end
