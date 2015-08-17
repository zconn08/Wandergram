class Api::NotificationsController < ApplicationController
  def index
    @notifications = Notification.all.where(user_id: current_user.id)
  end

  def create
    @notification = Notification.new(notification_params)
    if @notification.save
      render json: @notification
    else
      render json: @notification.errors.full_messages
    end
  end

  private
  def notification_params
    params.require(:notification).permit(:post_id, :body, :user_id)
  end

end
