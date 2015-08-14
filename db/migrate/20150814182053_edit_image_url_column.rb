class EditImageUrlColumn < ActiveRecord::Migration
  def change
    change_column :posts, :image_url, :string, null: true
  end
end
