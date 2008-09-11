class PostsController < ApplicationController
  before_filter :set_posts, :only => [:index]
  before_filter :set_post,  :only => [:show, :edit, :update, :destroy]
  before_filter :init_post, :only => [:new, :create]
  
  def index
  end

  def show
  end

  def new
  end

  def edit
  end
  
  def create
    if @post.save
      flash[:notice] = 'Post was successfully created.'
      redirect_to(@post)
    else
      render :action => "new"
    end
  end

  def update
    if @post.update_attributes(params[:post])
      flash[:notice] = 'Post was successfully updated.'
      redirect_to(@post)
    else
      render :action => "edit"
    end
  end

  def destroy
    p posts_url
    exit
    @post.destroy
    redirect_to(posts_url)
  end
  
  protected
  
    def set_posts
      @posts = Post.find(:all)
    end
  
    def set_post
      @post = Post.find(params[:id])
    end

    def init_post
      @post = Post.new(params[:post])
    end    
end
