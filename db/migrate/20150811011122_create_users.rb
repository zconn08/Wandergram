class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false, unique: true
      t.string :session_token, null: false, unique: true, index: true
      t.string :password_digest, null: false
      t.string :profile_picture_url
      t.timestamps null: false
    end
  end
end
