class AddImageAndCapacityToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :image_file_name, :name
    add_column :movies, :capacity, :integer, default: 1
  end
end
