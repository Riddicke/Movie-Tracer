class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :variety
      t.string :rating
      t.float :total_gross

      t.timestamps
    end
  end
end
