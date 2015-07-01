class RenamePostsToCommentsModel < ActiveRecord::Migration
  def change
    remove_column :comments, :title, :string
  end
end
