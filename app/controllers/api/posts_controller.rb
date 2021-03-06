class Api::PostsController < ApplicationController
  def index
    @posts = Post.includes(:post_likers, :comments, :image, user: :image, comments: :user )
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @post.lat = Geocoder.coordinates(params[:location])[0]
    @post.lng = Geocoder.coordinates(params[:location])[1]
    if @post.save
      render :show
    else
      render json: @post.errors.full_messages, status: 422
    end
  end

  def show
    @post = Post.includes(comment: :user, user: :image).where(id: params[:id])[0]
  end

  private
  def post_params
    params.require(:post).permit(:caption, :location, :image_id)
  end
end
