class AddRecipientInNotificationsTable < ActiveRecord::Migration
  def change
    add_column :notifications, :recipient_id, :integer
    change_column :notifications, :post_id, :integer, null: true
  end
end
