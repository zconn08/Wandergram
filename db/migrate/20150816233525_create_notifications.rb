class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :user_id, null: false, index: true
      t.integer :post_id, null: false, index: true
      t.string :body, null: false
      t.boolean :read, default: false
      t.timestamps null: false
    end
  end
end
