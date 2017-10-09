class AddLikersToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :likers_count, :integer, :default => 0
  end
end
