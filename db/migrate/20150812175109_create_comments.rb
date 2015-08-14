class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :post_id, null: false, index: true
      t.string :body, null: false
      t.timestamps null: false
    end
  end
end
