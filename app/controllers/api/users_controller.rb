class Api::UsersController < ApplicationController
  def index
    @users = User.includes(:image)
  end

  def show
    @user = User.includes(posts: [:post_likers, :comments, :image]).where(id: params[:id])[0]
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      render json: @user
    else
      render json: @user.errors.full_messages
    end
  end

  def current_show
    @user = User.includes(posts: [:post_likers, :comments, :image]).where(id: current_user.id)[0]
    render :show
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :bio, :image_id)
  end

end
