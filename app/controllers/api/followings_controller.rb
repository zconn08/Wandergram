class Api::FollowingsController < ApplicationController
  def index
    @followings = Following.all
    render json: @followings
  end

  def create
    @following = Following.new(following_params)
    @following.follower_id = current_user.id
    if @following.save
      render json: @following
    else
      render json: @following.errors.full_messages
    end
  end

  def show
    @following = Following.find(params[:id])
    render json: @following
  end

  def destroy
    @following = Following.find(params[:id])
    @following.destroy
    render json: @following
  end

  private
  def following_params
    params.require(:following).permit(:followee_id)
  end

end
