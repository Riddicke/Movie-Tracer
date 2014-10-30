class AddFieldsToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :released_on, :datetime
  end
end
