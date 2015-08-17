class CreatorSpelling < ActiveRecord::Migration
  def change
    rename_column :notifications, :creater_id, :creator_id
  end
end
