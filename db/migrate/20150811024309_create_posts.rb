class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id, null: false
      t.string :image_url, null: false
      t.string :caption
      t.string :location
      t.timestamps null: false
    end
  end
end
