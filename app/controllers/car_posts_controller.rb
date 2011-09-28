class CarPostsController < ApplicationController
  # GET /car_posts
  # GET /car_posts.xml
  def index
    @car_posts = CarPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @car_posts }
@car_posts = CarPost.search(params[:search])

    end
  end

  # GET /car_posts/1
  # GET /car_posts/1.xml
  def show
    @car_post = CarPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car_post }
    end
  end

  # GET /car_posts/new
  # GET /car_posts/new.xml
  def new
    @car_post = CarPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @car_post }
    end
  end

  # GET /car_posts/1/edit
  def edit
    @car_post = CarPost.find(params[:id])
  end

  # POST /car_posts
  # POST /car_posts.xml
  def create
    @car_post = CarPost.new(params[:car_post])

    respond_to do |format|
      if @car_post.save
        format.html { redirect_to(@car_post, :notice => 'Car post was successfully created.') }
        format.xml  { render :xml => @car_post, :status => :created, :location => @car_post }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /car_posts/1
  # PUT /car_posts/1.xml
  def update
    @car_post = CarPost.find(params[:id])

    respond_to do |format|
      if @car_post.update_attributes(params[:car_post])
        format.html { redirect_to(@car_post, :notice => 'Car post was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /car_posts/1
  # DELETE /car_posts/1.xml
  def destroy
    @car_post = CarPost.find(params[:id])
    @car_post.destroy

    respond_to do |format|
      format.html { redirect_to(car_posts_url) }
      format.xml  { head :ok }
    end
  end
end
