class BoatPostsController < ApplicationController
  # GET /boat_posts
  # GET /boat_posts.xml
  def index
    @boat_posts = BoatPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_posts }
@boat_posts = BoatPost.search(params[:search])
    end
  end

  # GET /boat_posts/1
  # GET /boat_posts/1.xml
  def show
    @boat_post = BoatPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_post }
    end
  end

  # GET /boat_posts/new
  # GET /boat_posts/new.xml
  def new
    @boat_post = BoatPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_post }
    end
  end

  # GET /boat_posts/1/edit
  def edit
    @boat_post = BoatPost.find(params[:id])
  end

  # POST /boat_posts
  # POST /boat_posts.xml
  def create
    @boat_post = BoatPost.new(params[:boat_post])

    respond_to do |format|
      if @boat_post.save
        format.html { redirect_to(@boat_post, :notice => 'Boat post was successfully created.') }
        format.xml  { render :xml => @boat_post, :status => :created, :location => @boat_post }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_posts/1
  # PUT /boat_posts/1.xml
  def update
    @boat_post = BoatPost.find(params[:id])

    respond_to do |format|
      if @boat_post.update_attributes(params[:boat_post])
        format.html { redirect_to(@boat_post, :notice => 'Boat post was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_posts/1
  # DELETE /boat_posts/1.xml
  def destroy
    @boat_post = BoatPost.find(params[:id])
    @boat_post.destroy

    respond_to do |format|
      format.html { redirect_to(boat_posts_url) }
      format.xml  { head :ok }
    end
  end
end
