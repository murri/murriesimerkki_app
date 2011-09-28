class MotoColorsController < ApplicationController
  # GET /moto_colors
  # GET /moto_colors.xml
  def index
    @moto_colors = MotoColor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_colors }
    end
  end

  # GET /moto_colors/1
  # GET /moto_colors/1.xml
  def show
    @moto_color = MotoColor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_color }
    end
  end

  # GET /moto_colors/new
  # GET /moto_colors/new.xml
  def new
    @moto_color = MotoColor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_color }
    end
  end

  # GET /moto_colors/1/edit
  def edit
    @moto_color = MotoColor.find(params[:id])
  end

  # POST /moto_colors
  # POST /moto_colors.xml
  def create
    @moto_color = MotoColor.new(params[:moto_color])

    respond_to do |format|
      if @moto_color.save
        format.html { redirect_to(@moto_color, :notice => 'Moto color was successfully created.') }
        format.xml  { render :xml => @moto_color, :status => :created, :location => @moto_color }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_color.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_colors/1
  # PUT /moto_colors/1.xml
  def update
    @moto_color = MotoColor.find(params[:id])

    respond_to do |format|
      if @moto_color.update_attributes(params[:moto_color])
        format.html { redirect_to(@moto_color, :notice => 'Moto color was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_color.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_colors/1
  # DELETE /moto_colors/1.xml
  def destroy
    @moto_color = MotoColor.find(params[:id])
    @moto_color.destroy

    respond_to do |format|
      format.html { redirect_to(moto_colors_url) }
      format.xml  { head :ok }
    end
  end
end
