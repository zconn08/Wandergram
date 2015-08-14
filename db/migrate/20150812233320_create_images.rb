class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url, null: false, index: true
      t.string :thumbnail_url, null: false, index: true
      t.timestamps null: false
    end
  end
end
