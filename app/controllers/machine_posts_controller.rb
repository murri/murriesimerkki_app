class MachinePostsController < ApplicationController
  # GET /machine_posts
  # GET /machine_posts.xml
  def index
    @machine_posts = MachinePost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @machine_posts }
@machine_posts = MachinePost.search(params[:search])

    end
  end

  # GET /machine_posts/1
  # GET /machine_posts/1.xml
  def show
    @machine_post = MachinePost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @machine_post }
    end
  end

  # GET /machine_posts/new
  # GET /machine_posts/new.xml
  def new
    @machine_post = MachinePost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @machine_post }
    end
  end

  # GET /machine_posts/1/edit
  def edit
    @machine_post = MachinePost.find(params[:id])
  end

  # POST /machine_posts
  # POST /machine_posts.xml
  def create
    @machine_post = MachinePost.new(params[:machine_post])

    respond_to do |format|
      if @machine_post.save
        format.html { redirect_to(@machine_post, :notice => 'Machine post was successfully created.') }
        format.xml  { render :xml => @machine_post, :status => :created, :location => @machine_post }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @machine_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /machine_posts/1
  # PUT /machine_posts/1.xml
  def update
    @machine_post = MachinePost.find(params[:id])

    respond_to do |format|
      if @machine_post.update_attributes(params[:machine_post])
        format.html { redirect_to(@machine_post, :notice => 'Machine post was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @machine_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_posts/1
  # DELETE /machine_posts/1.xml
  def destroy
    @machine_post = MachinePost.find(params[:id])
    @machine_post.destroy

    respond_to do |format|
      format.html { redirect_to(machine_posts_url) }
      format.xml  { head :ok }
    end
  end
end
