class SessionsController < ApplicationController
  before_action :require_logged_out, only: [:new, :create]
  before_action :require_login, only: [:destroy]

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )
    if @user
      log_in_user!(@user)
      redirect_to root_url
    else
      flash.now[:errors] = ["Incorrect username and/or password"]
      render :new
    end

  end

  def destroy
    log_out_user!
    render json: {}
  end
end
