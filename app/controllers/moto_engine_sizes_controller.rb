class MotoEngineSizesController < ApplicationController
  # GET /moto_engine_sizes
  # GET /moto_engine_sizes.xml
  def index
    @moto_engine_sizes = MotoEngineSize.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_engine_sizes }
    end
  end

  # GET /moto_engine_sizes/1
  # GET /moto_engine_sizes/1.xml
  def show
    @moto_engine_size = MotoEngineSize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_engine_size }
    end
  end

  # GET /moto_engine_sizes/new
  # GET /moto_engine_sizes/new.xml
  def new
    @moto_engine_size = MotoEngineSize.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_engine_size }
    end
  end

  # GET /moto_engine_sizes/1/edit
  def edit
    @moto_engine_size = MotoEngineSize.find(params[:id])
  end

  # POST /moto_engine_sizes
  # POST /moto_engine_sizes.xml
  def create
    @moto_engine_size = MotoEngineSize.new(params[:moto_engine_size])

    respond_to do |format|
      if @moto_engine_size.save
        format.html { redirect_to(@moto_engine_size, :notice => 'Moto engine size was successfully created.') }
        format.xml  { render :xml => @moto_engine_size, :status => :created, :location => @moto_engine_size }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_engine_size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_engine_sizes/1
  # PUT /moto_engine_sizes/1.xml
  def update
    @moto_engine_size = MotoEngineSize.find(params[:id])

    respond_to do |format|
      if @moto_engine_size.update_attributes(params[:moto_engine_size])
        format.html { redirect_to(@moto_engine_size, :notice => 'Moto engine size was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_engine_size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_engine_sizes/1
  # DELETE /moto_engine_sizes/1.xml
  def destroy
    @moto_engine_size = MotoEngineSize.find(params[:id])
    @moto_engine_size.destroy

    respond_to do |format|
      format.html { redirect_to(moto_engine_sizes_url) }
      format.xml  { head :ok }
    end
  end
end
