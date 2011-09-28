class SubTypesController < ApplicationController
  # GET /sub_types
  # GET /sub_types.xml
  def index
    @sub_types = SubType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sub_types }
    end
  end

  # GET /sub_types/1
  # GET /sub_types/1.xml
  def show
    @sub_type = SubType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sub_type }
    end
  end

  # GET /sub_types/new
  # GET /sub_types/new.xml
  def new
    @sub_type = SubType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sub_type }
    end
  end

  # GET /sub_types/1/edit
  def edit
    @sub_type = SubType.find(params[:id])
  end

  # POST /sub_types
  # POST /sub_types.xml
  def create
    @sub_type = SubType.new(params[:sub_type])

    respond_to do |format|
      if @sub_type.save
        format.html { redirect_to(@sub_type, :notice => 'Sub type was successfully created.') }
        format.xml  { render :xml => @sub_type, :status => :created, :location => @sub_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sub_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sub_types/1
  # PUT /sub_types/1.xml
  def update
    @sub_type = SubType.find(params[:id])

    respond_to do |format|
      if @sub_type.update_attributes(params[:sub_type])
        format.html { redirect_to(@sub_type, :notice => 'Sub type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sub_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_types/1
  # DELETE /sub_types/1.xml
  def destroy
    @sub_type = SubType.find(params[:id])
    @sub_type.destroy

    respond_to do |format|
      format.html { redirect_to(sub_types_url) }
      format.xml  { head :ok }
    end
  end
 def for_typeid
    @subtypes = SubType.find_all_by_type_id(params[:id]).sort_by{ |k| k['name'] }
    respond_to do |format|
      format.json  { render :json => @subtypes }      
    end
  end
  
end
