class Api::NotificationsController < ApplicationController
  def index
    @notifications = Notification.all.where(user_id: current_user.id)
  end

end
