class CaravanPostsController < ApplicationController
  # GET /caravan_posts
  # GET /caravan_posts.xml
  def index
    @caravan_posts = CaravanPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @caravan_posts }
    end
  end

  # GET /caravan_posts/1
  # GET /caravan_posts/1.xml
  def show
    @caravan_post = CaravanPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @caravan_post }
    end
  end

  # GET /caravan_posts/new
  # GET /caravan_posts/new.xml
  def new
    @caravan_post = CaravanPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @caravan_post }
    end
  end

  # GET /caravan_posts/1/edit
  def edit
    @caravan_post = CaravanPost.find(params[:id])
  end

  # POST /caravan_posts
  # POST /caravan_posts.xml
  def create
    @caravan_post = CaravanPost.new(params[:caravan_post])

    respond_to do |format|
      if @caravan_post.save
        format.html { redirect_to(@caravan_post, :notice => 'Caravan post was successfully created.') }
        format.xml  { render :xml => @caravan_post, :status => :created, :location => @caravan_post }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @caravan_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /caravan_posts/1
  # PUT /caravan_posts/1.xml
  def update
    @caravan_post = CaravanPost.find(params[:id])

    respond_to do |format|
      if @caravan_post.update_attributes(params[:caravan_post])
        format.html { redirect_to(@caravan_post, :notice => 'Caravan post was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @caravan_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /caravan_posts/1
  # DELETE /caravan_posts/1.xml
  def destroy
    @caravan_post = CaravanPost.find(params[:id])
    @caravan_post.destroy

    respond_to do |format|
      format.html { redirect_to(caravan_posts_url) }
      format.xml  { head :ok }
    end
  end
end
