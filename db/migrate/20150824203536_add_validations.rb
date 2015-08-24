class AddValidations < ActiveRecord::Migration
  def change
    change_column :posts, :image_id, :integer, null: false
    change_column :posts, :location, :string, null: false
    change_column :posts, :lat, :float, null: false
    change_column :posts, :lng, :float, null: false
  end
end
