class AddImageIdColumns < ActiveRecord::Migration
  def change
    add_column :users, :image_id, :integer, index: true
    add_column :posts, :image_id, :integer, index: true
  end
end
