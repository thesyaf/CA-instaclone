class AddLikeesToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :likees_count, :integer, :default => 0
  end
end
