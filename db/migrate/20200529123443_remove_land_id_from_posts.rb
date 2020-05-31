class RemoveLandIdFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :land_id
    remove_column :posts, :land_name
  end
end
