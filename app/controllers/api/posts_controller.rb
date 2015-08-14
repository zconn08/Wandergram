class Api::PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      render json: @post
    else
      render json: @post.errors.full_messages, status: 422
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def update

  end

  def destroy

  end

  private
  def post_params
    params.require(:post).permit(:caption, :location, :image_url)
  end
end
