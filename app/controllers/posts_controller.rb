class PostsController < ApplicationController
  # before_action 

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      flash[:success] = "Post successfully saved"
      redirect_to @post
    else
      flash.now = "Try again"
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:description, :user_id)
  end
end
