class RenameNotificationColumns < ActiveRecord::Migration
  def change
    rename_column :notifications, :recipient_id, :creater_id
  end
end
