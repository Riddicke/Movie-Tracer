class CreateMovies < ActiveRecord::Migration
  def change
  	# this was generated in the terminal by doing a rails g model
  	# (Movie) and adding the fields [variety, title, etc...] (migration)
    create_table :movies do |t|
      t.string :variety
      t.string :title
      t.string :rating
      t.float :total_gross

      t.timestamps
    end
  end
end
