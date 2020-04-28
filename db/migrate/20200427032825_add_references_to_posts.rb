class AddReferencesToPosts < ActiveRecord::Migration[5.2]
  def change
    # add_reference :posts, :user, null: false, foreign_key: true 
    add_reference :posts, :country, null: false, foreign_key: true 
    add_reference :posts, :category, null: false, foreign_key: true 
  end
end
