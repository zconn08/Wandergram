class Api::LikesController < ApplicationController
  def index
    @likes = Like.all
    render json: @likes
  end

  def create
    @like = Like.new(like_params)
    @like.user = current_user
    if @like.save
      render json: @like
    else
      render json: @like.errors.full_messages
    end
  end

  def show
    @like = Like.find(params[:id])
    render json: @like
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    render json: @like
  end

  private
  def like_params
    params.require(:like).permit(:post_id)
  end

end
