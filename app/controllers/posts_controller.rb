class PostsController < ApplicationController
  
  skip_before_action :authorized, only: [:index]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to '/'
  end

  def like 
    post = Post.find(params[:id])
    post.likes += 1
    post.save!

    redirect_to '/'
  end

  private 

  def post_params 
    params.require(:post).permit(:caption, :image)
  end
end
