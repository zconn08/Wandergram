class SetDefaultProfPic < ActiveRecord::Migration
  def change
    change_column :users, :image_id, :integer, default: 1
  end
end
