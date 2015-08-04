class RenamePostsToCommentsModel < ActiveRecord::Migration
  def change
    rename_table :posts, :comments
  end
end
