class RemoveOldPicColumns < ActiveRecord::Migration
  def change
    remove_column :users, :profile_picture_url
    remove_column :posts, :image_url
  end
end
