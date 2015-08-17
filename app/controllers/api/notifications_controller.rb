class Api::NotificationsController < ApplicationController
  def index
    @notifications = Notification.all.where(user_id: current_user.id)
  end

  def create
    @notification = Notification.new(notification_params)
    @notification.creator_id = current_user.id
    if @notification.save
      render json: @notification
    else
      render json: @notification.errors.full_messages
    end
  end

  def update
    @notification = Notification.find(params[:id])
    if @notification.update_attributes(notification_params)
      render json: @notification
    else
      render json: @notification.errors.full_messages
    end
  end

  private
  def notification_params
    params.require(:notification).permit(:post_id, :body, :user_id, :read)
  end

end
