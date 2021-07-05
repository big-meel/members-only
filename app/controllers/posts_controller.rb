class PostsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create ]

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
    if current_user

      @post = current_user.posts.build(user_params)

      if @post.save
        flash[:success] = "Post successfully saved"
        redirect_to @post
      else
        flash.now = "Try again"
        render :new
      end
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
