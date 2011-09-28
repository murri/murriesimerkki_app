class MotoPostsController < ApplicationController
  # GET /moto_posts
  # GET /moto_posts.xml
  def index
    @moto_posts = MotoPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moto_posts }
    end
  end

  # GET /moto_posts/1
  # GET /moto_posts/1.xml
  def show
    @moto_post = MotoPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moto_post }
    end
  end

  # GET /moto_posts/new
  # GET /moto_posts/new.xml
  def new
    @moto_post = MotoPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moto_post }
    end
  end

  # GET /moto_posts/1/edit
  def edit
    @moto_post = MotoPost.find(params[:id])
  end

  # POST /moto_posts
  # POST /moto_posts.xml
  def create
    @moto_post = MotoPost.new(params[:moto_post])

    respond_to do |format|
      if @moto_post.save
        format.html { redirect_to(@moto_post, :notice => 'Moto post was successfully created.') }
        format.xml  { render :xml => @moto_post, :status => :created, :location => @moto_post }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moto_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moto_posts/1
  # PUT /moto_posts/1.xml
  def update
    @moto_post = MotoPost.find(params[:id])

    respond_to do |format|
      if @moto_post.update_attributes(params[:moto_post])
        format.html { redirect_to(@moto_post, :notice => 'Moto post was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moto_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moto_posts/1
  # DELETE /moto_posts/1.xml
  def destroy
    @moto_post = MotoPost.find(params[:id])
    @moto_post.destroy

    respond_to do |format|
      format.html { redirect_to(moto_posts_url) }
      format.xml  { head :ok }
    end
  end
end
