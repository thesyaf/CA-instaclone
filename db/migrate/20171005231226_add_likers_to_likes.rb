class AddLikersToLikes < ActiveRecord::Migration[5.1]
  def change
    add_column :likes, :likers_count, :integer
  end
end
