class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  def index
    @posts = Post.all.order("created_at DESC")
    @last10 = Post.last(10)
  end
  
  def show
  end
  
  def new
    
    @post = current_user.posts.build
  end
  
  def create
    
    @post = current_user.posts.build(post_params)
    
    if @post.save
      redirect_to @post, notice: 'Your post was successfully created.'
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
    authorize! :update, @post
    if @post.update(post_params)
      redirect_to @post, notice: 'The post was successfully updated.'
    else
      render 'edit'
    end
  end
  
  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'The post was successfully destroyed.'
  end
  
  private
  
  def find_post
    @post = Post.find(params[:id])
  end
  
  
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
