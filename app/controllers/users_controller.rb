class UsersController < ApplicationController
  before_action :require_logged_out, only: [:new, :create]
  before_action :require_login, only: [:edit]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in_user!(@user)
      redirect_to root_url
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end

  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to ("/#users/#{current_user.id}")
    else
      flash.now[:errors] = @user.errors.full_messages
      render :edit
    end
  end


  private

  def user_params
      params.require(:user).permit(:username, :password, :bio, :image_id)
  end

end
