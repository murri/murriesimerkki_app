class MachineColorsController < ApplicationController
  # GET /machine_colors
  # GET /machine_colors.xml
  def index
    @machine_colors = MachineColor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_colors }
    end
  end

  # GET /machine_colors/1
  # GET /machine_colors/1.xml
  def show
    @machine_color = MachineColor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_color }
    end
  end

  # GET /machine_colors/new
  # GET /machine_colors/new.xml
  def new
    @machine_color = MachineColor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_color }
    end
  end

  # GET /machine_colors/1/edit
  def edit
    @machine_color = MachineColor.find(params[:id])
  end

  # POST /machine_colors
  # POST /machine_colors.xml
  def create
    @machine_color = MachineColor.new(params[:machine_color])

    respond_to do |format|
      if @machine_color.save
        format.html { redirect_to(@machine_color, :notice => 'Machine color was successfully created.') }
        format.xml  { render :xml => @machine_color, :status => :created, :location => @machine_color }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_color.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_colors/1
  # PUT /machine_colors/1.xml
  def update
    @machine_color = MachineColor.find(params[:id])

    respond_to do |format|
      if @machine_color.update_attributes(params[:machine_color])
        format.html { redirect_to(@machine_color, :notice => 'Machine color was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_color.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_colors/1
  # DELETE /machine_colors/1.xml
  def destroy
    @machine_color = MachineColor.find(params[:id])
    @machine_color.destroy

    respond_to do |format|
      format.html { redirect_to(machine_colors_url) }
      format.xml  { head :ok }
    end
  end
end
