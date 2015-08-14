class UpdatePostIdColInCommentTable < ActiveRecord::Migration
  def change
    change_column :comments, :post_id, 'integer USING CAST(post_id AS integer)'
  end
end
