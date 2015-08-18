class Api::UsersController < ApplicationController
  def index
    @users = User.includes(:image)
  end

  def show
    @user = User.find(params[:id])
  end

  def current_show
    @user = current_user
    render :show
  end
end
