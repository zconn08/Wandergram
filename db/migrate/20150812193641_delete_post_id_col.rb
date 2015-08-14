class DeletePostIdCol < ActiveRecord::Migration
  def change
    remove_column :comments, :post_id
    add_column :comments, :post_id, :integer
  end
end
